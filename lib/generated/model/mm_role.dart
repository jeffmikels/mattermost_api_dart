//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmRole {
  /// Returns a new [MmRole] instance.
  MmRole({
    this.id,
    this.name,
    this.displayName,
    this.description,
    this.permissions = const [],
    this.schemeManaged,
  });

  /// The unique identifier of the role.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The unique name of the role, used when assigning roles to users/groups in contexts.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The human readable name for the role.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  /// A human readable description of the role.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// A list of the unique names of the permissions this role grants.
  List<String> permissions;

  /// indicates if this role is managed by a scheme (true), or is a custom stand-alone role (false).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? schemeManaged;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmRole &&
          other.id == id &&
          other.name == name &&
          other.displayName == displayName &&
          other.description == description &&
          other.permissions == permissions &&
          other.schemeManaged == schemeManaged;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (displayName == null ? 0 : displayName!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (permissions.hashCode) +
      (schemeManaged == null ? 0 : schemeManaged!.hashCode);

  @override
  String toString() =>
      'MmRole[id=$id, name=$name, displayName=$displayName, description=$description, permissions=$permissions, schemeManaged=$schemeManaged]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (name != null) {
      _json[r'name'] = name;
    }
    if (displayName != null) {
      _json[r'display_name'] = displayName;
    }
    if (description != null) {
      _json[r'description'] = description;
    }
    _json[r'permissions'] = permissions;
    if (schemeManaged != null) {
      _json[r'scheme_managed'] = schemeManaged;
    }
    return _json;
  }

  /// Returns a new [MmRole] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmRole? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmRole[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmRole[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmRole(
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        displayName: mapValueOfType<String>(json, r'display_name'),
        description: mapValueOfType<String>(json, r'description'),
        permissions: json[r'permissions'] is List ? (json[r'permissions'] as List).cast<String>() : const [],
        schemeManaged: mapValueOfType<bool>(json, r'scheme_managed'),
      );
    }
    return null;
  }

  static List<MmRole>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmRole>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmRole.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmRole> mapFromJson(dynamic json) {
    final map = <String, MmRole>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmRole.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmRole-objects as value to a dart map
  static Map<String, List<MmRole>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmRole>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmRole.listFromJson(
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
