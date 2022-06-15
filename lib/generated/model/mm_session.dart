//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmSession {
  /// Returns a new [MmSession] instance.
  MmSession({
    this.createAt,
    this.deviceId,
    this.expiresAt,
    this.id,
    this.isOauth,
    this.lastActivityAt,
    this.props,
    this.roles,
    this.teamMembers = const [],
    this.token,
    this.userId,
  });

  /// The time in milliseconds a session was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deviceId;

  /// The time in milliseconds a session will expire
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expiresAt;

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
  bool? isOauth;

  /// The time in milliseconds of the last activity of a session
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastActivityAt;

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
  String? roles;

  List<MmTeamMember> teamMembers;

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
  String? userId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmSession &&
          other.createAt == createAt &&
          other.deviceId == deviceId &&
          other.expiresAt == expiresAt &&
          other.id == id &&
          other.isOauth == isOauth &&
          other.lastActivityAt == lastActivityAt &&
          other.props == props &&
          other.roles == roles &&
          other.teamMembers == teamMembers &&
          other.token == token &&
          other.userId == userId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (createAt == null ? 0 : createAt!.hashCode) +
      (deviceId == null ? 0 : deviceId!.hashCode) +
      (expiresAt == null ? 0 : expiresAt!.hashCode) +
      (id == null ? 0 : id!.hashCode) +
      (isOauth == null ? 0 : isOauth!.hashCode) +
      (lastActivityAt == null ? 0 : lastActivityAt!.hashCode) +
      (props == null ? 0 : props!.hashCode) +
      (roles == null ? 0 : roles!.hashCode) +
      (teamMembers.hashCode) +
      (token == null ? 0 : token!.hashCode) +
      (userId == null ? 0 : userId!.hashCode);

  @override
  String toString() =>
      'MmSession[createAt=$createAt, deviceId=$deviceId, expiresAt=$expiresAt, id=$id, isOauth=$isOauth, lastActivityAt=$lastActivityAt, props=$props, roles=$roles, teamMembers=$teamMembers, token=$token, userId=$userId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (createAt != null) {
      _json[r'create_at'] = createAt;
    }
    if (deviceId != null) {
      _json[r'device_id'] = deviceId;
    }
    if (expiresAt != null) {
      _json[r'expires_at'] = expiresAt;
    }
    if (id != null) {
      _json[r'id'] = id;
    }
    if (isOauth != null) {
      _json[r'is_oauth'] = isOauth;
    }
    if (lastActivityAt != null) {
      _json[r'last_activity_at'] = lastActivityAt;
    }
    if (props != null) {
      _json[r'props'] = props;
    }
    if (roles != null) {
      _json[r'roles'] = roles;
    }
    _json[r'team_members'] = teamMembers;
    if (token != null) {
      _json[r'token'] = token;
    }
    if (userId != null) {
      _json[r'user_id'] = userId;
    }
    return _json;
  }

  /// Returns a new [MmSession] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmSession? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmSession[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmSession[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmSession(
        createAt: mapValueOfType<int>(json, r'create_at'),
        deviceId: mapValueOfType<String>(json, r'device_id'),
        expiresAt: mapValueOfType<int>(json, r'expires_at'),
        id: mapValueOfType<String>(json, r'id'),
        isOauth: mapValueOfType<bool>(json, r'is_oauth'),
        lastActivityAt: mapValueOfType<int>(json, r'last_activity_at'),
        props: mapValueOfType<Map>(json, r'props'),
        roles: mapValueOfType<String>(json, r'roles'),
        teamMembers: MmTeamMember.listFromJson(json[r'team_members']) ?? const [],
        token: mapValueOfType<String>(json, r'token'),
        userId: mapValueOfType<String>(json, r'user_id'),
      );
    }
    return null;
  }

  static List<MmSession>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmSession>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmSession.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmSession> mapFromJson(dynamic json) {
    final map = <String, MmSession>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSession.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmSession-objects as value to a dart map
  static Map<String, List<MmSession>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmSession>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSession.listFromJson(
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
