//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmCreateUserRequest {
  /// Returns a new [MmCreateUserRequest] instance.
  MmCreateUserRequest({
    required this.email,
    required this.username,
    this.firstName,
    this.lastName,
    this.nickname,
    this.authData,
    this.authService,
    this.password,
    this.locale,
    this.props,
    this.notifyProps,
  });

  String email;

  String username;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nickname;

  /// Service-specific authentication data, such as email address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authData;

  /// The authentication service, one of \"email\", \"gitlab\", \"ldap\", \"saml\", \"office365\", \"google\", and \"\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authService;

  /// The password used for email authentication.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? password;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locale;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Map? props;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MmUserNotifyProps? notifyProps;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmCreateUserRequest &&
          other.email == email &&
          other.username == username &&
          other.firstName == firstName &&
          other.lastName == lastName &&
          other.nickname == nickname &&
          other.authData == authData &&
          other.authService == authService &&
          other.password == password &&
          other.locale == locale &&
          other.props == props &&
          other.notifyProps == notifyProps;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (email.hashCode) +
      (username.hashCode) +
      (firstName == null ? 0 : firstName!.hashCode) +
      (lastName == null ? 0 : lastName!.hashCode) +
      (nickname == null ? 0 : nickname!.hashCode) +
      (authData == null ? 0 : authData!.hashCode) +
      (authService == null ? 0 : authService!.hashCode) +
      (password == null ? 0 : password!.hashCode) +
      (locale == null ? 0 : locale!.hashCode) +
      (props == null ? 0 : props!.hashCode) +
      (notifyProps == null ? 0 : notifyProps!.hashCode);

  @override
  String toString() =>
      'MmCreateUserRequest[email=$email, username=$username, firstName=$firstName, lastName=$lastName, nickname=$nickname, authData=$authData, authService=$authService, password=$password, locale=$locale, props=$props, notifyProps=$notifyProps]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'email'] = email;
    _json[r'username'] = username;
    if (firstName != null) {
      _json[r'first_name'] = firstName;
    }
    if (lastName != null) {
      _json[r'last_name'] = lastName;
    }
    if (nickname != null) {
      _json[r'nickname'] = nickname;
    }
    if (authData != null) {
      _json[r'auth_data'] = authData;
    }
    if (authService != null) {
      _json[r'auth_service'] = authService;
    }
    if (password != null) {
      _json[r'password'] = password;
    }
    if (locale != null) {
      _json[r'locale'] = locale;
    }
    if (props != null) {
      _json[r'props'] = props;
    }
    if (notifyProps != null) {
      _json[r'notify_props'] = notifyProps;
    }
    return _json;
  }

  /// Returns a new [MmCreateUserRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmCreateUserRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmCreateUserRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmCreateUserRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmCreateUserRequest(
        email: mapValueOfType<String>(json, r'email')!,
        username: mapValueOfType<String>(json, r'username')!,
        firstName: mapValueOfType<String>(json, r'first_name'),
        lastName: mapValueOfType<String>(json, r'last_name'),
        nickname: mapValueOfType<String>(json, r'nickname'),
        authData: mapValueOfType<String>(json, r'auth_data'),
        authService: mapValueOfType<String>(json, r'auth_service'),
        password: mapValueOfType<String>(json, r'password'),
        locale: mapValueOfType<String>(json, r'locale'),
        props: mapValueOfType<Map>(json, r'props'),
        notifyProps: MmUserNotifyProps.fromJson(json[r'notify_props']),
      );
    }
    return null;
  }

  static List<MmCreateUserRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmCreateUserRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmCreateUserRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmCreateUserRequest> mapFromJson(dynamic json) {
    final map = <String, MmCreateUserRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmCreateUserRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmCreateUserRequest-objects as value to a dart map
  static Map<String, List<MmCreateUserRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmCreateUserRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmCreateUserRequest.listFromJson(
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
    'email',
    'username',
  };
}
