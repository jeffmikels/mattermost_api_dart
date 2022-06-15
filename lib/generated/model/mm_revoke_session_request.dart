//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMRevokeSessionRequest {
  /// Returns a new [MMRevokeSessionRequest] instance.
  MMRevokeSessionRequest({
    required this.sessionId,
  });

  /// The session GUID to revoke.
  String sessionId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MMRevokeSessionRequest && other.sessionId == sessionId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (sessionId.hashCode);

  @override
  String toString() => 'MMRevokeSessionRequest[sessionId=$sessionId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'session_id'] = sessionId;
    return _json;
  }

  /// Returns a new [MMRevokeSessionRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMRevokeSessionRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMRevokeSessionRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMRevokeSessionRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMRevokeSessionRequest(
        sessionId: mapValueOfType<String>(json, r'session_id')!,
      );
    }
    return null;
  }

  static List<MMRevokeSessionRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMRevokeSessionRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMRevokeSessionRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMRevokeSessionRequest> mapFromJson(dynamic json) {
    final map = <String, MMRevokeSessionRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMRevokeSessionRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMRevokeSessionRequest-objects as value to a dart map
  static Map<String, List<MMRevokeSessionRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMRevokeSessionRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMRevokeSessionRequest.listFromJson(
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
    'session_id',
  };
}
