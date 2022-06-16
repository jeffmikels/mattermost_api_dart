/// This file exposes the websocket interface to Mattermost. Since it is not defined in the
/// openAPI spec, we have to implement it manually here.
///
/// See the Javascript implementation here:
///
/// <https://github.com/mattermost/mattermost-redux/blob/master/src/client/websocket_client.ts>

import 'dart:io';
import 'dart:convert';
import 'dart:async';

import 'generated/api.dart';

/// Implements a client for a Mattermost websocket connection
class MattermostWebsocketClient {
  // public / reassignable fields
  final String url;
  Function(MmWsEvent)? onEvent;

  // private fields
  int _nextSeq = 1;
  WebSocket? _ws;
  final Map<int, Completer<MmWsReply>> _actionCompleters = {};
  final Map<String, String>? _headers;

  // broadcast controllers don't buffer events
  StreamController<MmWsMessage> _messageStreamController = StreamController<MmWsMessage>.broadcast();

  /// Listen to the `messageStream` to get every message as it comes in.
  /// However, the preferred method is to use the `onEvent` callback and to await
  /// the action methods.
  Stream<MmWsMessage> get messageStream => _messageStreamController.stream;

  MattermostWebsocketClient(this.url, {Map<String, String>? headers, this.onEvent}) : _headers = headers {
    connect();
  }

  /// function to handle websocket connections
  Future<void> connect() async {
    if (_ws != null && _ws!.readyState != WebSocket.closed) {
      _ws?.close(0, 'requested reconnect');
    }

    late StreamSubscription _listener;
    _ws = await WebSocket.connect(url, headers: _headers);
    _ws!.pingInterval = Duration(seconds: 5);
    _listener = _ws!.cast<String>().map<MmWsMessage>((s) {
      var data = json.decode(s) as Map<String, dynamic>;
      if (data.containsKey('status')) return MmWsReply.fromJson(data);
      if (data.containsKey('action')) return MmWsAction(data['action'], data['data']);
      if (data.containsKey('event')) {
        // deserialize the specific event
        if (data['event'] == 'posted') {
          return MmWsEventPosted.fromJson(data);
        }
        return MmWsEvent.fromJson(data);
      }
      return MmWsReply.unknown();
    }).listen((mm) {
      _messageStreamController.add(mm);
      if (mm is MmWsEvent && onEvent != null) onEvent!(mm);
      if (mm is MmWsReply) {
        _actionCompleters[mm.seqReply]?.complete(mm);
        _actionCompleters.remove(mm.seqReply);
      }
    }, onDone: () {
      _listener.cancel();
      if (_ws!.closeReason != 'requested reconnect') {
        // this code should attempt to reconnect after an increasing delay
        // connect();
        print('Websocket Closed: ${_ws!.closeCode} ${_ws!.closeReason}');
      }
    });
  }

  Future<MmWsReply> send(MmWsAction action) async {
    if (_ws == null || _ws!.closeCode != null) await connect();

    var completer = Completer<MmWsReply>();
    var seq = _nextSeq++;
    var tosend = action.toJson();
    tosend['seq'] = seq;
    _actionCompleters[seq] = completer;
    _ws?.add(json.encode(tosend));
    return completer.future.timeout(Duration(seconds: 2), onTimeout: () {
      _actionCompleters.remove(seq);
      return MmWsReply.noReply();
    });
  }

  Future<MmWsReply> userTyping(String channelId, [String parentId = '']) {
    return send(MmWsAction.userTyping(channelId, parentId));
  }

  Future<MmWsReply> getStatuses() {
    return send(MmWsAction.getStatuses());
  }

  Future<MmWsReply> getStatusesByIds(List<String> userIds) {
    return send(MmWsAction.getStatusesByIds(userIds));
  }
}

/* SUPPORTING CLASSES AND ENUMS */

/// Mattermost websocket action response status
enum MmWsActionResponseStatus { ok, fail }

/// Parent class for Mattermost websocket messages
abstract class MmWsMessage extends Object {
  Map<String, dynamic> toJson();
}

/// Represents a Mattermost websocket action. This is what you send
/// to the websocket endpoint.
///
/// - possible actions are `user_typing`
class MmWsAction extends MmWsMessage {
  final String action;

  Map<String, dynamic>? data;

  MmWsAction(this.action, this.data);

  factory MmWsAction.fromJson(Map<String, dynamic> data) {
    return MmWsAction(data['action'] ?? '', data['data'] ?? {});
  }

  factory MmWsAction.userTyping(String channelId, String parentId) {
    return MmWsAction('user_typing', {'channel_id': channelId, 'parent_id': parentId});
  }

