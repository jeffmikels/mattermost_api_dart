//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmTeamMap {
  /// Returns a new [MmTeamMap] instance.
  MmTeamMap({
    this.teamId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MmTeam? teamId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MmTeamMap && other.teamId == teamId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (teamId == null ? 0 : teamId!.hashCode);

  @override
  String toString() => 'MmTeamMap[teamId=$teamId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (teamId != null) {
      _json[r'team_id'] = teamId;
    }
    return _json;
  }

  /// Returns a new [MmTeamMap] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmTeamMap? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmTeamMap[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmTeamMap[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmTeamMap(
        teamId: MmTeam.fromJson(json[r'team_id']),
      );
    }
    return null;
  }

  static List<MmTeamMap>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmTeamMap>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmTeamMap.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmTeamMap> mapFromJson(dynamic json) {
    final map = <String, MmTeamMap>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmTeamMap.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmTeamMap-objects as value to a dart map
  static Map<String, List<MmTeamMap>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmTeamMap>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmTeamMap.listFromJson(
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
