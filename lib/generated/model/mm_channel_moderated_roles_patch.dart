//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmChannelModeratedRolesPatch {
  /// Returns a new [MmChannelModeratedRolesPatch] instance.
  MmChannelModeratedRolesPatch({
    this.guests,
    this.members,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? guests;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? members;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmChannelModeratedRolesPatch && other.guests == guests && other.members == members;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (guests == null ? 0 : guests!.hashCode) + (members == null ? 0 : members!.hashCode);

  @override
  String toString() => 'MmChannelModeratedRolesPatch[guests=$guests, members=$members]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (guests != null) {
      _json[r'guests'] = guests;
    }
    if (members != null) {
      _json[r'members'] = members;
    }
    return _json;
  }

  /// Returns a new [MmChannelModeratedRolesPatch] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmChannelModeratedRolesPatch? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmChannelModeratedRolesPatch[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmChannelModeratedRolesPatch[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmChannelModeratedRolesPatch(
        guests: mapValueOfType<bool>(json, r'guests'),
        members: mapValueOfType<bool>(json, r'members'),
      );
    }
    return null;
  }

  static List<MmChannelModeratedRolesPatch>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmChannelModeratedRolesPatch>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmChannelModeratedRolesPatch.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmChannelModeratedRolesPatch> mapFromJson(dynamic json) {
    final map = <String, MmChannelModeratedRolesPatch>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmChannelModeratedRolesPatch.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmChannelModeratedRolesPatch-objects as value to a dart map
  static Map<String, List<MmChannelModeratedRolesPatch>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmChannelModeratedRolesPatch>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmChannelModeratedRolesPatch.listFromJson(
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
