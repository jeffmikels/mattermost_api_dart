//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMChannelData {
  /// Returns a new [MMChannelData] instance.
  MMChannelData({
    this.channel,
    this.member,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MMChannel? channel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MMChannelMember? member;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MMChannelData && other.channel == channel && other.member == member;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (channel == null ? 0 : channel!.hashCode) + (member == null ? 0 : member!.hashCode);

  @override
  String toString() => 'MMChannelData[channel=$channel, member=$member]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (channel != null) {
      _json[r'channel'] = channel;
    }
    if (member != null) {
      _json[r'member'] = member;
    }
    return _json;
  }

  /// Returns a new [MMChannelData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMChannelData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMChannelData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMChannelData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMChannelData(
        channel: MMChannel.fromJson(json[r'channel']),
        member: MMChannelMember.fromJson(json[r'member']),
      );
    }
    return null;
  }

  static List<MMChannelData>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMChannelData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMChannelData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMChannelData> mapFromJson(dynamic json) {
    final map = <String, MMChannelData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMChannelData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMChannelData-objects as value to a dart map
  static Map<String, List<MMChannelData>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMChannelData>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMChannelData.listFromJson(
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
