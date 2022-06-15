//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmChannelModerationPatch {
  /// Returns a new [MmChannelModerationPatch] instance.
  MmChannelModerationPatch({
    this.name,
    this.roles,
  });

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
  MmChannelModeratedRolesPatch? roles;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MmChannelModerationPatch && other.name == name && other.roles == roles;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name == null ? 0 : name!.hashCode) + (roles == null ? 0 : roles!.hashCode);

  @override
  String toString() => 'MmChannelModerationPatch[name=$name, roles=$roles]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (name != null) {
      _json[r'name'] = name;
    }
    if (roles != null) {
      _json[r'roles'] = roles;
    }
    return _json;
  }

  /// Returns a new [MmChannelModerationPatch] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmChannelModerationPatch? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmChannelModerationPatch[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmChannelModerationPatch[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmChannelModerationPatch(
        name: mapValueOfType<String>(json, r'name'),
        roles: MmChannelModeratedRolesPatch.fromJson(json[r'roles']),
      );
    }
    return null;
  }

  static List<MmChannelModerationPatch>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmChannelModerationPatch>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmChannelModerationPatch.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmChannelModerationPatch> mapFromJson(dynamic json) {
    final map = <String, MmChannelModerationPatch>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmChannelModerationPatch.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmChannelModerationPatch-objects as value to a dart map
  static Map<String, List<MmChannelModerationPatch>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmChannelModerationPatch>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmChannelModerationPatch.listFromJson(
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
