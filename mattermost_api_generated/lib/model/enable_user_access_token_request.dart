//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class EnableUserAccessTokenRequest {
  /// Returns a new [EnableUserAccessTokenRequest] instance.
  EnableUserAccessTokenRequest({
    required this.tokenId,
  });

  /// The personal access token GUID to enable
  String tokenId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EnableUserAccessTokenRequest &&
     other.tokenId == tokenId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tokenId.hashCode);

  @override
  String toString() => 'EnableUserAccessTokenRequest[tokenId=$tokenId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'token_id'] = tokenId;
    return _json;
  }

  /// Returns a new [EnableUserAccessTokenRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EnableUserAccessTokenRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EnableUserAccessTokenRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EnableUserAccessTokenRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EnableUserAccessTokenRequest(
        tokenId: mapValueOfType<String>(json, r'token_id')!,
      );
    }
    return null;
  }

  static List<EnableUserAccessTokenRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EnableUserAccessTokenRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EnableUserAccessTokenRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EnableUserAccessTokenRequest> mapFromJson(dynamic json) {
    final map = <String, EnableUserAccessTokenRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EnableUserAccessTokenRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EnableUserAccessTokenRequest-objects as value to a dart map
  static Map<String, List<EnableUserAccessTokenRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EnableUserAccessTokenRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EnableUserAccessTokenRequest.listFromJson(entry.value, growable: growable,);
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

