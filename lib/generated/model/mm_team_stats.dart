//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmTeamStats {
  /// Returns a new [MmTeamStats] instance.
  MmTeamStats({
    this.teamId,
    this.totalMemberCount,
    this.activeMemberCount,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? teamId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalMemberCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? activeMemberCount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmTeamStats &&
          other.teamId == teamId &&
          other.totalMemberCount == totalMemberCount &&
          other.activeMemberCount == activeMemberCount;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (teamId == null ? 0 : teamId!.hashCode) +
      (totalMemberCount == null ? 0 : totalMemberCount!.hashCode) +
      (activeMemberCount == null ? 0 : activeMemberCount!.hashCode);

  @override
  String toString() =>
      'MmTeamStats[teamId=$teamId, totalMemberCount=$totalMemberCount, activeMemberCount=$activeMemberCount]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (teamId != null) {
      _json[r'team_id'] = teamId;
    }
    if (totalMemberCount != null) {
      _json[r'total_member_count'] = totalMemberCount;
    }
    if (activeMemberCount != null) {
      _json[r'active_member_count'] = activeMemberCount;
    }
    return _json;
  }

  /// Returns a new [MmTeamStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmTeamStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmTeamStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmTeamStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmTeamStats(
        teamId: mapValueOfType<String>(json, r'team_id'),
        totalMemberCount: mapValueOfType<int>(json, r'total_member_count'),
        activeMemberCount: mapValueOfType<int>(json, r'active_member_count'),
      );
    }
    return null;
  }

  static List<MmTeamStats>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmTeamStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmTeamStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmTeamStats> mapFromJson(dynamic json) {
    final map = <String, MmTeamStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmTeamStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmTeamStats-objects as value to a dart map
  static Map<String, List<MmTeamStats>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmTeamStats>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmTeamStats.listFromJson(
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
