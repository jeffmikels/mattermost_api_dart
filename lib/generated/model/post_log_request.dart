//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class PostLogRequest {
  /// Returns a new [PostLogRequest] instance.
  PostLogRequest({
    required this.level,
    required this.message,
  });

  /// The error level, ERROR or DEBUG
  String level;

  /// Message to send to the server logs
  String message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostLogRequest &&
     other.level == level &&
     other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (level.hashCode) +
    (message.hashCode);

  @override
  String toString() => 'PostLogRequest[level=$level, message=$message]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'level'] = level;
      _json[r'message'] = message;
    return _json;
  }

  /// Returns a new [PostLogRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostLogRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PostLogRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PostLogRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PostLogRequest(
        level: mapValueOfType<String>(json, r'level')!,
        message: mapValueOfType<String>(json, r'message')!,
      );
    }
    return null;
  }

  static List<PostLogRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostLogRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostLogRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PostLogRequest> mapFromJson(dynamic json) {
    final map = <String, PostLogRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PostLogRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PostLogRequest-objects as value to a dart map
  static Map<String, List<PostLogRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PostLogRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PostLogRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'level',
    'message',
  };
}

