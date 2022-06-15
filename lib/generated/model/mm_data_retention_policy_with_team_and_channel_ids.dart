//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmDataRetentionPolicyWithTeamAndChannelIds {
  /// Returns a new [MmDataRetentionPolicyWithTeamAndChannelIds] instance.
  MmDataRetentionPolicyWithTeamAndChannelIds({
    this.displayName,
    this.postDuration,
    this.teamIds = const [],
    this.channelIds = const [],
  });

  /// The display name for this retention policy.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  /// The number of days a message will be retained before being deleted by this policy. If this value is less than 0, the policy has infinite retention (i.e. messages are never deleted).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? postDuration;

  /// The IDs of the teams to which this policy should be applied.
  List<String> teamIds;

  /// The IDs of the channels to which this policy should be applied.
  List<String> channelIds;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmDataRetentionPolicyWithTeamAndChannelIds &&
          other.displayName == displayName &&
          other.postDuration == postDuration &&
          other.teamIds == teamIds &&
          other.channelIds == channelIds;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (displayName == null ? 0 : displayName!.hashCode) +
      (postDuration == null ? 0 : postDuration!.hashCode) +
      (teamIds.hashCode) +
      (channelIds.hashCode);

  @override
  String toString() =>
      'MmDataRetentionPolicyWithTeamAndChannelIds[displayName=$displayName, postDuration=$postDuration, teamIds=$teamIds, channelIds=$channelIds]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (displayName != null) {
      _json[r'display_name'] = displayName;
    }
    if (postDuration != null) {
      _json[r'post_duration'] = postDuration;
    }
    _json[r'team_ids'] = teamIds;
    _json[r'channel_ids'] = channelIds;
    return _json;
  }

  /// Returns a new [MmDataRetentionPolicyWithTeamAndChannelIds] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmDataRetentionPolicyWithTeamAndChannelIds? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MmDataRetentionPolicyWithTeamAndChannelIds[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MmDataRetentionPolicyWithTeamAndChannelIds[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmDataRetentionPolicyWithTeamAndChannelIds(
        displayName: mapValueOfType<String>(json, r'display_name'),
        postDuration: mapValueOfType<int>(json, r'post_duration'),
        teamIds: json[r'team_ids'] is List ? (json[r'team_ids'] as List).cast<String>() : const [],
        channelIds: json[r'channel_ids'] is List ? (json[r'channel_ids'] as List).cast<String>() : const [],
      );
    }
    return null;
  }

  static List<MmDataRetentionPolicyWithTeamAndChannelIds>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmDataRetentionPolicyWithTeamAndChannelIds>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmDataRetentionPolicyWithTeamAndChannelIds.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmDataRetentionPolicyWithTeamAndChannelIds> mapFromJson(dynamic json) {
    final map = <String, MmDataRetentionPolicyWithTeamAndChannelIds>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmDataRetentionPolicyWithTeamAndChannelIds.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmDataRetentionPolicyWithTeamAndChannelIds-objects as value to a dart map
  static Map<String, List<MmDataRetentionPolicyWithTeamAndChannelIds>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmDataRetentionPolicyWithTeamAndChannelIds>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmDataRetentionPolicyWithTeamAndChannelIds.listFromJson(
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
