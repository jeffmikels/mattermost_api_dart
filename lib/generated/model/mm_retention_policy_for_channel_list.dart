//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMRetentionPolicyForChannelList {
  /// Returns a new [MMRetentionPolicyForChannelList] instance.
  MMRetentionPolicyForChannelList({
    this.policies = const [],
    this.totalCount,
  });

  /// The list of channel policies.
  List<MMDataRetentionPolicyForChannel> policies;

  /// The total number of channel policies.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalCount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMRetentionPolicyForChannelList && other.policies == policies && other.totalCount == totalCount;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (policies.hashCode) + (totalCount == null ? 0 : totalCount!.hashCode);

  @override
  String toString() => 'MMRetentionPolicyForChannelList[policies=$policies, totalCount=$totalCount]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'policies'] = policies;
    if (totalCount != null) {
      _json[r'total_count'] = totalCount;
    }
    return _json;
  }

  /// Returns a new [MMRetentionPolicyForChannelList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMRetentionPolicyForChannelList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMRetentionPolicyForChannelList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMRetentionPolicyForChannelList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMRetentionPolicyForChannelList(
        policies: MMDataRetentionPolicyForChannel.listFromJson(json[r'policies']) ?? const [],
        totalCount: mapValueOfType<int>(json, r'total_count'),
      );
    }
    return null;
  }

  static List<MMRetentionPolicyForChannelList>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMRetentionPolicyForChannelList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMRetentionPolicyForChannelList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMRetentionPolicyForChannelList> mapFromJson(dynamic json) {
    final map = <String, MMRetentionPolicyForChannelList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMRetentionPolicyForChannelList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMRetentionPolicyForChannelList-objects as value to a dart map
  static Map<String, List<MMRetentionPolicyForChannelList>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMRetentionPolicyForChannelList>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMRetentionPolicyForChannelList.listFromJson(
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
