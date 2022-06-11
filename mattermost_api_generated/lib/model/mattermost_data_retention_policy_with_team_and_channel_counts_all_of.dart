//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostDataRetentionPolicyWithTeamAndChannelCountsAllOf {
  /// Returns a new [MattermostDataRetentionPolicyWithTeamAndChannelCountsAllOf] instance.
  MattermostDataRetentionPolicyWithTeamAndChannelCountsAllOf({
    this.teamCount,
    this.channelCount,
  });

  /// The number of teams to which this policy is applied.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? teamCount;

  /// The number of channels to which this policy is applied.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? channelCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MattermostDataRetentionPolicyWithTeamAndChannelCountsAllOf &&
     other.teamCount == teamCount &&
     other.channelCount == channelCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (teamCount == null ? 0 : teamCount!.hashCode) +
    (channelCount == null ? 0 : channelCount!.hashCode);

  @override
  String toString() => 'MattermostDataRetentionPolicyWithTeamAndChannelCountsAllOf[teamCount=$teamCount, channelCount=$channelCount]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (teamCount != null) {
      _json[r'team_count'] = teamCount;
    }
    if (channelCount != null) {
      _json[r'channel_count'] = channelCount;
    }
    return _json;
  }

  /// Returns a new [MattermostDataRetentionPolicyWithTeamAndChannelCountsAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostDataRetentionPolicyWithTeamAndChannelCountsAllOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostDataRetentionPolicyWithTeamAndChannelCountsAllOf[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostDataRetentionPolicyWithTeamAndChannelCountsAllOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostDataRetentionPolicyWithTeamAndChannelCountsAllOf(
        teamCount: mapValueOfType<int>(json, r'team_count'),
        channelCount: mapValueOfType<int>(json, r'channel_count'),
      );
    }
    return null;
  }

  static List<MattermostDataRetentionPolicyWithTeamAndChannelCountsAllOf>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MattermostDataRetentionPolicyWithTeamAndChannelCountsAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostDataRetentionPolicyWithTeamAndChannelCountsAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostDataRetentionPolicyWithTeamAndChannelCountsAllOf> mapFromJson(dynamic json) {
    final map = <String, MattermostDataRetentionPolicyWithTeamAndChannelCountsAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostDataRetentionPolicyWithTeamAndChannelCountsAllOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostDataRetentionPolicyWithTeamAndChannelCountsAllOf-objects as value to a dart map
  static Map<String, List<MattermostDataRetentionPolicyWithTeamAndChannelCountsAllOf>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MattermostDataRetentionPolicyWithTeamAndChannelCountsAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostDataRetentionPolicyWithTeamAndChannelCountsAllOf.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

