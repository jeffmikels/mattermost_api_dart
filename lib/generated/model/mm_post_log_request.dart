//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmPostLogRequest {
  /// Returns a new [MmPostLogRequest] instance.
  MmPostLogRequest({
    required this.level,
    required this.message,
  });

  /// The error level, ERROR or DEBUG
  String level;

  /// Message to send to the server logs
  String message;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MmPostLogRequest && other.level == level && other.message == message;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (level.hashCode) + (message.hashCode);

  @override
  String toString() => 'MmPostLogRequest[level=$level, message=$message]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'level'] = level;
    _json[r'message'] = message;
    return _json;
  }

  /// Returns a new [MmPostLogRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmPostLogRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmPostLogRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmPostLogRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmPostLogRequest(
        level: mapValueOfType<String>(json, r'level')!,
        message: mapValueOfType<String>(json, r'message')!,
      );
    }
    return null;
  }

  static List<MmPostLogRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmPostLogRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmPostLogRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmPostLogRequest> mapFromJson(dynamic json) {
    final map = <String, MmPostLogRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmPostLogRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmPostLogRequest-objects as value to a dart map
  static Map<String, List<MmPostLogRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmPostLogRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmPostLogRequest.listFromJson(
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
    'level',
    'message',
  };
}
