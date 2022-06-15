//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMLDAPGroup {
  /// Returns a new [MMLDAPGroup] instance.
  MMLDAPGroup({
    this.hasSyncables,
    this.mattermostGroupId,
    this.primaryKey,
    this.name,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasSyncables;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mattermostGroupId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? primaryKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMLDAPGroup &&
          other.hasSyncables == hasSyncables &&
          other.mattermostGroupId == mattermostGroupId &&
          other.primaryKey == primaryKey &&
          other.name == name;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (hasSyncables == null ? 0 : hasSyncables!.hashCode) +
      (mattermostGroupId == null ? 0 : mattermostGroupId!.hashCode) +
      (primaryKey == null ? 0 : primaryKey!.hashCode) +
      (name == null ? 0 : name!.hashCode);

  @override
  String toString() =>
      'MMLDAPGroup[hasSyncables=$hasSyncables, mattermostGroupId=$mattermostGroupId, primaryKey=$primaryKey, name=$name]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (hasSyncables != null) {
      _json[r'has_syncables'] = hasSyncables;
    }
    if (mattermostGroupId != null) {
      _json[r'mattermost_group_id'] = mattermostGroupId;
    }
    if (primaryKey != null) {
      _json[r'primary_key'] = primaryKey;
    }
    if (name != null) {
      _json[r'name'] = name;
    }
    return _json;
  }

  /// Returns a new [MMLDAPGroup] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMLDAPGroup? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMLDAPGroup[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMLDAPGroup[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMLDAPGroup(
        hasSyncables: mapValueOfType<bool>(json, r'has_syncables'),
        mattermostGroupId: mapValueOfType<String>(json, r'mattermost_group_id'),
        primaryKey: mapValueOfType<String>(json, r'primary_key'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<MMLDAPGroup>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMLDAPGroup>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMLDAPGroup.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMLDAPGroup> mapFromJson(dynamic json) {
    final map = <String, MMLDAPGroup>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMLDAPGroup.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMLDAPGroup-objects as value to a dart map
  static Map<String, List<MMLDAPGroup>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMLDAPGroup>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMLDAPGroup.listFromJson(
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
