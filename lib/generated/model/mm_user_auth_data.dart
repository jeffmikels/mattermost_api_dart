//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmUserAuthData {
  /// Returns a new [MmUserAuthData] instance.
  MmUserAuthData({
    required this.authData,
    required this.authService,
  });

  /// Service-specific authentication data
  String authData;

  /// The authentication service such as \"email\", \"gitlab\", or \"ldap\"
  String authService;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmUserAuthData && other.authData == authData && other.authService == authService;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (authData.hashCode) + (authService.hashCode);

  @override
  String toString() => 'MmUserAuthData[authData=$authData, authService=$authService]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'auth_data'] = authData;
    _json[r'auth_service'] = authService;
    return _json;
  }

  /// Returns a new [MmUserAuthData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmUserAuthData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmUserAuthData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmUserAuthData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmUserAuthData(
        authData: mapValueOfType<String>(json, r'auth_data')!,
        authService: mapValueOfType<String>(json, r'auth_service')!,
      );
    }
    return null;
  }

  static List<MmUserAuthData>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmUserAuthData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmUserAuthData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmUserAuthData> mapFromJson(dynamic json) {
    final map = <String, MmUserAuthData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUserAuthData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmUserAuthData-objects as value to a dart map
  static Map<String, List<MmUserAuthData>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmUserAuthData>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUserAuthData.listFromJson(
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
    'auth_data',
    'auth_service',
  };
}
