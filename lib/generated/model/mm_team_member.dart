//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmTeamMember {
  /// Returns a new [MmTeamMember] instance.
  MmTeamMember({
    this.teamId,
    this.userId,
    this.roles,
    this.deleteAt,
    this.schemeUser,
    this.schemeAdmin,
    this.explicitRoles,
  });

  /// The ID of the team this member belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? teamId;

  /// The ID of the user this member relates to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  /// The complete list of roles assigned to this team member, as a space-separated list of role names, including any roles granted implicitly through permissions schemes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? roles;

  /// The time in milliseconds that this team member was deleted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deleteAt;

  /// Whether this team member holds the default user role defined by the team's permissions scheme.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? schemeUser;

  /// Whether this team member holds the default admin role defined by the team's permissions scheme.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? schemeAdmin;

  /// The list of roles explicitly assigned to this team member, as a space separated list of role names. This list does *not* include any roles granted implicitly through permissions schemes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? explicitRoles;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmTeamMember &&
          other.teamId == teamId &&
          other.userId == userId &&
          other.roles == roles &&
          other.deleteAt == deleteAt &&
          other.schemeUser == schemeUser &&
          other.schemeAdmin == schemeAdmin &&
          other.explicitRoles == explicitRoles;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (teamId == null ? 0 : teamId!.hashCode) +
      (userId == null ? 0 : userId!.hashCode) +
      (roles == null ? 0 : roles!.hashCode) +
      (deleteAt == null ? 0 : deleteAt!.hashCode) +
      (schemeUser == null ? 0 : schemeUser!.hashCode) +
      (schemeAdmin == null ? 0 : schemeAdmin!.hashCode) +
      (explicitRoles == null ? 0 : explicitRoles!.hashCode);

  @override
  String toString() =>
      'MmTeamMember[teamId=$teamId, userId=$userId, roles=$roles, deleteAt=$deleteAt, schemeUser=$schemeUser, schemeAdmin=$schemeAdmin, explicitRoles=$explicitRoles]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (teamId != null) {
      _json[r'team_id'] = teamId;
    }
    if (userId != null) {
      _json[r'user_id'] = userId;
    }
    if (roles != null) {
      _json[r'roles'] = roles;
    }
    if (deleteAt != null) {
      _json[r'delete_at'] = deleteAt;
    }
    if (schemeUser != null) {
      _json[r'scheme_user'] = schemeUser;
    }
    if (schemeAdmin != null) {
      _json[r'scheme_admin'] = schemeAdmin;
    }
    if (explicitRoles != null) {
      _json[r'explicit_roles'] = explicitRoles;
    }
    return _json;
  }

  /// Returns a new [MmTeamMember] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmTeamMember? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmTeamMember[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmTeamMember[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmTeamMember(
        teamId: mapValueOfType<String>(json, r'team_id'),
        userId: mapValueOfType<String>(json, r'user_id'),
        roles: mapValueOfType<String>(json, r'roles'),
        deleteAt: mapValueOfType<int>(json, r'delete_at'),
        schemeUser: mapValueOfType<bool>(json, r'scheme_user'),
        schemeAdmin: mapValueOfType<bool>(json, r'scheme_admin'),
        explicitRoles: mapValueOfType<String>(json, r'explicit_roles'),
      );
    }
    return null;
  }

  static List<MmTeamMember>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmTeamMember>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmTeamMember.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmTeamMember> mapFromJson(dynamic json) {
    final map = <String, MmTeamMember>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmTeamMember.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmTeamMember-objects as value to a dart map
  static Map<String, List<MmTeamMember>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmTeamMember>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmTeamMember.listFromJson(
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
