//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmSearchUsersRequest {
  /// Returns a new [MmSearchUsersRequest] instance.
  MmSearchUsersRequest({
    required this.term,
    this.teamId,
    this.notInTeamId,
    this.inChannelId,
    this.notInChannelId,
    this.inGroupId,
    this.groupConstrained,
    this.allowInactive,
    this.withoutTeam,
    this.limit = 100,
  });

  /// The term to match against username, full name, nickname and email
  String term;

  /// If provided, only search users on this team
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? teamId;

  /// If provided, only search users not on this team
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? notInTeamId;

  /// If provided, only search users in this channel
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inChannelId;

  /// If provided, only search users not in this channel. Must specifiy `team_id` when using this option
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? notInChannelId;

  /// If provided, only search users in this group. Must have `manage_system` permission.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inGroupId;

  /// When used with `not_in_channel_id` or `not_in_team_id`, returns only the users that are allowed to join the channel or team based on its group constrains.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? groupConstrained;

  /// When `true`, include deactivated users in the results
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? allowInactive;

  /// Set this to `true` if you would like to search for users that are not on a team. This option takes precendence over `team_id`, `in_channel_id`, and `not_in_channel_id`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? withoutTeam;

  /// The maximum number of users to return in the results  __Available as of server version 5.6. Defaults to `100` if not provided or on an earlier server version.__
  int limit;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmSearchUsersRequest &&
          other.term == term &&
          other.teamId == teamId &&
          other.notInTeamId == notInTeamId &&
          other.inChannelId == inChannelId &&
          other.notInChannelId == notInChannelId &&
          other.inGroupId == inGroupId &&
          other.groupConstrained == groupConstrained &&
          other.allowInactive == allowInactive &&
          other.withoutTeam == withoutTeam &&
          other.limit == limit;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (term.hashCode) +
      (teamId == null ? 0 : teamId!.hashCode) +
      (notInTeamId == null ? 0 : notInTeamId!.hashCode) +
      (inChannelId == null ? 0 : inChannelId!.hashCode) +
      (notInChannelId == null ? 0 : notInChannelId!.hashCode) +
      (inGroupId == null ? 0 : inGroupId!.hashCode) +
      (groupConstrained == null ? 0 : groupConstrained!.hashCode) +
      (allowInactive == null ? 0 : allowInactive!.hashCode) +
      (withoutTeam == null ? 0 : withoutTeam!.hashCode) +
      (limit.hashCode);

  @override
  String toString() =>
      'MmSearchUsersRequest[term=$term, teamId=$teamId, notInTeamId=$notInTeamId, inChannelId=$inChannelId, notInChannelId=$notInChannelId, inGroupId=$inGroupId, groupConstrained=$groupConstrained, allowInactive=$allowInactive, withoutTeam=$withoutTeam, limit=$limit]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'term'] = term;
    if (teamId != null) {
      _json[r'team_id'] = teamId;
    }
    if (notInTeamId != null) {
      _json[r'not_in_team_id'] = notInTeamId;
    }
    if (inChannelId != null) {
      _json[r'in_channel_id'] = inChannelId;
    }
    if (notInChannelId != null) {
      _json[r'not_in_channel_id'] = notInChannelId;
    }
    if (inGroupId != null) {
      _json[r'in_group_id'] = inGroupId;
    }
    if (groupConstrained != null) {
      _json[r'group_constrained'] = groupConstrained;
    }
    if (allowInactive != null) {
      _json[r'allow_inactive'] = allowInactive;
    }
    if (withoutTeam != null) {
      _json[r'without_team'] = withoutTeam;
    }
    _json[r'limit'] = limit;
    return _json;
  }

  /// Returns a new [MmSearchUsersRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmSearchUsersRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmSearchUsersRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmSearchUsersRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmSearchUsersRequest(
        term: mapValueOfType<String>(json, r'term')!,
        teamId: mapValueOfType<String>(json, r'team_id'),
        notInTeamId: mapValueOfType<String>(json, r'not_in_team_id'),
        inChannelId: mapValueOfType<String>(json, r'in_channel_id'),
        notInChannelId: mapValueOfType<String>(json, r'not_in_channel_id'),
        inGroupId: mapValueOfType<String>(json, r'in_group_id'),
        groupConstrained: mapValueOfType<bool>(json, r'group_constrained'),
        allowInactive: mapValueOfType<bool>(json, r'allow_inactive'),
        withoutTeam: mapValueOfType<bool>(json, r'without_team'),
        limit: mapValueOfType<int>(json, r'limit') ?? 100,
      );
    }
    return null;
  }

  static List<MmSearchUsersRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmSearchUsersRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmSearchUsersRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmSearchUsersRequest> mapFromJson(dynamic json) {
    final map = <String, MmSearchUsersRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSearchUsersRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmSearchUsersRequest-objects as value to a dart map
  static Map<String, List<MmSearchUsersRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmSearchUsersRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSearchUsersRequest.listFromJson(
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
  static const requiredKeys = <String>{
    'term',
  };
}
