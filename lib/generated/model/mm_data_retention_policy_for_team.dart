//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmDataRetentionPolicyForTeam {
  /// Returns a new [MmDataRetentionPolicyForTeam] instance.
  MmDataRetentionPolicyForTeam({
    this.teamId,
    this.postDuration,
  });

  /// The team ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? teamId;

  /// The number of days a message will be retained before being deleted by this policy.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? postDuration;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmDataRetentionPolicyForTeam && other.teamId == teamId && other.postDuration == postDuration;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (teamId == null ? 0 : teamId!.hashCode) + (postDuration == null ? 0 : postDuration!.hashCode);

  @override
  String toString() => 'MmDataRetentionPolicyForTeam[teamId=$teamId, postDuration=$postDuration]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (teamId != null) {
      _json[r'team_id'] = teamId;
    }
    if (postDuration != null) {
      _json[r'post_duration'] = postDuration;
    }
    return _json;
  }

  /// Returns a new [MmDataRetentionPolicyForTeam] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmDataRetentionPolicyForTeam? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmDataRetentionPolicyForTeam[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmDataRetentionPolicyForTeam[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmDataRetentionPolicyForTeam(
        teamId: mapValueOfType<String>(json, r'team_id'),
        postDuration: mapValueOfType<int>(json, r'post_duration'),
      );
    }
    return null;
  }

  static List<MmDataRetentionPolicyForTeam>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmDataRetentionPolicyForTeam>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmDataRetentionPolicyForTeam.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmDataRetentionPolicyForTeam> mapFromJson(dynamic json) {
    final map = <String, MmDataRetentionPolicyForTeam>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmDataRetentionPolicyForTeam.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmDataRetentionPolicyForTeam-objects as value to a dart map
  static Map<String, List<MmDataRetentionPolicyForTeam>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmDataRetentionPolicyForTeam>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmDataRetentionPolicyForTeam.listFromJson(
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
