//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class DataRetentionPolicyForChannel {
  /// Returns a new [DataRetentionPolicyForChannel] instance.
  DataRetentionPolicyForChannel({
    this.channelId,
    this.postDuration,
  });

  /// The channel ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channelId;

  /// The number of days a message will be retained before being deleted by this policy.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? postDuration;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DataRetentionPolicyForChannel &&
     other.channelId == channelId &&
     other.postDuration == postDuration;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (channelId == null ? 0 : channelId!.hashCode) +
    (postDuration == null ? 0 : postDuration!.hashCode);

  @override
  String toString() => 'DataRetentionPolicyForChannel[channelId=$channelId, postDuration=$postDuration]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (channelId != null) {
      _json[r'channel_id'] = channelId;
    }
    if (postDuration != null) {
      _json[r'post_duration'] = postDuration;
    }
    return _json;
  }

  /// Returns a new [DataRetentionPolicyForChannel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DataRetentionPolicyForChannel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DataRetentionPolicyForChannel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DataRetentionPolicyForChannel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DataRetentionPolicyForChannel(
        channelId: mapValueOfType<String>(json, r'channel_id'),
        postDuration: mapValueOfType<int>(json, r'post_duration'),
      );
    }
    return null;
  }

  static List<DataRetentionPolicyForChannel>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DataRetentionPolicyForChannel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DataRetentionPolicyForChannel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DataRetentionPolicyForChannel> mapFromJson(dynamic json) {
    final map = <String, DataRetentionPolicyForChannel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DataRetentionPolicyForChannel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DataRetentionPolicyForChannel-objects as value to a dart map
  static Map<String, List<DataRetentionPolicyForChannel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DataRetentionPolicyForChannel>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DataRetentionPolicyForChannel.listFromJson(entry.value, growable: growable,);
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

