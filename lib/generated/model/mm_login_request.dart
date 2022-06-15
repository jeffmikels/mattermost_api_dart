//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmLoginRequest {
  /// Returns a new [MmLoginRequest] instance.
  MmLoginRequest({
    this.id,
    this.loginId,
    this.token,
    this.deviceId,
    this.ldapOnly,
    this.password,
  });

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
  String? loginId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deviceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ldapOnly;

  /// The password used for email authentication.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? password;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmLoginRequest &&
          other.id == id &&
          other.loginId == loginId &&
          other.token == token &&
          other.deviceId == deviceId &&
          other.ldapOnly == ldapOnly &&
          other.password == password;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (loginId == null ? 0 : loginId!.hashCode) +
      (token == null ? 0 : token!.hashCode) +
      (deviceId == null ? 0 : deviceId!.hashCode) +
      (ldapOnly == null ? 0 : ldapOnly!.hashCode) +
      (password == null ? 0 : password!.hashCode);

  @override
  String toString() =>
      'MmLoginRequest[id=$id, loginId=$loginId, token=$token, deviceId=$deviceId, ldapOnly=$ldapOnly, password=$password]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (loginId != null) {
      _json[r'login_id'] = loginId;
    }
    if (token != null) {
      _json[r'token'] = token;
    }
    if (deviceId != null) {
      _json[r'device_id'] = deviceId;
    }
    if (ldapOnly != null) {
      _json[r'ldap_only'] = ldapOnly;
    }
    if (password != null) {
      _json[r'password'] = password;
    }
    return _json;
  }

  /// Returns a new [MmLoginRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmLoginRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmLoginRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmLoginRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmLoginRequest(
        id: mapValueOfType<String>(json, r'id'),
        loginId: mapValueOfType<String>(json, r'login_id'),
        token: mapValueOfType<String>(json, r'token'),
        deviceId: mapValueOfType<String>(json, r'device_id'),
        ldapOnly: mapValueOfType<bool>(json, r'ldap_only'),
        password: mapValueOfType<String>(json, r'password'),
      );
    }
    return null;
  }

  static List<MmLoginRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmLoginRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmLoginRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmLoginRequest> mapFromJson(dynamic json) {
    final map = <String, MmLoginRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmLoginRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmLoginRequest-objects as value to a dart map
  static Map<String, List<MmLoginRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmLoginRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmLoginRequest.listFromJson(
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
