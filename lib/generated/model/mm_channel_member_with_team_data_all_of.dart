//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmChannelMemberWithTeamDataAllOf {
  /// Returns a new [MmChannelMemberWithTeamDataAllOf] instance.
  MmChannelMemberWithTeamDataAllOf({
    this.teamDisplayName,
    this.teamName,
    this.teamUpdateAt,
  });

  /// The display name of the team to which this channel belongs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? teamDisplayName;

  /// The name of the team to which this channel belongs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? teamName;

  /// The time at which the team to which this channel belongs was last updated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? teamUpdateAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmChannelMemberWithTeamDataAllOf &&
          other.teamDisplayName == teamDisplayName &&
          other.teamName == teamName &&
          other.teamUpdateAt == teamUpdateAt;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (teamDisplayName == null ? 0 : teamDisplayName!.hashCode) +
      (teamName == null ? 0 : teamName!.hashCode) +
      (teamUpdateAt == null ? 0 : teamUpdateAt!.hashCode);

  @override
  String toString() =>
      'MmChannelMemberWithTeamDataAllOf[teamDisplayName=$teamDisplayName, teamName=$teamName, teamUpdateAt=$teamUpdateAt]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (teamDisplayName != null) {
      _json[r'team_display_name'] = teamDisplayName;
    }
    if (teamName != null) {
      _json[r'team_name'] = teamName;
    }
    if (teamUpdateAt != null) {
      _json[r'team_update_at'] = teamUpdateAt;
    }
    return _json;
  }

  /// Returns a new [MmChannelMemberWithTeamDataAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmChannelMemberWithTeamDataAllOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmChannelMemberWithTeamDataAllOf[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmChannelMemberWithTeamDataAllOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmChannelMemberWithTeamDataAllOf(
        teamDisplayName: mapValueOfType<String>(json, r'team_display_name'),
        teamName: mapValueOfType<String>(json, r'team_name'),
        teamUpdateAt: mapValueOfType<int>(json, r'team_update_at'),
      );
    }
    return null;
  }

  static List<MmChannelMemberWithTeamDataAllOf>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmChannelMemberWithTeamDataAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmChannelMemberWithTeamDataAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmChannelMemberWithTeamDataAllOf> mapFromJson(dynamic json) {
    final map = <String, MmChannelMemberWithTeamDataAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmChannelMemberWithTeamDataAllOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmChannelMemberWithTeamDataAllOf-objects as value to a dart map
  static Map<String, List<MmChannelMemberWithTeamDataAllOf>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmChannelMemberWithTeamDataAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmChannelMemberWithTeamDataAllOf.listFromJson(
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
