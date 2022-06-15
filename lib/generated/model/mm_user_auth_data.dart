//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMUserAuthData {
  /// Returns a new [MMUserAuthData] instance.
  MMUserAuthData({
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
      other is MMUserAuthData && other.authData == authData && other.authService == authService;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (authData.hashCode) + (authService.hashCode);

  @override
  String toString() => 'MMUserAuthData[authData=$authData, authService=$authService]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'auth_data'] = authData;
    _json[r'auth_service'] = authService;
    return _json;
  }

  /// Returns a new [MMUserAuthData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMUserAuthData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMUserAuthData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMUserAuthData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMUserAuthData(
        authData: mapValueOfType<String>(json, r'auth_data')!,
        authService: mapValueOfType<String>(json, r'auth_service')!,
      );
    }
    return null;
  }

  static List<MMUserAuthData>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMUserAuthData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMUserAuthData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMUserAuthData> mapFromJson(dynamic json) {
    final map = <String, MMUserAuthData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMUserAuthData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMUserAuthData-objects as value to a dart map
  static Map<String, List<MMUserAuthData>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMUserAuthData>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMUserAuthData.listFromJson(
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
