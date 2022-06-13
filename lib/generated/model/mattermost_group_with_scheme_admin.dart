//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostGroupWithSchemeAdmin {
  /// Returns a new [MattermostGroupWithSchemeAdmin] instance.
  MattermostGroupWithSchemeAdmin({
    this.group,
    this.schemeAdmin,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MattermostGroup? group;

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
      other is MattermostGroupWithSchemeAdmin && other.group == group && other.schemeAdmin == schemeAdmin;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (group == null ? 0 : group!.hashCode) + (schemeAdmin == null ? 0 : schemeAdmin!.hashCode);

  @override
  String toString() => 'MattermostGroupWithSchemeAdmin[group=$group, schemeAdmin=$schemeAdmin]';

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

  /// Returns a new [MattermostGroupWithSchemeAdmin] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostGroupWithSchemeAdmin? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostGroupWithSchemeAdmin[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostGroupWithSchemeAdmin[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostGroupWithSchemeAdmin(
        group: MattermostGroup.fromJson(json[r'group']),
        schemeAdmin: mapValueOfType<bool>(json, r'scheme_admin'),
      );
    }
    return null;
  }

  static List<MattermostGroupWithSchemeAdmin>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MattermostGroupWithSchemeAdmin>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostGroupWithSchemeAdmin.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostGroupWithSchemeAdmin> mapFromJson(dynamic json) {
    final map = <String, MattermostGroupWithSchemeAdmin>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostGroupWithSchemeAdmin.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostGroupWithSchemeAdmin-objects as value to a dart map
  static Map<String, List<MattermostGroupWithSchemeAdmin>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MattermostGroupWithSchemeAdmin>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostGroupWithSchemeAdmin.listFromJson(
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
