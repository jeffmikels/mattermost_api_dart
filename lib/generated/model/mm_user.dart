//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmUser {
  /// Returns a new [MmUser] instance.
  MmUser({
    this.id,
    this.createAt,
    this.updateAt,
    this.deleteAt,
    this.username,
    this.firstName,
    this.lastName,
    this.nickname,
    this.email,
    this.emailVerified,
    this.authService,
    this.roles,
    this.locale,
    this.notifyProps,
    this.props,
    this.lastPasswordUpdate,
    this.lastPictureUpdate,
    this.failedAttempts,
    this.mfaActive,
    this.timezone,
    this.termsOfServiceId,
    this.termsOfServiceCreateAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The time in milliseconds a user was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createAt;

  /// The time in milliseconds a user was last updated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updateAt;

  /// The time in milliseconds a user was deleted
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deleteAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? emailVerified;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authService;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? roles;

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
  MmUserNotifyProps? notifyProps;

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
  int? lastPasswordUpdate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastPictureUpdate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? failedAttempts;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? mfaActive;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MmTimezone? timezone;

  /// ID of accepted terms of service, if any. This field is not present if empty.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? termsOfServiceId;

  /// The time in milliseconds the user accepted the terms of service
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? termsOfServiceCreateAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmUser &&
          other.id == id &&
          other.createAt == createAt &&
          other.updateAt == updateAt &&
          other.deleteAt == deleteAt &&
          other.username == username &&
          other.firstName == firstName &&
          other.lastName == lastName &&
          other.nickname == nickname &&
          other.email == email &&
          other.emailVerified == emailVerified &&
          other.authService == authService &&
          other.roles == roles &&
          other.locale == locale &&
          other.notifyProps == notifyProps &&
          other.props == props &&
          other.lastPasswordUpdate == lastPasswordUpdate &&
          other.lastPictureUpdate == lastPictureUpdate &&
          other.failedAttempts == failedAttempts &&
          other.mfaActive == mfaActive &&
          other.timezone == timezone &&
          other.termsOfServiceId == termsOfServiceId &&
          other.termsOfServiceCreateAt == termsOfServiceCreateAt;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (createAt == null ? 0 : createAt!.hashCode) +
      (updateAt == null ? 0 : updateAt!.hashCode) +
      (deleteAt == null ? 0 : deleteAt!.hashCode) +
      (username == null ? 0 : username!.hashCode) +
      (firstName == null ? 0 : firstName!.hashCode) +
      (lastName == null ? 0 : lastName!.hashCode) +
      (nickname == null ? 0 : nickname!.hashCode) +
      (email == null ? 0 : email!.hashCode) +
      (emailVerified == null ? 0 : emailVerified!.hashCode) +
      (authService == null ? 0 : authService!.hashCode) +
      (roles == null ? 0 : roles!.hashCode) +
      (locale == null ? 0 : locale!.hashCode) +
      (notifyProps == null ? 0 : notifyProps!.hashCode) +
      (props == null ? 0 : props!.hashCode) +
      (lastPasswordUpdate == null ? 0 : lastPasswordUpdate!.hashCode) +
      (lastPictureUpdate == null ? 0 : lastPictureUpdate!.hashCode) +
      (failedAttempts == null ? 0 : failedAttempts!.hashCode) +
      (mfaActive == null ? 0 : mfaActive!.hashCode) +
      (timezone == null ? 0 : timezone!.hashCode) +
      (termsOfServiceId == null ? 0 : termsOfServiceId!.hashCode) +
      (termsOfServiceCreateAt == null ? 0 : termsOfServiceCreateAt!.hashCode);

  @override
  String toString() =>
      'MmUser[id=$id, createAt=$createAt, updateAt=$updateAt, deleteAt=$deleteAt, username=$username, firstName=$firstName, lastName=$lastName, nickname=$nickname, email=$email, emailVerified=$emailVerified, authService=$authService, roles=$roles, locale=$locale, notifyProps=$notifyProps, props=$props, lastPasswordUpdate=$lastPasswordUpdate, lastPictureUpdate=$lastPictureUpdate, failedAttempts=$failedAttempts, mfaActive=$mfaActive, timezone=$timezone, termsOfServiceId=$termsOfServiceId, termsOfServiceCreateAt=$termsOfServiceCreateAt]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (createAt != null) {
      _json[r'create_at'] = createAt;
    }
    if (updateAt != null) {
      _json[r'update_at'] = updateAt;
    }
    if (deleteAt != null) {
      _json[r'delete_at'] = deleteAt;
    }
    if (username != null) {
      _json[r'username'] = username;
    }
    if (firstName != null) {
      _json[r'first_name'] = firstName;
    }
    if (lastName != null) {
      _json[r'last_name'] = lastName;
    }
    if (nickname != null) {
      _json[r'nickname'] = nickname;
    }
    if (email != null) {
      _json[r'email'] = email;
    }
    if (emailVerified != null) {
      _json[r'email_verified'] = emailVerified;
    }
    if (authService != null) {
      _json[r'auth_service'] = authService;
    }
    if (roles != null) {
      _json[r'roles'] = roles;
    }
    if (locale != null) {
      _json[r'locale'] = locale;
    }
    if (notifyProps != null) {
      _json[r'notify_props'] = notifyProps;
    }
    if (props != null) {
      _json[r'props'] = props;
    }
    if (lastPasswordUpdate != null) {
      _json[r'last_password_update'] = lastPasswordUpdate;
    }
    if (lastPictureUpdate != null) {
      _json[r'last_picture_update'] = lastPictureUpdate;
    }
    if (failedAttempts != null) {
      _json[r'failed_attempts'] = failedAttempts;
    }
    if (mfaActive != null) {
      _json[r'mfa_active'] = mfaActive;
    }
    if (timezone != null) {
      _json[r'timezone'] = timezone;
    }
    if (termsOfServiceId != null) {
      _json[r'terms_of_service_id'] = termsOfServiceId;
    }
    if (termsOfServiceCreateAt != null) {
      _json[r'terms_of_service_create_at'] = termsOfServiceCreateAt;
    }
    return _json;
  }

  /// Returns a new [MmUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmUser[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmUser[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmUser(
        id: mapValueOfType<String>(json, r'id'),
        createAt: mapValueOfType<int>(json, r'create_at'),
        updateAt: mapValueOfType<int>(json, r'update_at'),
        deleteAt: mapValueOfType<int>(json, r'delete_at'),
        username: mapValueOfType<String>(json, r'username'),
        firstName: mapValueOfType<String>(json, r'first_name'),
        lastName: mapValueOfType<String>(json, r'last_name'),
        nickname: mapValueOfType<String>(json, r'nickname'),
        email: mapValueOfType<String>(json, r'email'),
        emailVerified: mapValueOfType<bool>(json, r'email_verified'),
        authService: mapValueOfType<String>(json, r'auth_service'),
        roles: mapValueOfType<String>(json, r'roles'),
        locale: mapValueOfType<String>(json, r'locale'),
        notifyProps: MmUserNotifyProps.fromJson(json[r'notify_props']),
        props: mapValueOfType<Map>(json, r'props'),
        lastPasswordUpdate: mapValueOfType<int>(json, r'last_password_update'),
        lastPictureUpdate: mapValueOfType<int>(json, r'last_picture_update'),
        failedAttempts: mapValueOfType<int>(json, r'failed_attempts'),
        mfaActive: mapValueOfType<bool>(json, r'mfa_active'),
        timezone: MmTimezone.fromJson(json[r'timezone']),
        termsOfServiceId: mapValueOfType<String>(json, r'terms_of_service_id'),
        termsOfServiceCreateAt: mapValueOfType<int>(json, r'terms_of_service_create_at'),
      );
    }
    return null;
  }

  static List<MmUser>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmUser> mapFromJson(dynamic json) {
    final map = <String, MmUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmUser-objects as value to a dart map
  static Map<String, List<MmUser>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmUser>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUser.listFromJson(
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
