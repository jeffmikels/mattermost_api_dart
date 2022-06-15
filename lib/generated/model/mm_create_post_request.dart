//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMCreatePostRequest {
  /// Returns a new [MMCreatePostRequest] instance.
  MMCreatePostRequest({
    required this.channelId,
    required this.message,
    this.rootId,
    this.fileIds = const [],
    this.props,
  });

  /// The channel ID to post in
  String channelId;

  /// The message contents, can be formatted with Markdown
  String message;

  /// The post ID to comment on
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rootId;

  /// A list of file IDs to associate with the post. Note that posts are limited to 5 files maximum. Please use additional posts for more files.
  List<String> fileIds;

  /// A general JSON property bag to attach to the post
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Map? props;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMCreatePostRequest &&
          other.channelId == channelId &&
          other.message == message &&
          other.rootId == rootId &&
          other.fileIds == fileIds &&
          other.props == props;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (channelId.hashCode) +
      (message.hashCode) +
      (rootId == null ? 0 : rootId!.hashCode) +
      (fileIds.hashCode) +
      (props == null ? 0 : props!.hashCode);

  @override
  String toString() =>
      'MMCreatePostRequest[channelId=$channelId, message=$message, rootId=$rootId, fileIds=$fileIds, props=$props]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'channel_id'] = channelId;
    _json[r'message'] = message;
    if (rootId != null) {
      _json[r'root_id'] = rootId;
    }
    _json[r'file_ids'] = fileIds;
    if (props != null) {
      _json[r'props'] = props;
    }
    return _json;
  }

  /// Returns a new [MMCreatePostRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMCreatePostRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMCreatePostRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMCreatePostRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMCreatePostRequest(
        channelId: mapValueOfType<String>(json, r'channel_id')!,
        message: mapValueOfType<String>(json, r'message')!,
        rootId: mapValueOfType<String>(json, r'root_id'),
        fileIds: json[r'file_ids'] is List ? (json[r'file_ids'] as List).cast<String>() : const [],
        props: mapValueOfType<Map>(json, r'props'),
      );
    }
    return null;
  }

  static List<MMCreatePostRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMCreatePostRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMCreatePostRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMCreatePostRequest> mapFromJson(dynamic json) {
    final map = <String, MMCreatePostRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMCreatePostRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMCreatePostRequest-objects as value to a dart map
  static Map<String, List<MMCreatePostRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMCreatePostRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMCreatePostRequest.listFromJson(
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
    'channel_id',
    'message',
  };
}