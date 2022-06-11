//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostCreatePostEphemeralRequestPost {
  /// Returns a new [MattermostCreatePostEphemeralRequestPost] instance.
  MattermostCreatePostEphemeralRequestPost({
    required this.channelId,
    required this.message,
  });

  /// The channel ID to post in
  String channelId;

  /// The message contents, can be formatted with Markdown
  String message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MattermostCreatePostEphemeralRequestPost &&
     other.channelId == channelId &&
     other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (channelId.hashCode) +
    (message.hashCode);

  @override
  String toString() => 'MattermostCreatePostEphemeralRequestPost[channelId=$channelId, message=$message]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'channel_id'] = channelId;
      _json[r'message'] = message;
    return _json;
  }

  /// Returns a new [MattermostCreatePostEphemeralRequestPost] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostCreatePostEphemeralRequestPost? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostCreatePostEphemeralRequestPost[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostCreatePostEphemeralRequestPost[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostCreatePostEphemeralRequestPost(
        channelId: mapValueOfType<String>(json, r'channel_id')!,
        message: mapValueOfType<String>(json, r'message')!,
      );
    }
    return null;
  }

  static List<MattermostCreatePostEphemeralRequestPost>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MattermostCreatePostEphemeralRequestPost>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostCreatePostEphemeralRequestPost.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostCreatePostEphemeralRequestPost> mapFromJson(dynamic json) {
    final map = <String, MattermostCreatePostEphemeralRequestPost>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostCreatePostEphemeralRequestPost.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostCreatePostEphemeralRequestPost-objects as value to a dart map
  static Map<String, List<MattermostCreatePostEphemeralRequestPost>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MattermostCreatePostEphemeralRequestPost>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostCreatePostEphemeralRequestPost.listFromJson(entry.value, growable: growable,);
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

