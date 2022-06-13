//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostChannelStats {
  /// Returns a new [MattermostChannelStats] instance.
  MattermostChannelStats({
    this.channelId,
    this.memberCount,
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
  int? memberCount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MattermostChannelStats && other.channelId == channelId && other.memberCount == memberCount;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (channelId == null ? 0 : channelId!.hashCode) + (memberCount == null ? 0 : memberCount!.hashCode);

  @override
  String toString() => 'MattermostChannelStats[channelId=$channelId, memberCount=$memberCount]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (channelId != null) {
      _json[r'channel_id'] = channelId;
    }
    if (memberCount != null) {
      _json[r'member_count'] = memberCount;
    }
    return _json;
  }

  /// Returns a new [MattermostChannelStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostChannelStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostChannelStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostChannelStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostChannelStats(
        channelId: mapValueOfType<String>(json, r'channel_id'),
        memberCount: mapValueOfType<int>(json, r'member_count'),
      );
    }
    return null;
  }

  static List<MattermostChannelStats>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MattermostChannelStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostChannelStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostChannelStats> mapFromJson(dynamic json) {
    final map = <String, MattermostChannelStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostChannelStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostChannelStats-objects as value to a dart map
  static Map<String, List<MattermostChannelStats>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MattermostChannelStats>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostChannelStats.listFromJson(
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
