//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmUpdateTeamPrivacyRequest {
  /// Returns a new [MmUpdateTeamPrivacyRequest] instance.
  MmUpdateTeamPrivacyRequest({
    required this.privacy,
  });

  /// Team privacy setting: 'O' for a public (open) team, 'I' for a private (invitation only) team
  String privacy;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MmUpdateTeamPrivacyRequest && other.privacy == privacy;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (privacy.hashCode);

  @override
  String toString() => 'MmUpdateTeamPrivacyRequest[privacy=$privacy]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'privacy'] = privacy;
    return _json;
  }

  /// Returns a new [MmUpdateTeamPrivacyRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmUpdateTeamPrivacyRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmUpdateTeamPrivacyRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmUpdateTeamPrivacyRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmUpdateTeamPrivacyRequest(
        privacy: mapValueOfType<String>(json, r'privacy')!,
      );
    }
    return null;
  }

  static List<MmUpdateTeamPrivacyRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmUpdateTeamPrivacyRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmUpdateTeamPrivacyRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmUpdateTeamPrivacyRequest> mapFromJson(dynamic json) {
    final map = <String, MmUpdateTeamPrivacyRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUpdateTeamPrivacyRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmUpdateTeamPrivacyRequest-objects as value to a dart map
  static Map<String, List<MmUpdateTeamPrivacyRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmUpdateTeamPrivacyRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUpdateTeamPrivacyRequest.listFromJson(
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
  static const requiredKeys = <String>{
    'privacy',
  };
}
