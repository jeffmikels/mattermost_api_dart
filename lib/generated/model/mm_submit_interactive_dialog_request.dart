//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmSubmitInteractiveDialogRequest {
  /// Returns a new [MmSubmitInteractiveDialogRequest] instance.
  MmSubmitInteractiveDialogRequest({
    required this.url,
    required this.channelId,
    required this.teamId,
    required this.submission,
    this.callbackId,
    this.state,
    this.cancelled,
  });

  /// The URL to send the submitted dialog payload to
  String url;

  /// Channel ID the user submitted the dialog from
  String channelId;

  /// Team ID the user submitted the dialog from
  String teamId;

  /// String map where keys are element names and values are the element input values
  Map submission;

  /// Callback ID sent when the dialog was opened
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? callbackId;

  /// State sent when the dialog was opened
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  /// Set to true if the dialog was cancelled
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? cancelled;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmSubmitInteractiveDialogRequest &&
          other.url == url &&
          other.channelId == channelId &&
          other.teamId == teamId &&
          other.submission == submission &&
          other.callbackId == callbackId &&
          other.state == state &&
          other.cancelled == cancelled;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (url.hashCode) +
      (channelId.hashCode) +
      (teamId.hashCode) +
      (submission.hashCode) +
      (callbackId == null ? 0 : callbackId!.hashCode) +
      (state == null ? 0 : state!.hashCode) +
      (cancelled == null ? 0 : cancelled!.hashCode);

  @override
  String toString() =>
      'MmSubmitInteractiveDialogRequest[url=$url, channelId=$channelId, teamId=$teamId, submission=$submission, callbackId=$callbackId, state=$state, cancelled=$cancelled]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'url'] = url;
    _json[r'channel_id'] = channelId;
    _json[r'team_id'] = teamId;
    _json[r'submission'] = submission;
    if (callbackId != null) {
      _json[r'callback_id'] = callbackId;
    }
    if (state != null) {
      _json[r'state'] = state;
    }
    if (cancelled != null) {
      _json[r'cancelled'] = cancelled;
    }
    return _json;
  }

  /// Returns a new [MmSubmitInteractiveDialogRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmSubmitInteractiveDialogRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmSubmitInteractiveDialogRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmSubmitInteractiveDialogRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmSubmitInteractiveDialogRequest(
        url: mapValueOfType<String>(json, r'url')!,
        channelId: mapValueOfType<String>(json, r'channel_id')!,
        teamId: mapValueOfType<String>(json, r'team_id')!,
        submission: mapValueOfType<Map>(json, r'submission')!,
        callbackId: mapValueOfType<String>(json, r'callback_id'),
        state: mapValueOfType<String>(json, r'state'),
        cancelled: mapValueOfType<bool>(json, r'cancelled'),
      );
    }
    return null;
  }

  static List<MmSubmitInteractiveDialogRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmSubmitInteractiveDialogRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmSubmitInteractiveDialogRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmSubmitInteractiveDialogRequest> mapFromJson(dynamic json) {
    final map = <String, MmSubmitInteractiveDialogRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSubmitInteractiveDialogRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmSubmitInteractiveDialogRequest-objects as value to a dart map
  static Map<String, List<MmSubmitInteractiveDialogRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmSubmitInteractiveDialogRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSubmitInteractiveDialogRequest.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'url',
    'channel_id',
    'team_id',
    'submission',
  };
}
