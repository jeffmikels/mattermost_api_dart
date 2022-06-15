//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMSwitchAccountTypeRequest {
  /// Returns a new [MMSwitchAccountTypeRequest] instance.
  MMSwitchAccountTypeRequest({
    required this.currentService,
    required this.newService,
    this.email,
    this.password,
    this.mfaCode,
    this.ldapId,
  });

  /// The service the user currently uses to login
  String currentService;

  /// The service the user will use to login
  String newService;

  /// The email of the user
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// The password used with the current service
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? password;

  /// The MFA code of the current service
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mfaCode;

  /// The LDAP/AD id of the user
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ldapId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMSwitchAccountTypeRequest &&
          other.currentService == currentService &&
          other.newService == newService &&
          other.email == email &&
          other.password == password &&
          other.mfaCode == mfaCode &&
          other.ldapId == ldapId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (currentService.hashCode) +
      (newService.hashCode) +
      (email == null ? 0 : email!.hashCode) +
      (password == null ? 0 : password!.hashCode) +
      (mfaCode == null ? 0 : mfaCode!.hashCode) +
      (ldapId == null ? 0 : ldapId!.hashCode);

  @override
  String toString() =>
      'MMSwitchAccountTypeRequest[currentService=$currentService, newService=$newService, email=$email, password=$password, mfaCode=$mfaCode, ldapId=$ldapId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'current_service'] = currentService;
    _json[r'new_service'] = newService;
    if (email != null) {
      _json[r'email'] = email;
    }
    if (password != null) {
      _json[r'password'] = password;
    }
    if (mfaCode != null) {
      _json[r'mfa_code'] = mfaCode;
    }
    if (ldapId != null) {
      _json[r'ldap_id'] = ldapId;
    }
    return _json;
  }

  /// Returns a new [MMSwitchAccountTypeRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMSwitchAccountTypeRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMSwitchAccountTypeRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMSwitchAccountTypeRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMSwitchAccountTypeRequest(
        currentService: mapValueOfType<String>(json, r'current_service')!,
        newService: mapValueOfType<String>(json, r'new_service')!,
        email: mapValueOfType<String>(json, r'email'),
        password: mapValueOfType<String>(json, r'password'),
        mfaCode: mapValueOfType<String>(json, r'mfa_code'),
        ldapId: mapValueOfType<String>(json, r'ldap_id'),
      );
    }
    return null;
  }

  static List<MMSwitchAccountTypeRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMSwitchAccountTypeRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMSwitchAccountTypeRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMSwitchAccountTypeRequest> mapFromJson(dynamic json) {
    final map = <String, MMSwitchAccountTypeRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMSwitchAccountTypeRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMSwitchAccountTypeRequest-objects as value to a dart map
  static Map<String, List<MMSwitchAccountTypeRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMSwitchAccountTypeRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMSwitchAccountTypeRequest.listFromJson(
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
    'current_service',
    'new_service',
  };
}
