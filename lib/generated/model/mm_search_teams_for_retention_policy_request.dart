//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmSearchTeamsForRetentionPolicyRequest {
  /// Returns a new [MmSearchTeamsForRetentionPolicyRequest] instance.
  MmSearchTeamsForRetentionPolicyRequest({
    this.term,
  });

  /// The search term to match against the name or display name of teams
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? term;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MmSearchTeamsForRetentionPolicyRequest && other.term == term;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (term == null ? 0 : term!.hashCode);

  @override
  String toString() => 'MmSearchTeamsForRetentionPolicyRequest[term=$term]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (term != null) {
      _json[r'term'] = term;
    }
    return _json;
  }

  /// Returns a new [MmSearchTeamsForRetentionPolicyRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmSearchTeamsForRetentionPolicyRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MmSearchTeamsForRetentionPolicyRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MmSearchTeamsForRetentionPolicyRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmSearchTeamsForRetentionPolicyRequest(
        term: mapValueOfType<String>(json, r'term'),
      );
    }
    return null;
  }

  static List<MmSearchTeamsForRetentionPolicyRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmSearchTeamsForRetentionPolicyRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmSearchTeamsForRetentionPolicyRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmSearchTeamsForRetentionPolicyRequest> mapFromJson(dynamic json) {
    final map = <String, MmSearchTeamsForRetentionPolicyRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSearchTeamsForRetentionPolicyRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmSearchTeamsForRetentionPolicyRequest-objects as value to a dart map
  static Map<String, List<MmSearchTeamsForRetentionPolicyRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmSearchTeamsForRetentionPolicyRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSearchTeamsForRetentionPolicyRequest.listFromJson(
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
