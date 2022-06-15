//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMCheckUserMfaRequest {
  /// Returns a new [MMCheckUserMfaRequest] instance.
  MMCheckUserMfaRequest({
    required this.loginId,
  });

  /// The email or username used to login
  String loginId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MMCheckUserMfaRequest && other.loginId == loginId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (loginId.hashCode);

  @override
  String toString() => 'MMCheckUserMfaRequest[loginId=$loginId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'login_id'] = loginId;
    return _json;
  }

  /// Returns a new [MMCheckUserMfaRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMCheckUserMfaRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMCheckUserMfaRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMCheckUserMfaRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMCheckUserMfaRequest(
        loginId: mapValueOfType<String>(json, r'login_id')!,
      );
    }
    return null;
  }

  static List<MMCheckUserMfaRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMCheckUserMfaRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMCheckUserMfaRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMCheckUserMfaRequest> mapFromJson(dynamic json) {
    final map = <String, MMCheckUserMfaRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMCheckUserMfaRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMCheckUserMfaRequest-objects as value to a dart map
  static Map<String, List<MMCheckUserMfaRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMCheckUserMfaRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMCheckUserMfaRequest.listFromJson(
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
    'login_id',
  };
}
