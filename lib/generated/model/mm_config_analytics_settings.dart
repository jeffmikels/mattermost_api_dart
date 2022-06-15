//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMConfigAnalyticsSettings {
  /// Returns a new [MMConfigAnalyticsSettings] instance.
  MMConfigAnalyticsSettings({
    this.maxUsersForStatistics,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxUsersForStatistics;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMConfigAnalyticsSettings && other.maxUsersForStatistics == maxUsersForStatistics;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (maxUsersForStatistics == null ? 0 : maxUsersForStatistics!.hashCode);

  @override
  String toString() => 'MMConfigAnalyticsSettings[maxUsersForStatistics=$maxUsersForStatistics]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (maxUsersForStatistics != null) {
      _json[r'MaxUsersForStatistics'] = maxUsersForStatistics;
    }
    return _json;
  }

  /// Returns a new [MMConfigAnalyticsSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMConfigAnalyticsSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMConfigAnalyticsSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMConfigAnalyticsSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMConfigAnalyticsSettings(
        maxUsersForStatistics: mapValueOfType<int>(json, r'MaxUsersForStatistics'),
      );
    }
    return null;
  }

  static List<MMConfigAnalyticsSettings>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMConfigAnalyticsSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMConfigAnalyticsSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMConfigAnalyticsSettings> mapFromJson(dynamic json) {
    final map = <String, MMConfigAnalyticsSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMConfigAnalyticsSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMConfigAnalyticsSettings-objects as value to a dart map
  static Map<String, List<MMConfigAnalyticsSettings>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMConfigAnalyticsSettings>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMConfigAnalyticsSettings.listFromJson(
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
