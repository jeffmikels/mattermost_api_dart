//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmConfigGitLabSettings {
  /// Returns a new [MmConfigGitLabSettings] instance.
  MmConfigGitLabSettings({
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
  String? secret;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authEndpoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tokenEndpoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userApiEndpoint;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmConfigGitLabSettings &&
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
      'MmConfigGitLabSettings[enable=$enable, secret=$secret, id=$id, scope=$scope, authEndpoint=$authEndpoint, tokenEndpoint=$tokenEndpoint, userApiEndpoint=$userApiEndpoint]';

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

  /// Returns a new [MmConfigGitLabSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmConfigGitLabSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmConfigGitLabSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmConfigGitLabSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmConfigGitLabSettings(
        enable: mapValueOfType<bool>(json, r'Enable'),
        secret: mapValueOfType<String>(json, r'Secret'),
        id: mapValueOfType<String>(json, r'Id'),
        scope: mapValueOfType<String>(json, r'Scope'),
        authEndpoint: mapValueOfType<String>(json, r'AuthEndpoint'),
        tokenEndpoint: mapValueOfType<String>(json, r'TokenEndpoint'),
        userApiEndpoint: mapValueOfType<String>(json, r'UserApiEndpoint'),
      );
    }
    return null;
  }

  static List<MmConfigGitLabSettings>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmConfigGitLabSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmConfigGitLabSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmConfigGitLabSettings> mapFromJson(dynamic json) {
    final map = <String, MmConfigGitLabSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmConfigGitLabSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmConfigGitLabSettings-objects as value to a dart map
  static Map<String, List<MmConfigGitLabSettings>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmConfigGitLabSettings>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmConfigGitLabSettings.listFromJson(
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
