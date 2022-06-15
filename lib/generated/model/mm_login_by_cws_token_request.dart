//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmLoginByCwsTokenRequest {
  /// Returns a new [MmLoginByCwsTokenRequest] instance.
  MmLoginByCwsTokenRequest({
    this.loginId,
    this.cwsToken,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? loginId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cwsToken;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmLoginByCwsTokenRequest && other.loginId == loginId && other.cwsToken == cwsToken;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (loginId == null ? 0 : loginId!.hashCode) + (cwsToken == null ? 0 : cwsToken!.hashCode);

  @override
  String toString() => 'MmLoginByCwsTokenRequest[loginId=$loginId, cwsToken=$cwsToken]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (loginId != null) {
      _json[r'login_id'] = loginId;
    }
    if (cwsToken != null) {
      _json[r'cws_token'] = cwsToken;
    }
    return _json;
  }

  /// Returns a new [MmLoginByCwsTokenRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmLoginByCwsTokenRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmLoginByCwsTokenRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmLoginByCwsTokenRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmLoginByCwsTokenRequest(
        loginId: mapValueOfType<String>(json, r'login_id'),
        cwsToken: mapValueOfType<String>(json, r'cws_token'),
      );
    }
    return null;
  }

  static List<MmLoginByCwsTokenRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmLoginByCwsTokenRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmLoginByCwsTokenRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmLoginByCwsTokenRequest> mapFromJson(dynamic json) {
    final map = <String, MmLoginByCwsTokenRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmLoginByCwsTokenRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmLoginByCwsTokenRequest-objects as value to a dart map
  static Map<String, List<MmLoginByCwsTokenRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmLoginByCwsTokenRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmLoginByCwsTokenRequest.listFromJson(
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
