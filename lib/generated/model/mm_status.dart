//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMStatus {
  /// Returns a new [MMStatus] instance.
  MMStatus({
    this.userId,
    this.status,
    this.manual,
    this.lastActivityAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? manual;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastActivityAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMStatus &&
          other.userId == userId &&
          other.status == status &&
          other.manual == manual &&
          other.lastActivityAt == lastActivityAt;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (userId == null ? 0 : userId!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (manual == null ? 0 : manual!.hashCode) +
      (lastActivityAt == null ? 0 : lastActivityAt!.hashCode);

  @override
  String toString() => 'MMStatus[userId=$userId, status=$status, manual=$manual, lastActivityAt=$lastActivityAt]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (userId != null) {
      _json[r'user_id'] = userId;
    }
    if (status != null) {
      _json[r'status'] = status;
    }
    if (manual != null) {
      _json[r'manual'] = manual;
    }
    if (lastActivityAt != null) {
      _json[r'last_activity_at'] = lastActivityAt;
    }
    return _json;
  }

  /// Returns a new [MMStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMStatus(
        userId: mapValueOfType<String>(json, r'user_id'),
        status: mapValueOfType<String>(json, r'status'),
        manual: mapValueOfType<bool>(json, r'manual'),
        lastActivityAt: mapValueOfType<int>(json, r'last_activity_at'),
      );
    }
    return null;
  }

  static List<MMStatus>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMStatus> mapFromJson(dynamic json) {
    final map = <String, MMStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMStatus-objects as value to a dart map
  static Map<String, List<MMStatus>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMStatus>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMStatus.listFromJson(
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
  static const requiredKeys = <String>{};
}
