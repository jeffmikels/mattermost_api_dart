//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class UpdateUserCustomStatusRequest {
  /// Returns a new [UpdateUserCustomStatusRequest] instance.
  UpdateUserCustomStatusRequest({
    required this.emoji,
    required this.text,
    this.duration,
    this.expiresAt,
  });

  /// Any emoji
  String emoji;

  /// Any custom status text
  String text;

  /// Duration of custom status, can be `thirty_minutes`, `one_hour`, `four_hours`, `today`, `this_week` or `date_and_time`
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? duration;

  /// The time at which custom status should be expired. It should be in ISO format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expiresAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateUserCustomStatusRequest &&
     other.emoji == emoji &&
     other.text == text &&
     other.duration == duration &&
     other.expiresAt == expiresAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (emoji.hashCode) +
    (text.hashCode) +
    (duration == null ? 0 : duration!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode);

  @override
  String toString() => 'UpdateUserCustomStatusRequest[emoji=$emoji, text=$text, duration=$duration, expiresAt=$expiresAt]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'emoji'] = emoji;
      _json[r'text'] = text;
    if (duration != null) {
      _json[r'duration'] = duration;
    }
    if (expiresAt != null) {
      _json[r'expires_at'] = expiresAt;
    }
    return _json;
  }

  /// Returns a new [UpdateUserCustomStatusRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateUserCustomStatusRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateUserCustomStatusRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateUserCustomStatusRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateUserCustomStatusRequest(
        emoji: mapValueOfType<String>(json, r'emoji')!,
        text: mapValueOfType<String>(json, r'text')!,
        duration: mapValueOfType<String>(json, r'duration'),
        expiresAt: mapValueOfType<String>(json, r'expires_at'),
      );
    }
    return null;
  }

  static List<UpdateUserCustomStatusRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateUserCustomStatusRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateUserCustomStatusRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateUserCustomStatusRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateUserCustomStatusRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateUserCustomStatusRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateUserCustomStatusRequest-objects as value to a dart map
  static Map<String, List<UpdateUserCustomStatusRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateUserCustomStatusRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateUserCustomStatusRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'emoji',
    'text',
  };
}

