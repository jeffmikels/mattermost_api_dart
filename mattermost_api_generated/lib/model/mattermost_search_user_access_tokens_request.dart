//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostSearchUserAccessTokensRequest {
  /// Returns a new [MattermostSearchUserAccessTokensRequest] instance.
  MattermostSearchUserAccessTokensRequest({
    required this.term,
  });

  /// The search term to match against the token id, user id or username.
  String term;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MattermostSearchUserAccessTokensRequest &&
     other.term == term;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (term.hashCode);

  @override
  String toString() => 'MattermostSearchUserAccessTokensRequest[term=$term]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'term'] = term;
    return _json;
  }

  /// Returns a new [MattermostSearchUserAccessTokensRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostSearchUserAccessTokensRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostSearchUserAccessTokensRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostSearchUserAccessTokensRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostSearchUserAccessTokensRequest(
        term: mapValueOfType<String>(json, r'term')!,
      );
    }
    return null;
  }

  static List<MattermostSearchUserAccessTokensRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MattermostSearchUserAccessTokensRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostSearchUserAccessTokensRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostSearchUserAccessTokensRequest> mapFromJson(dynamic json) {
    final map = <String, MattermostSearchUserAccessTokensRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostSearchUserAccessTokensRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostSearchUserAccessTokensRequest-objects as value to a dart map
  static Map<String, List<MattermostSearchUserAccessTokensRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MattermostSearchUserAccessTokensRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostSearchUserAccessTokensRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'term',
  };
}

