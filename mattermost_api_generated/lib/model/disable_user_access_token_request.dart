//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class DisableUserAccessTokenRequest {
  /// Returns a new [DisableUserAccessTokenRequest] instance.
  DisableUserAccessTokenRequest({
    required this.tokenId,
  });

  /// The personal access token GUID to disable
  String tokenId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DisableUserAccessTokenRequest &&
     other.tokenId == tokenId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tokenId.hashCode);

  @override
  String toString() => 'DisableUserAccessTokenRequest[tokenId=$tokenId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'token_id'] = tokenId;
    return _json;
  }

  /// Returns a new [DisableUserAccessTokenRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DisableUserAccessTokenRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DisableUserAccessTokenRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DisableUserAccessTokenRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DisableUserAccessTokenRequest(
        tokenId: mapValueOfType<String>(json, r'token_id')!,
      );
    }
    return null;
  }

  static List<DisableUserAccessTokenRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DisableUserAccessTokenRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DisableUserAccessTokenRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DisableUserAccessTokenRequest> mapFromJson(dynamic json) {
    final map = <String, DisableUserAccessTokenRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DisableUserAccessTokenRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DisableUserAccessTokenRequest-objects as value to a dart map
  static Map<String, List<DisableUserAccessTokenRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DisableUserAccessTokenRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DisableUserAccessTokenRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'token_id',
  };
}

