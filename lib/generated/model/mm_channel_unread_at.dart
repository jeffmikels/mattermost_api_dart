//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmChannelUnreadAt {
  /// Returns a new [MmChannelUnreadAt] instance.
  MmChannelUnreadAt({
    this.teamId,
    this.channelId,
    this.msgCount,
    this.mentionCount,
    this.lastViewedAt,
  });

  /// The ID of the team the channel belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? teamId;

  /// The ID of the channel the user has access to..
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channelId;

  /// No. of messages the user has already read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? msgCount;

  /// No. of mentions the user has within the unread posts of the channel.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mentionCount;

  /// time in milliseconds when the user last viewed the channel.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastViewedAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmChannelUnreadAt &&
          other.teamId == teamId &&
          other.channelId == channelId &&
          other.msgCount == msgCount &&
          other.mentionCount == mentionCount &&
          other.lastViewedAt == lastViewedAt;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (teamId == null ? 0 : teamId!.hashCode) +
      (channelId == null ? 0 : channelId!.hashCode) +
      (msgCount == null ? 0 : msgCount!.hashCode) +
      (mentionCount == null ? 0 : mentionCount!.hashCode) +
      (lastViewedAt == null ? 0 : lastViewedAt!.hashCode);

  @override
  String toString() =>
      'MmChannelUnreadAt[teamId=$teamId, channelId=$channelId, msgCount=$msgCount, mentionCount=$mentionCount, lastViewedAt=$lastViewedAt]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (teamId != null) {
      _json[r'team_id'] = teamId;
    }
    if (channelId != null) {
      _json[r'channel_id'] = channelId;
    }
    if (msgCount != null) {
      _json[r'msg_count'] = msgCount;
    }
    if (mentionCount != null) {
      _json[r'mention_count'] = mentionCount;
    }
    if (lastViewedAt != null) {
      _json[r'last_viewed_at'] = lastViewedAt;
    }
    return _json;
  }

  /// Returns a new [MmChannelUnreadAt] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmChannelUnreadAt? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmChannelUnreadAt[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmChannelUnreadAt[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmChannelUnreadAt(
        teamId: mapValueOfType<String>(json, r'team_id'),
        channelId: mapValueOfType<String>(json, r'channel_id'),
        msgCount: mapValueOfType<int>(json, r'msg_count'),
        mentionCount: mapValueOfType<int>(json, r'mention_count'),
        lastViewedAt: mapValueOfType<int>(json, r'last_viewed_at'),
      );
    }
    return null;
  }

  static List<MmChannelUnreadAt>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmChannelUnreadAt>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmChannelUnreadAt.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmChannelUnreadAt> mapFromJson(dynamic json) {
    final map = <String, MmChannelUnreadAt>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmChannelUnreadAt.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmChannelUnreadAt-objects as value to a dart map
  static Map<String, List<MmChannelUnreadAt>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmChannelUnreadAt>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmChannelUnreadAt.listFromJson(
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
