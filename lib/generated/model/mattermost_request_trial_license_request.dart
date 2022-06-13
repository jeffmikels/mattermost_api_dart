//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostRequestTrialLicenseRequest {
  /// Returns a new [MattermostRequestTrialLicenseRequest] instance.
  MattermostRequestTrialLicenseRequest({
    required this.users,
  });

  /// Number of users requested (20% extra is going to be added)
  int users;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MattermostRequestTrialLicenseRequest && other.users == users;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (users.hashCode);

  @override
  String toString() => 'MattermostRequestTrialLicenseRequest[users=$users]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'users'] = users;
    return _json;
  }

  /// Returns a new [MattermostRequestTrialLicenseRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostRequestTrialLicenseRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(
              json.containsKey(key), 'Required key "MattermostRequestTrialLicenseRequest[$key]" is missing from JSON.');
          assert(
              json[key] != null, 'Required key "MattermostRequestTrialLicenseRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostRequestTrialLicenseRequest(
        users: mapValueOfType<int>(json, r'users')!,
      );
    }
    return null;
  }

  static List<MattermostRequestTrialLicenseRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MattermostRequestTrialLicenseRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostRequestTrialLicenseRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostRequestTrialLicenseRequest> mapFromJson(dynamic json) {
    final map = <String, MattermostRequestTrialLicenseRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostRequestTrialLicenseRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostRequestTrialLicenseRequest-objects as value to a dart map
  static Map<String, List<MattermostRequestTrialLicenseRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MattermostRequestTrialLicenseRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostRequestTrialLicenseRequest.listFromJson(
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
    'users',
  };
}
