//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmTeam {
  /// Returns a new [MmTeam] instance.
  MmTeam({
    this.id,
    this.createAt,
    this.updateAt,
    this.deleteAt,
    this.displayName,
    this.name,
    this.description,
    this.email,
    this.type,
    this.allowedDomains,
    this.inviteId,
    this.allowOpenInvite,
    this.policyId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The time in milliseconds a team was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createAt;

  /// The time in milliseconds a team was last updated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updateAt;

  /// The time in milliseconds a team was deleted
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
  String? displayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

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
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? allowedDomains;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inviteId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? allowOpenInvite;

  /// The data retention policy to which this team has been assigned. If no such policy exists, or the caller does not have the `sysconsole_read_compliance_data_retention` permission, this field will be null.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? policyId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmTeam &&
          other.id == id &&
          other.createAt == createAt &&
          other.updateAt == updateAt &&
          other.deleteAt == deleteAt &&
          other.displayName == displayName &&
          other.name == name &&
          other.description == description &&
          other.email == email &&
          other.type == type &&
          other.allowedDomains == allowedDomains &&
          other.inviteId == inviteId &&
          other.allowOpenInvite == allowOpenInvite &&
          other.policyId == policyId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (createAt == null ? 0 : createAt!.hashCode) +
      (updateAt == null ? 0 : updateAt!.hashCode) +
      (deleteAt == null ? 0 : deleteAt!.hashCode) +
      (displayName == null ? 0 : displayName!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (email == null ? 0 : email!.hashCode) +
      (type == null ? 0 : type!.hashCode) +
      (allowedDomains == null ? 0 : allowedDomains!.hashCode) +
      (inviteId == null ? 0 : inviteId!.hashCode) +
      (allowOpenInvite == null ? 0 : allowOpenInvite!.hashCode) +
      (policyId == null ? 0 : policyId!.hashCode);

  @override
  String toString() =>
      'MmTeam[id=$id, createAt=$createAt, updateAt=$updateAt, deleteAt=$deleteAt, displayName=$displayName, name=$name, description=$description, email=$email, type=$type, allowedDomains=$allowedDomains, inviteId=$inviteId, allowOpenInvite=$allowOpenInvite, policyId=$policyId]';

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
    if (displayName != null) {
      _json[r'display_name'] = displayName;
    }
    if (name != null) {
      _json[r'name'] = name;
    }
    if (description != null) {
      _json[r'description'] = description;
    }
    if (email != null) {
      _json[r'email'] = email;
    }
    if (type != null) {
      _json[r'type'] = type;
    }
    if (allowedDomains != null) {
      _json[r'allowed_domains'] = allowedDomains;
    }
    if (inviteId != null) {
      _json[r'invite_id'] = inviteId;
    }
    if (allowOpenInvite != null) {
      _json[r'allow_open_invite'] = allowOpenInvite;
    }
    if (policyId != null) {
      _json[r'policy_id'] = policyId;
    }
    return _json;
  }

  /// Returns a new [MmTeam] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmTeam? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmTeam[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmTeam[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmTeam(
        id: mapValueOfType<String>(json, r'id'),
        createAt: mapValueOfType<int>(json, r'create_at'),
        updateAt: mapValueOfType<int>(json, r'update_at'),
        deleteAt: mapValueOfType<int>(json, r'delete_at'),
        displayName: mapValueOfType<String>(json, r'display_name'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        email: mapValueOfType<String>(json, r'email'),
        type: mapValueOfType<String>(json, r'type'),
        allowedDomains: mapValueOfType<String>(json, r'allowed_domains'),
        inviteId: mapValueOfType<String>(json, r'invite_id'),
        allowOpenInvite: mapValueOfType<bool>(json, r'allow_open_invite'),
        policyId: mapValueOfType<String>(json, r'policy_id'),
      );
    }
    return null;
  }

  static List<MmTeam>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmTeam>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmTeam.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmTeam> mapFromJson(dynamic json) {
    final map = <String, MmTeam>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmTeam.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmTeam-objects as value to a dart map
  static Map<String, List<MmTeam>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmTeam>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmTeam.listFromJson(
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
