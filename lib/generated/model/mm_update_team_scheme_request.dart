//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMUpdateTeamSchemeRequest {
  /// Returns a new [MMUpdateTeamSchemeRequest] instance.
  MMUpdateTeamSchemeRequest({
    required this.schemeId,
  });

  /// The ID of the scheme.
  String schemeId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MMUpdateTeamSchemeRequest && other.schemeId == schemeId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (schemeId.hashCode);

  @override
  String toString() => 'MMUpdateTeamSchemeRequest[schemeId=$schemeId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'scheme_id'] = schemeId;
    return _json;
  }

  /// Returns a new [MMUpdateTeamSchemeRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMUpdateTeamSchemeRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMUpdateTeamSchemeRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMUpdateTeamSchemeRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMUpdateTeamSchemeRequest(
        schemeId: mapValueOfType<String>(json, r'scheme_id')!,
      );
    }
    return null;
  }

  static List<MMUpdateTeamSchemeRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMUpdateTeamSchemeRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMUpdateTeamSchemeRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMUpdateTeamSchemeRequest> mapFromJson(dynamic json) {
    final map = <String, MMUpdateTeamSchemeRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMUpdateTeamSchemeRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMUpdateTeamSchemeRequest-objects as value to a dart map
  static Map<String, List<MMUpdateTeamSchemeRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMUpdateTeamSchemeRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMUpdateTeamSchemeRequest.listFromJson(
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
    'scheme_id',
  };
}
