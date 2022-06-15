//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmGroupWithSchemeAdmin {
  /// Returns a new [MmGroupWithSchemeAdmin] instance.
  MmGroupWithSchemeAdmin({
    this.group,
    this.schemeAdmin,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MmGroup? group;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? schemeAdmin;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmGroupWithSchemeAdmin && other.group == group && other.schemeAdmin == schemeAdmin;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (group == null ? 0 : group!.hashCode) + (schemeAdmin == null ? 0 : schemeAdmin!.hashCode);

  @override
  String toString() => 'MmGroupWithSchemeAdmin[group=$group, schemeAdmin=$schemeAdmin]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (group != null) {
      _json[r'group'] = group;
    }
    if (schemeAdmin != null) {
      _json[r'scheme_admin'] = schemeAdmin;
    }
    return _json;
  }

  /// Returns a new [MmGroupWithSchemeAdmin] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmGroupWithSchemeAdmin? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmGroupWithSchemeAdmin[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmGroupWithSchemeAdmin[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmGroupWithSchemeAdmin(
        group: MmGroup.fromJson(json[r'group']),
        schemeAdmin: mapValueOfType<bool>(json, r'scheme_admin'),
      );
    }
    return null;
  }

  static List<MmGroupWithSchemeAdmin>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmGroupWithSchemeAdmin>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmGroupWithSchemeAdmin.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmGroupWithSchemeAdmin> mapFromJson(dynamic json) {
    final map = <String, MmGroupWithSchemeAdmin>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmGroupWithSchemeAdmin.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmGroupWithSchemeAdmin-objects as value to a dart map
  static Map<String, List<MmGroupWithSchemeAdmin>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmGroupWithSchemeAdmin>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmGroupWithSchemeAdmin.listFromJson(
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
