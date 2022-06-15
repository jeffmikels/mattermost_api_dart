//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmConvertBotToUserRequest {
  /// Returns a new [MmConvertBotToUserRequest] instance.
  MmConvertBotToUserRequest({
    this.email,
    this.username,
    this.password,
    this.firstName,
    this.lastName,
    this.nickname,
    this.locale,
    this.position,
    this.props,
    this.notifyProps,
  });

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
  String? username;

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
  String? locale;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? position;

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
      other is MmConvertBotToUserRequest &&
          other.email == email &&
          other.username == username &&
          other.password == password &&
          other.firstName == firstName &&
          other.lastName == lastName &&
          other.nickname == nickname &&
          other.locale == locale &&
          other.position == position &&
          other.props == props &&
          other.notifyProps == notifyProps;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (email == null ? 0 : email!.hashCode) +
      (username == null ? 0 : username!.hashCode) +
      (password == null ? 0 : password!.hashCode) +
      (firstName == null ? 0 : firstName!.hashCode) +
      (lastName == null ? 0 : lastName!.hashCode) +
      (nickname == null ? 0 : nickname!.hashCode) +
      (locale == null ? 0 : locale!.hashCode) +
      (position == null ? 0 : position!.hashCode) +
      (props == null ? 0 : props!.hashCode) +
      (notifyProps == null ? 0 : notifyProps!.hashCode);

  @override
  String toString() =>
      'MmConvertBotToUserRequest[email=$email, username=$username, password=$password, firstName=$firstName, lastName=$lastName, nickname=$nickname, locale=$locale, position=$position, props=$props, notifyProps=$notifyProps]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (email != null) {
      _json[r'email'] = email;
    }
    if (username != null) {
      _json[r'username'] = username;
    }
    if (password != null) {
      _json[r'password'] = password;
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
    if (locale != null) {
      _json[r'locale'] = locale;
    }
    if (position != null) {
      _json[r'position'] = position;
    }
    if (props != null) {
      _json[r'props'] = props;
    }
    if (notifyProps != null) {
      _json[r'notify_props'] = notifyProps;
    }
    return _json;
  }

  /// Returns a new [MmConvertBotToUserRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmConvertBotToUserRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmConvertBotToUserRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmConvertBotToUserRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmConvertBotToUserRequest(
        email: mapValueOfType<String>(json, r'email'),
        username: mapValueOfType<String>(json, r'username'),
        password: mapValueOfType<String>(json, r'password'),
        firstName: mapValueOfType<String>(json, r'first_name'),
        lastName: mapValueOfType<String>(json, r'last_name'),
        nickname: mapValueOfType<String>(json, r'nickname'),
        locale: mapValueOfType<String>(json, r'locale'),
        position: mapValueOfType<String>(json, r'position'),
        props: mapValueOfType<Map>(json, r'props'),
        notifyProps: MmUserNotifyProps.fromJson(json[r'notify_props']),
      );
    }
    return null;
  }

  static List<MmConvertBotToUserRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmConvertBotToUserRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmConvertBotToUserRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmConvertBotToUserRequest> mapFromJson(dynamic json) {
    final map = <String, MmConvertBotToUserRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmConvertBotToUserRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmConvertBotToUserRequest-objects as value to a dart map
  static Map<String, List<MmConvertBotToUserRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmConvertBotToUserRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmConvertBotToUserRequest.listFromJson(
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
