//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class ChannelMemberCountByGroup {
  /// Returns a new [ChannelMemberCountByGroup] instance.
  ChannelMemberCountByGroup({
    this.groupId,
    this.channelMemberCount,
    this.channelMemberTimezonesCount,
  });

  /// ID of the group
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? groupId;

  /// Total number of group members in the channel
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? channelMemberCount;

  /// Total number of unique timezones for the group members in the channel
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? channelMemberTimezonesCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChannelMemberCountByGroup &&
     other.groupId == groupId &&
     other.channelMemberCount == channelMemberCount &&
     other.channelMemberTimezonesCount == channelMemberTimezonesCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (groupId == null ? 0 : groupId!.hashCode) +
    (channelMemberCount == null ? 0 : channelMemberCount!.hashCode) +
    (channelMemberTimezonesCount == null ? 0 : channelMemberTimezonesCount!.hashCode);

  @override
  String toString() => 'ChannelMemberCountByGroup[groupId=$groupId, channelMemberCount=$channelMemberCount, channelMemberTimezonesCount=$channelMemberTimezonesCount]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (groupId != null) {
      _json[r'group_id'] = groupId;
    }
    if (channelMemberCount != null) {
      _json[r'channel_member_count'] = channelMemberCount;
    }
    if (channelMemberTimezonesCount != null) {
      _json[r'channel_member_timezones_count'] = channelMemberTimezonesCount;
    }
    return _json;
  }

  /// Returns a new [ChannelMemberCountByGroup] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChannelMemberCountByGroup? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChannelMemberCountByGroup[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChannelMemberCountByGroup[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChannelMemberCountByGroup(
        groupId: mapValueOfType<String>(json, r'group_id'),
        channelMemberCount: json[r'channel_member_count'] == null
            ? null
            : num.parse(json[r'channel_member_count'].toString()),
        channelMemberTimezonesCount: json[r'channel_member_timezones_count'] == null
            ? null
            : num.parse(json[r'channel_member_timezones_count'].toString()),
      );
    }
    return null;
  }

  static List<ChannelMemberCountByGroup>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChannelMemberCountByGroup>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChannelMemberCountByGroup.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChannelMemberCountByGroup> mapFromJson(dynamic json) {
    final map = <String, ChannelMemberCountByGroup>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChannelMemberCountByGroup.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChannelMemberCountByGroup-objects as value to a dart map
  static Map<String, List<ChannelMemberCountByGroup>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChannelMemberCountByGroup>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChannelMemberCountByGroup.listFromJson(entry.value, growable: growable,);
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

