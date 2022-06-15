//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmDisableUserAccessTokenRequest {
  /// Returns a new [MmDisableUserAccessTokenRequest] instance.
  MmDisableUserAccessTokenRequest({
    required this.tokenId,
  });

  /// The personal access token GUID to disable
  String tokenId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MmDisableUserAccessTokenRequest && other.tokenId == tokenId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (tokenId.hashCode);

  @override
  String toString() => 'MmDisableUserAccessTokenRequest[tokenId=$tokenId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'token_id'] = tokenId;
    return _json;
  }

  /// Returns a new [MmDisableUserAccessTokenRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmDisableUserAccessTokenRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmDisableUserAccessTokenRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmDisableUserAccessTokenRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmDisableUserAccessTokenRequest(
        tokenId: mapValueOfType<String>(json, r'token_id')!,
      );
    }
    return null;
  }

  static List<MmDisableUserAccessTokenRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmDisableUserAccessTokenRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmDisableUserAccessTokenRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmDisableUserAccessTokenRequest> mapFromJson(dynamic json) {
    final map = <String, MmDisableUserAccessTokenRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmDisableUserAccessTokenRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmDisableUserAccessTokenRequest-objects as value to a dart map
  static Map<String, List<MmDisableUserAccessTokenRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmDisableUserAccessTokenRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmDisableUserAccessTokenRequest.listFromJson(
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
    'token_id',
  };
}
