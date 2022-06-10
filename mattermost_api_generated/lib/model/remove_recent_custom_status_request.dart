//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class RemoveRecentCustomStatusRequest {
  /// Returns a new [RemoveRecentCustomStatusRequest] instance.
  RemoveRecentCustomStatusRequest({
    required this.emoji,
    required this.text,
    required this.duration,
    required this.expiresAt,
  });

  /// Any emoji
  String emoji;

  /// Any custom status text
  String text;

  /// Duration of custom status, can be `thirty_minutes`, `one_hour`, `four_hours`, `today`, `this_week` or `date_and_time`
  String duration;

  /// The time at which custom status should be expired. It should be in ISO format.
  String expiresAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RemoveRecentCustomStatusRequest &&
     other.emoji == emoji &&
     other.text == text &&
     other.duration == duration &&
     other.expiresAt == expiresAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (emoji.hashCode) +
    (text.hashCode) +
    (duration.hashCode) +
    (expiresAt.hashCode);

  @override
  String toString() => 'RemoveRecentCustomStatusRequest[emoji=$emoji, text=$text, duration=$duration, expiresAt=$expiresAt]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'emoji'] = emoji;
      _json[r'text'] = text;
      _json[r'duration'] = duration;
      _json[r'expires_at'] = expiresAt;
    return _json;
  }

  /// Returns a new [RemoveRecentCustomStatusRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RemoveRecentCustomStatusRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RemoveRecentCustomStatusRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RemoveRecentCustomStatusRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RemoveRecentCustomStatusRequest(
        emoji: mapValueOfType<String>(json, r'emoji')!,
        text: mapValueOfType<String>(json, r'text')!,
        duration: mapValueOfType<String>(json, r'duration')!,
        expiresAt: mapValueOfType<String>(json, r'expires_at')!,
      );
    }
    return null;
  }

  static List<RemoveRecentCustomStatusRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RemoveRecentCustomStatusRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RemoveRecentCustomStatusRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RemoveRecentCustomStatusRequest> mapFromJson(dynamic json) {
    final map = <String, RemoveRecentCustomStatusRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RemoveRecentCustomStatusRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RemoveRecentCustomStatusRequest-objects as value to a dart map
  static Map<String, List<RemoveRecentCustomStatusRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RemoveRecentCustomStatusRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RemoveRecentCustomStatusRequest.listFromJson(entry.value, growable: growable,);
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
    'duration',
    'expires_at',
  };
}

