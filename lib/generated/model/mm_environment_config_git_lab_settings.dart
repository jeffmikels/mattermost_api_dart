//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmEnvironmentConfigGitLabSettings {
  /// Returns a new [MmEnvironmentConfigGitLabSettings] instance.
  MmEnvironmentConfigGitLabSettings({
    this.enable,
    this.secret,
    this.id,
    this.scope,
    this.authEndpoint,
    this.tokenEndpoint,
    this.userApiEndpoint,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? secret;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? scope;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? authEndpoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? tokenEndpoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? userApiEndpoint;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmEnvironmentConfigGitLabSettings &&
          other.enable == enable &&
          other.secret == secret &&
          other.id == id &&
          other.scope == scope &&
          other.authEndpoint == authEndpoint &&
          other.tokenEndpoint == tokenEndpoint &&
          other.userApiEndpoint == userApiEndpoint;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (enable == null ? 0 : enable!.hashCode) +
      (secret == null ? 0 : secret!.hashCode) +
      (id == null ? 0 : id!.hashCode) +
      (scope == null ? 0 : scope!.hashCode) +
      (authEndpoint == null ? 0 : authEndpoint!.hashCode) +
      (tokenEndpoint == null ? 0 : tokenEndpoint!.hashCode) +
      (userApiEndpoint == null ? 0 : userApiEndpoint!.hashCode);

  @override
  String toString() =>
      'MmEnvironmentConfigGitLabSettings[enable=$enable, secret=$secret, id=$id, scope=$scope, authEndpoint=$authEndpoint, tokenEndpoint=$tokenEndpoint, userApiEndpoint=$userApiEndpoint]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (enable != null) {
      _json[r'Enable'] = enable;
    }
    if (secret != null) {
      _json[r'Secret'] = secret;
    }
    if (id != null) {
      _json[r'Id'] = id;
    }
    if (scope != null) {
      _json[r'Scope'] = scope;
    }
    if (authEndpoint != null) {
      _json[r'AuthEndpoint'] = authEndpoint;
    }
    if (tokenEndpoint != null) {
      _json[r'TokenEndpoint'] = tokenEndpoint;
    }
    if (userApiEndpoint != null) {
      _json[r'UserApiEndpoint'] = userApiEndpoint;
    }
    return _json;
  }

  /// Returns a new [MmEnvironmentConfigGitLabSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmEnvironmentConfigGitLabSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmEnvironmentConfigGitLabSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmEnvironmentConfigGitLabSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmEnvironmentConfigGitLabSettings(
        enable: mapValueOfType<bool>(json, r'Enable'),
        secret: mapValueOfType<bool>(json, r'Secret'),
        id: mapValueOfType<bool>(json, r'Id'),
        scope: mapValueOfType<bool>(json, r'Scope'),
        authEndpoint: mapValueOfType<bool>(json, r'AuthEndpoint'),
        tokenEndpoint: mapValueOfType<bool>(json, r'TokenEndpoint'),
        userApiEndpoint: mapValueOfType<bool>(json, r'UserApiEndpoint'),
      );
    }
    return null;
  }

  static List<MmEnvironmentConfigGitLabSettings>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmEnvironmentConfigGitLabSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmEnvironmentConfigGitLabSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmEnvironmentConfigGitLabSettings> mapFromJson(dynamic json) {
    final map = <String, MmEnvironmentConfigGitLabSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmEnvironmentConfigGitLabSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmEnvironmentConfigGitLabSettings-objects as value to a dart map
  static Map<String, List<MmEnvironmentConfigGitLabSettings>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmEnvironmentConfigGitLabSettings>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmEnvironmentConfigGitLabSettings.listFromJson(
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
