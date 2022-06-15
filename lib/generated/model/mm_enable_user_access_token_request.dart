//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmEnableUserAccessTokenRequest {
  /// Returns a new [MmEnableUserAccessTokenRequest] instance.
  MmEnableUserAccessTokenRequest({
    required this.tokenId,
  });

  /// The personal access token GUID to enable
  String tokenId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MmEnableUserAccessTokenRequest && other.tokenId == tokenId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (tokenId.hashCode);

  @override
  String toString() => 'MmEnableUserAccessTokenRequest[tokenId=$tokenId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'token_id'] = tokenId;
    return _json;
  }

  /// Returns a new [MmEnableUserAccessTokenRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmEnableUserAccessTokenRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmEnableUserAccessTokenRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmEnableUserAccessTokenRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmEnableUserAccessTokenRequest(
        tokenId: mapValueOfType<String>(json, r'token_id')!,
      );
    }
    return null;
  }

  static List<MmEnableUserAccessTokenRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmEnableUserAccessTokenRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmEnableUserAccessTokenRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmEnableUserAccessTokenRequest> mapFromJson(dynamic json) {
    final map = <String, MmEnableUserAccessTokenRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmEnableUserAccessTokenRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmEnableUserAccessTokenRequest-objects as value to a dart map
  static Map<String, List<MmEnableUserAccessTokenRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmEnableUserAccessTokenRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmEnableUserAccessTokenRequest.listFromJson(
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
