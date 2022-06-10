//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class SearchUserAccessTokensRequest {
  /// Returns a new [SearchUserAccessTokensRequest] instance.
  SearchUserAccessTokensRequest({
    required this.term,
  });

  /// The search term to match against the token id, user id or username.
  String term;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchUserAccessTokensRequest &&
     other.term == term;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (term.hashCode);

  @override
  String toString() => 'SearchUserAccessTokensRequest[term=$term]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'term'] = term;
    return _json;
  }

  /// Returns a new [SearchUserAccessTokensRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchUserAccessTokensRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchUserAccessTokensRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchUserAccessTokensRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchUserAccessTokensRequest(
        term: mapValueOfType<String>(json, r'term')!,
      );
    }
    return null;
  }

  static List<SearchUserAccessTokensRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchUserAccessTokensRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchUserAccessTokensRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchUserAccessTokensRequest> mapFromJson(dynamic json) {
    final map = <String, SearchUserAccessTokensRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchUserAccessTokensRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchUserAccessTokensRequest-objects as value to a dart map
  static Map<String, List<SearchUserAccessTokensRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchUserAccessTokensRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchUserAccessTokensRequest.listFromJson(entry.value, growable: growable,);
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

