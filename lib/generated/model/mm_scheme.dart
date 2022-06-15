//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmScheme {
  /// Returns a new [MmScheme] instance.
  MmScheme({
    this.id,
    this.name,
    this.description,
    this.createAt,
    this.updateAt,
    this.deleteAt,
    this.scope,
    this.defaultTeamAdminRole,
    this.defaultTeamUserRole,
    this.defaultChannelAdminRole,
    this.defaultChannelUserRole,
  });

  /// The unique identifier of the scheme.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The human readable name for the scheme.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// A human readable description of the scheme.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// The time at which the scheme was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createAt;

  /// The time at which the scheme was last updated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updateAt;

  /// The time at which the scheme was deleted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deleteAt;

  /// The scope to which this scheme can be applied, either \"team\" or \"channel\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  /// The id of the default team admin role for this scheme.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultTeamAdminRole;

  /// The id of the default team user role for this scheme.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultTeamUserRole;

  /// The id of the default channel admin role for this scheme.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultChannelAdminRole;

  /// The id of the default channel user role for this scheme.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultChannelUserRole;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmScheme &&
          other.id == id &&
          other.name == name &&
          other.description == description &&
          other.createAt == createAt &&
          other.updateAt == updateAt &&
          other.deleteAt == deleteAt &&
          other.scope == scope &&
          other.defaultTeamAdminRole == defaultTeamAdminRole &&
          other.defaultTeamUserRole == defaultTeamUserRole &&
          other.defaultChannelAdminRole == defaultChannelAdminRole &&
          other.defaultChannelUserRole == defaultChannelUserRole;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (createAt == null ? 0 : createAt!.hashCode) +
      (updateAt == null ? 0 : updateAt!.hashCode) +
      (deleteAt == null ? 0 : deleteAt!.hashCode) +
      (scope == null ? 0 : scope!.hashCode) +
      (defaultTeamAdminRole == null ? 0 : defaultTeamAdminRole!.hashCode) +
      (defaultTeamUserRole == null ? 0 : defaultTeamUserRole!.hashCode) +
      (defaultChannelAdminRole == null ? 0 : defaultChannelAdminRole!.hashCode) +
      (defaultChannelUserRole == null ? 0 : defaultChannelUserRole!.hashCode);

  @override
  String toString() =>
      'MmScheme[id=$id, name=$name, description=$description, createAt=$createAt, updateAt=$updateAt, deleteAt=$deleteAt, scope=$scope, defaultTeamAdminRole=$defaultTeamAdminRole, defaultTeamUserRole=$defaultTeamUserRole, defaultChannelAdminRole=$defaultChannelAdminRole, defaultChannelUserRole=$defaultChannelUserRole]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (name != null) {
      _json[r'name'] = name;
    }
    if (description != null) {
      _json[r'description'] = description;
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
    if (scope != null) {
      _json[r'scope'] = scope;
    }
    if (defaultTeamAdminRole != null) {
      _json[r'default_team_admin_role'] = defaultTeamAdminRole;
    }
    if (defaultTeamUserRole != null) {
      _json[r'default_team_user_role'] = defaultTeamUserRole;
    }
    if (defaultChannelAdminRole != null) {
      _json[r'default_channel_admin_role'] = defaultChannelAdminRole;
    }
    if (defaultChannelUserRole != null) {
      _json[r'default_channel_user_role'] = defaultChannelUserRole;
    }
    return _json;
  }

  /// Returns a new [MmScheme] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmScheme? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmScheme[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmScheme[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmScheme(
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        createAt: mapValueOfType<int>(json, r'create_at'),
        updateAt: mapValueOfType<int>(json, r'update_at'),
        deleteAt: mapValueOfType<int>(json, r'delete_at'),
        scope: mapValueOfType<String>(json, r'scope'),
        defaultTeamAdminRole: mapValueOfType<String>(json, r'default_team_admin_role'),
        defaultTeamUserRole: mapValueOfType<String>(json, r'default_team_user_role'),
        defaultChannelAdminRole: mapValueOfType<String>(json, r'default_channel_admin_role'),
        defaultChannelUserRole: mapValueOfType<String>(json, r'default_channel_user_role'),
      );
    }
    return null;
  }

  static List<MmScheme>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmScheme>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmScheme.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmScheme> mapFromJson(dynamic json) {
    final map = <String, MmScheme>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmScheme.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmScheme-objects as value to a dart map
  static Map<String, List<MmScheme>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmScheme>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmScheme.listFromJson(
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
