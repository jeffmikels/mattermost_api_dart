//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmSearchChannelsForRetentionPolicyRequest {
  /// Returns a new [MmSearchChannelsForRetentionPolicyRequest] instance.
  MmSearchChannelsForRetentionPolicyRequest({
    this.term,
    this.teamIds = const [],
    this.public,
    this.private,
    this.deleted,
  });

  /// The string to search in the channel name, display name, and purpose.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? term;

  /// Filters results to channels belonging to the given team ids
  List<String> teamIds;

  /// Filters results to only return Public / Open channels, can be used in conjunction with `private` to return both `public` and `private` channels
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? public;

  /// Filters results to only return Private channels, can be used in conjunction with `public` to return both `private` and `public` channels
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? private;

  /// Filters results to only return deleted / archived channels
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deleted;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmSearchChannelsForRetentionPolicyRequest &&
          other.term == term &&
          other.teamIds == teamIds &&
          other.public == public &&
          other.private == private &&
          other.deleted == deleted;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (term == null ? 0 : term!.hashCode) +
      (teamIds.hashCode) +
      (public == null ? 0 : public!.hashCode) +
      (private == null ? 0 : private!.hashCode) +
      (deleted == null ? 0 : deleted!.hashCode);

  @override
  String toString() =>
      'MmSearchChannelsForRetentionPolicyRequest[term=$term, teamIds=$teamIds, public=$public, private=$private, deleted=$deleted]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (term != null) {
      _json[r'term'] = term;
    }
    _json[r'team_ids'] = teamIds;
    if (public != null) {
      _json[r'public'] = public;
    }
    if (private != null) {
      _json[r'private'] = private;
    }
    if (deleted != null) {
      _json[r'deleted'] = deleted;
    }
    return _json;
  }

  /// Returns a new [MmSearchChannelsForRetentionPolicyRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmSearchChannelsForRetentionPolicyRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MmSearchChannelsForRetentionPolicyRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MmSearchChannelsForRetentionPolicyRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmSearchChannelsForRetentionPolicyRequest(
        term: mapValueOfType<String>(json, r'term'),
        teamIds: json[r'team_ids'] is List ? (json[r'team_ids'] as List).cast<String>() : const [],
        public: mapValueOfType<bool>(json, r'public'),
        private: mapValueOfType<bool>(json, r'private'),
        deleted: mapValueOfType<bool>(json, r'deleted'),
      );
    }
    return null;
  }

  static List<MmSearchChannelsForRetentionPolicyRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmSearchChannelsForRetentionPolicyRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmSearchChannelsForRetentionPolicyRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmSearchChannelsForRetentionPolicyRequest> mapFromJson(dynamic json) {
    final map = <String, MmSearchChannelsForRetentionPolicyRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSearchChannelsForRetentionPolicyRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmSearchChannelsForRetentionPolicyRequest-objects as value to a dart map
  static Map<String, List<MmSearchChannelsForRetentionPolicyRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmSearchChannelsForRetentionPolicyRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSearchChannelsForRetentionPolicyRequest.listFromJson(
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
