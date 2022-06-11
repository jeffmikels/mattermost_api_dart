//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostDataRetentionPolicyWithTeamAndChannelIdsAllOf {
  /// Returns a new [MattermostDataRetentionPolicyWithTeamAndChannelIdsAllOf] instance.
  MattermostDataRetentionPolicyWithTeamAndChannelIdsAllOf({
    this.teamIds = const [],
    this.channelIds = const [],
  });

  /// The IDs of the teams to which this policy should be applied.
  List<String> teamIds;

  /// The IDs of the channels to which this policy should be applied.
  List<String> channelIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MattermostDataRetentionPolicyWithTeamAndChannelIdsAllOf &&
     other.teamIds == teamIds &&
     other.channelIds == channelIds;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (teamIds.hashCode) +
    (channelIds.hashCode);

  @override
  String toString() => 'MattermostDataRetentionPolicyWithTeamAndChannelIdsAllOf[teamIds=$teamIds, channelIds=$channelIds]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'team_ids'] = teamIds;
      _json[r'channel_ids'] = channelIds;
    return _json;
  }

  /// Returns a new [MattermostDataRetentionPolicyWithTeamAndChannelIdsAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostDataRetentionPolicyWithTeamAndChannelIdsAllOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostDataRetentionPolicyWithTeamAndChannelIdsAllOf[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostDataRetentionPolicyWithTeamAndChannelIdsAllOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostDataRetentionPolicyWithTeamAndChannelIdsAllOf(
        teamIds: json[r'team_ids'] is List
            ? (json[r'team_ids'] as List).cast<String>()
            : const [],
        channelIds: json[r'channel_ids'] is List
            ? (json[r'channel_ids'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<MattermostDataRetentionPolicyWithTeamAndChannelIdsAllOf>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MattermostDataRetentionPolicyWithTeamAndChannelIdsAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostDataRetentionPolicyWithTeamAndChannelIdsAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostDataRetentionPolicyWithTeamAndChannelIdsAllOf> mapFromJson(dynamic json) {
    final map = <String, MattermostDataRetentionPolicyWithTeamAndChannelIdsAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostDataRetentionPolicyWithTeamAndChannelIdsAllOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostDataRetentionPolicyWithTeamAndChannelIdsAllOf-objects as value to a dart map
  static Map<String, List<MattermostDataRetentionPolicyWithTeamAndChannelIdsAllOf>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MattermostDataRetentionPolicyWithTeamAndChannelIdsAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostDataRetentionPolicyWithTeamAndChannelIdsAllOf.listFromJson(entry.value, growable: growable,);
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

