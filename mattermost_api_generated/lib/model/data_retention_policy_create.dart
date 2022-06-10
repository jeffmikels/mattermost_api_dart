//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class DataRetentionPolicyCreate {
  /// Returns a new [DataRetentionPolicyCreate] instance.
  DataRetentionPolicyCreate({
    required this.displayName,
    required this.postDuration,
    this.teamIds = const [],
    this.channelIds = const [],
  });

  /// The display name for this retention policy.
  String displayName;

  /// The number of days a message will be retained before being deleted by this policy. If this value is less than 0, the policy has infinite retention (i.e. messages are never deleted). 
  int postDuration;

  /// The IDs of the teams to which this policy should be applied.
  List<String> teamIds;

  /// The IDs of the channels to which this policy should be applied.
  List<String> channelIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DataRetentionPolicyCreate &&
     other.displayName == displayName &&
     other.postDuration == postDuration &&
     other.teamIds == teamIds &&
     other.channelIds == channelIds;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (displayName.hashCode) +
    (postDuration.hashCode) +
    (teamIds.hashCode) +
    (channelIds.hashCode);

  @override
  String toString() => 'DataRetentionPolicyCreate[displayName=$displayName, postDuration=$postDuration, teamIds=$teamIds, channelIds=$channelIds]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'display_name'] = displayName;
      _json[r'post_duration'] = postDuration;
      _json[r'team_ids'] = teamIds;
      _json[r'channel_ids'] = channelIds;
    return _json;
  }

  /// Returns a new [DataRetentionPolicyCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DataRetentionPolicyCreate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DataRetentionPolicyCreate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DataRetentionPolicyCreate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DataRetentionPolicyCreate(
        displayName: mapValueOfType<String>(json, r'display_name')!,
        postDuration: mapValueOfType<int>(json, r'post_duration')!,
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

  static List<DataRetentionPolicyCreate>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DataRetentionPolicyCreate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DataRetentionPolicyCreate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DataRetentionPolicyCreate> mapFromJson(dynamic json) {
    final map = <String, DataRetentionPolicyCreate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DataRetentionPolicyCreate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DataRetentionPolicyCreate-objects as value to a dart map
  static Map<String, List<DataRetentionPolicyCreate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DataRetentionPolicyCreate>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DataRetentionPolicyCreate.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'display_name',
    'post_duration',
  };
}

