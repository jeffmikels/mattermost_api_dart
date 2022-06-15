//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmChannelMemberWithTeamData {
  /// Returns a new [MmChannelMemberWithTeamData] instance.
  MmChannelMemberWithTeamData({
    this.channelId,
    this.userId,
    this.roles,
    this.lastViewedAt,
    this.msgCount,
    this.mentionCount,
    this.notifyProps,
    this.lastUpdateAt,
    this.teamDisplayName,
    this.teamName,
    this.teamUpdateAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channelId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? roles;

  /// The time in milliseconds the channel was last viewed by the user
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastViewedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? msgCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mentionCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MmChannelNotifyProps? notifyProps;

  /// The time in milliseconds the channel member was last updated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastUpdateAt;

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
      other is MmChannelMemberWithTeamData &&
          other.channelId == channelId &&
          other.userId == userId &&
          other.roles == roles &&
          other.lastViewedAt == lastViewedAt &&
          other.msgCount == msgCount &&
          other.mentionCount == mentionCount &&
          other.notifyProps == notifyProps &&
          other.lastUpdateAt == lastUpdateAt &&
          other.teamDisplayName == teamDisplayName &&
          other.teamName == teamName &&
          other.teamUpdateAt == teamUpdateAt;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (channelId == null ? 0 : channelId!.hashCode) +
      (userId == null ? 0 : userId!.hashCode) +
      (roles == null ? 0 : roles!.hashCode) +
      (lastViewedAt == null ? 0 : lastViewedAt!.hashCode) +
      (msgCount == null ? 0 : msgCount!.hashCode) +
      (mentionCount == null ? 0 : mentionCount!.hashCode) +
      (notifyProps == null ? 0 : notifyProps!.hashCode) +
      (lastUpdateAt == null ? 0 : lastUpdateAt!.hashCode) +
      (teamDisplayName == null ? 0 : teamDisplayName!.hashCode) +
      (teamName == null ? 0 : teamName!.hashCode) +
      (teamUpdateAt == null ? 0 : teamUpdateAt!.hashCode);

  @override
  String toString() =>
      'MmChannelMemberWithTeamData[channelId=$channelId, userId=$userId, roles=$roles, lastViewedAt=$lastViewedAt, msgCount=$msgCount, mentionCount=$mentionCount, notifyProps=$notifyProps, lastUpdateAt=$lastUpdateAt, teamDisplayName=$teamDisplayName, teamName=$teamName, teamUpdateAt=$teamUpdateAt]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (channelId != null) {
      _json[r'channel_id'] = channelId;
    }
    if (userId != null) {
      _json[r'user_id'] = userId;
    }
    if (roles != null) {
      _json[r'roles'] = roles;
    }
    if (lastViewedAt != null) {
      _json[r'last_viewed_at'] = lastViewedAt;
    }
    if (msgCount != null) {
      _json[r'msg_count'] = msgCount;
    }
    if (mentionCount != null) {
      _json[r'mention_count'] = mentionCount;
    }
    if (notifyProps != null) {
      _json[r'notify_props'] = notifyProps;
    }
    if (lastUpdateAt != null) {
      _json[r'last_update_at'] = lastUpdateAt;
    }
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

  /// Returns a new [MmChannelMemberWithTeamData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmChannelMemberWithTeamData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmChannelMemberWithTeamData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmChannelMemberWithTeamData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmChannelMemberWithTeamData(
        channelId: mapValueOfType<String>(json, r'channel_id'),
        userId: mapValueOfType<String>(json, r'user_id'),
        roles: mapValueOfType<String>(json, r'roles'),
        lastViewedAt: mapValueOfType<int>(json, r'last_viewed_at'),
        msgCount: mapValueOfType<int>(json, r'msg_count'),
        mentionCount: mapValueOfType<int>(json, r'mention_count'),
        notifyProps: MmChannelNotifyProps.fromJson(json[r'notify_props']),
        lastUpdateAt: mapValueOfType<int>(json, r'last_update_at'),
        teamDisplayName: mapValueOfType<String>(json, r'team_display_name'),
        teamName: mapValueOfType<String>(json, r'team_name'),
        teamUpdateAt: mapValueOfType<int>(json, r'team_update_at'),
      );
    }
    return null;
  }

  static List<MmChannelMemberWithTeamData>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmChannelMemberWithTeamData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmChannelMemberWithTeamData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmChannelMemberWithTeamData> mapFromJson(dynamic json) {
    final map = <String, MmChannelMemberWithTeamData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmChannelMemberWithTeamData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmChannelMemberWithTeamData-objects as value to a dart map
  static Map<String, List<MmChannelMemberWithTeamData>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmChannelMemberWithTeamData>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmChannelMemberWithTeamData.listFromJson(
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