  factory MmWsAction.getStatuses() {
    return MmWsAction('get_statuses', null);
  }
  factory MmWsAction.getStatusesByIds(List<String> userIds) {
    return MmWsAction('get_statuses_by_ids', {'user_ids': userIds});
  }

  @override
  Map<String, dynamic> toJson() => {
        'action': action,
        if (data != null) 'data': {...data!}
      };
}

/// Mattermost websocket reply messages come as replies to
/// websocket action requests
class MmWsReply extends MmWsMessage {
  MmWsActionResponseStatus status;
  int? seqReply; // null if an error was caused by an invalid sequence number

  Map<String, dynamic>? data;
  Map<String, String>? error;

  bool get isError => error != null;

  MmWsReply(this.status, this.seqReply, {this.error, this.data});

  MmWsReply.unknown()
      : status = MmWsActionResponseStatus.fail,
        seqReply = 0,
        error = const {'id': 'unknown', 'message': 'unknown reply'};

  MmWsReply.noReply()
      : status = MmWsActionResponseStatus.fail,
        seqReply = 0,
        error = const {'id': 'unknown', 'message': 'this message is used when the websocket request times out'};

  factory MmWsReply.fromJson(Map<String, dynamic> map) {
    var status = MmWsActionResponseStatus.fail;
    if (map['status'] == 'OK') status = MmWsActionResponseStatus.ok;
    var seqReply = map['seq_reply']; // if the error is for an invalid seq, then this will be null
    if (map['error'] != null) {
      var error = {...map['error'] as Map}.cast<String, String>();
      return MmWsReply(status, seqReply, error: error);
    }
    if (map['data'] != null) {
      return MmWsReply(status, seqReply, data: map['data']);
    }
    return MmWsReply(status, seqReply);
  }

  @override
  Map<String, dynamic> toJson() => {
        'status': status == MmWsActionResponseStatus.ok ? 'OK' : 'FAIL',
        if (seqReply != null) 'seq_reply': seqReply,
        if (data != null) 'data': {...data!},
        if (error != null) 'error': {...error!},
      };
}

/// Mattermost Websocket event message
/// Documentation is here: https://api.mattermost.com/#tag/WebSocket
class MmWsEvent extends MmWsMessage {
  // some objects received from mattermost are "deeply" encoded meaning that
  // they are sent as json strings encoded inside the bigger response string
  static List<String> deeplyEncoded = ['mentions', 'post'];

  String name = '';
  Map<String, dynamic> data = {};
  Map<String, dynamic> broadcast = {};

  MmWsEvent();

  MmWsEvent.fromJson(Map<String, dynamic> map) {
    fromJson(map);
  }

  fromJson(Map<String, dynamic> map) {
    name = map['event'] ?? '';
    data = map['data'] ?? {};
    broadcast = map['broadcast'] ?? {};
    for (var deKey in deeplyEncoded) {
      if (data.containsKey(deKey)) {
        var decoded = json.decode(data[deKey]);
        data[deKey] = decoded;
      }
    }
  }

  /// will encode the data back into the exact same format as
  /// sent here from mattermost.
  Map<String, dynamic> deeplyEncode() {
    var ret = toJson();
    for (var deKey in deeplyEncoded) {
      if (ret['data']![deKey] != null) {
        ret['data']![deKey] = json.encode(data[deKey]);
      }
    }
    return ret;
  }

  @override
  Map<String, dynamic> toJson() {
    var ret = <String, dynamic>{
      'event': name,
      'data': {...data},
      'broadcast': {...broadcast},
    };
    return ret;
  }

  @override
  String toString() => JsonEncoder.withIndent(' ').convert(toJson());
}

class MmWsEventPosted extends MmWsEvent {
  // these are only some of the items we care about
  Map<String, dynamic> get postData => data['post']!;
  List<String> get mentions => data['mentions']?.cast<String>() ?? [];
  String get postId => postData['id']!;
  String get userId => postData['user_id']!;
  String get channelId => postData['channel_id']!;
  String get message => postData['message']!;
  String get sender => data['sender_name']!;
  String get senderId => postData['user_id'];

  bool get isDirect => data['channel_type'] == 'D';

  MmWsEventPosted();

  MmWsEventPosted.fromJson(Map<String, dynamic> map) {
    super.fromJson(map);
  }
}

class MmWsEventHello extends MmWsEvent {
  // these are only some of the items we care about
  Map<String, dynamic> get bcData => data['broadcast']!;
  String get connectionId => data['connection_id']!;
  String get serverVersion => data['server_version']!;

  String get userId => bcData['user_id']!;

  bool get isDirect => data['channel_type'] == 'D';

  MmWsEventHello();

  MmWsEventHello.fromJson(Map<String, dynamic> map) {
    super.fromJson(map);
  }
}
