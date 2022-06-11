//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostUpdateTeamMemberSchemeRolesRequest {
  /// Returns a new [MattermostUpdateTeamMemberSchemeRolesRequest] instance.
  MattermostUpdateTeamMemberSchemeRolesRequest({
    required this.schemeAdmin,
    required this.schemeUser,
  });

  bool schemeAdmin;

  bool schemeUser;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MattermostUpdateTeamMemberSchemeRolesRequest &&
     other.schemeAdmin == schemeAdmin &&
     other.schemeUser == schemeUser;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemeAdmin.hashCode) +
    (schemeUser.hashCode);

  @override
  String toString() => 'MattermostUpdateTeamMemberSchemeRolesRequest[schemeAdmin=$schemeAdmin, schemeUser=$schemeUser]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'scheme_admin'] = schemeAdmin;
      _json[r'scheme_user'] = schemeUser;
    return _json;
  }

  /// Returns a new [MattermostUpdateTeamMemberSchemeRolesRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostUpdateTeamMemberSchemeRolesRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostUpdateTeamMemberSchemeRolesRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostUpdateTeamMemberSchemeRolesRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostUpdateTeamMemberSchemeRolesRequest(
        schemeAdmin: mapValueOfType<bool>(json, r'scheme_admin')!,
        schemeUser: mapValueOfType<bool>(json, r'scheme_user')!,
      );
    }
    return null;
  }

  static List<MattermostUpdateTeamMemberSchemeRolesRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MattermostUpdateTeamMemberSchemeRolesRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostUpdateTeamMemberSchemeRolesRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostUpdateTeamMemberSchemeRolesRequest> mapFromJson(dynamic json) {
    final map = <String, MattermostUpdateTeamMemberSchemeRolesRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostUpdateTeamMemberSchemeRolesRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostUpdateTeamMemberSchemeRolesRequest-objects as value to a dart map
  static Map<String, List<MattermostUpdateTeamMemberSchemeRolesRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MattermostUpdateTeamMemberSchemeRolesRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostUpdateTeamMemberSchemeRolesRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'scheme_admin',
    'scheme_user',
  };
}

