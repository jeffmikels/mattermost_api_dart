//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmUpgradeToEnterpriseStatus200Response {
  /// Returns a new [MmUpgradeToEnterpriseStatus200Response] instance.
  MmUpgradeToEnterpriseStatus200Response({
    this.percentage,
    this.error,
  });

  /// Current percentage of the upgrade
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? percentage;

  /// Error happened during the upgrade
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmUpgradeToEnterpriseStatus200Response && other.percentage == percentage && other.error == error;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (percentage == null ? 0 : percentage!.hashCode) + (error == null ? 0 : error!.hashCode);

  @override
  String toString() => 'MmUpgradeToEnterpriseStatus200Response[percentage=$percentage, error=$error]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (percentage != null) {
      _json[r'percentage'] = percentage;
    }
    if (error != null) {
      _json[r'error'] = error;
    }
    return _json;
  }

  /// Returns a new [MmUpgradeToEnterpriseStatus200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmUpgradeToEnterpriseStatus200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MmUpgradeToEnterpriseStatus200Response[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MmUpgradeToEnterpriseStatus200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmUpgradeToEnterpriseStatus200Response(
        percentage: mapValueOfType<int>(json, r'percentage'),
        error: mapValueOfType<String>(json, r'error'),
      );
    }
    return null;
  }

  static List<MmUpgradeToEnterpriseStatus200Response>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmUpgradeToEnterpriseStatus200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmUpgradeToEnterpriseStatus200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmUpgradeToEnterpriseStatus200Response> mapFromJson(dynamic json) {
    final map = <String, MmUpgradeToEnterpriseStatus200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUpgradeToEnterpriseStatus200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmUpgradeToEnterpriseStatus200Response-objects as value to a dart map
  static Map<String, List<MmUpgradeToEnterpriseStatus200Response>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmUpgradeToEnterpriseStatus200Response>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUpgradeToEnterpriseStatus200Response.listFromJson(
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
