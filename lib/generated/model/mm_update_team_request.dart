//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmUpdateTeamRequest {
  /// Returns a new [MmUpdateTeamRequest] instance.
  MmUpdateTeamRequest({
    required this.id,
    required this.displayName,
    required this.description,
    required this.companyName,
    required this.allowedDomains,
    required this.inviteId,
    required this.allowOpenInvite,
  });

  String id;

  String displayName;

  String description;

  String companyName;

  String allowedDomains;

  String inviteId;

  String allowOpenInvite;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmUpdateTeamRequest &&
          other.id == id &&
          other.displayName == displayName &&
          other.description == description &&
          other.companyName == companyName &&
          other.allowedDomains == allowedDomains &&
          other.inviteId == inviteId &&
          other.allowOpenInvite == allowOpenInvite;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (displayName.hashCode) +
      (description.hashCode) +
      (companyName.hashCode) +
      (allowedDomains.hashCode) +
      (inviteId.hashCode) +
      (allowOpenInvite.hashCode);

  @override
  String toString() =>
      'MmUpdateTeamRequest[id=$id, displayName=$displayName, description=$description, companyName=$companyName, allowedDomains=$allowedDomains, inviteId=$inviteId, allowOpenInvite=$allowOpenInvite]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'id'] = id;
    _json[r'display_name'] = displayName;
    _json[r'description'] = description;
    _json[r'company_name'] = companyName;
    _json[r'allowed_domains'] = allowedDomains;
    _json[r'invite_id'] = inviteId;
    _json[r'allow_open_invite'] = allowOpenInvite;
    return _json;
  }

  /// Returns a new [MmUpdateTeamRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmUpdateTeamRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmUpdateTeamRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmUpdateTeamRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmUpdateTeamRequest(
        id: mapValueOfType<String>(json, r'id')!,
        displayName: mapValueOfType<String>(json, r'display_name')!,
        description: mapValueOfType<String>(json, r'description')!,
        companyName: mapValueOfType<String>(json, r'company_name')!,
        allowedDomains: mapValueOfType<String>(json, r'allowed_domains')!,
        inviteId: mapValueOfType<String>(json, r'invite_id')!,
        allowOpenInvite: mapValueOfType<String>(json, r'allow_open_invite')!,
      );
    }
    return null;
  }

  static List<MmUpdateTeamRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmUpdateTeamRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmUpdateTeamRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmUpdateTeamRequest> mapFromJson(dynamic json) {
    final map = <String, MmUpdateTeamRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUpdateTeamRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmUpdateTeamRequest-objects as value to a dart map
  static Map<String, List<MmUpdateTeamRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmUpdateTeamRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUpdateTeamRequest.listFromJson(
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
    'id',
    'display_name',
    'description',
    'company_name',
    'allowed_domains',
    'invite_id',
    'allow_open_invite',
  };
}
