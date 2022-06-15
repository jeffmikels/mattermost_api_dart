//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmSearchPostsRequest {
  /// Returns a new [MmSearchPostsRequest] instance.
  MmSearchPostsRequest({
    required this.terms,
    required this.isOrSearch,
    this.timeZoneOffset = 0,
    this.includeDeletedChannels,
    this.page = 0,
    this.perPage = 60,
  });

  /// The search terms as inputed by the user. To search for posts from a user include `from:someusername`, using a user's username. To search in a specific channel include `in:somechannel`, using the channel name (not the display name).
  String terms;

  /// Set to true if an Or search should be performed vs an And search.
  bool isOrSearch;

  /// Offset from UTC of user timezone for date searches.
  int timeZoneOffset;

  /// Set to true if deleted channels should be included in the search. (archived channels)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? includeDeletedChannels;

  /// The page to select. (Only works with Elasticsearch)
  int page;

  /// The number of posts per page. (Only works with Elasticsearch)
  int perPage;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmSearchPostsRequest &&
          other.terms == terms &&
          other.isOrSearch == isOrSearch &&
          other.timeZoneOffset == timeZoneOffset &&
          other.includeDeletedChannels == includeDeletedChannels &&
          other.page == page &&
          other.perPage == perPage;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (terms.hashCode) +
      (isOrSearch.hashCode) +
      (timeZoneOffset.hashCode) +
      (includeDeletedChannels == null ? 0 : includeDeletedChannels!.hashCode) +
      (page.hashCode) +
      (perPage.hashCode);

  @override
  String toString() =>
      'MmSearchPostsRequest[terms=$terms, isOrSearch=$isOrSearch, timeZoneOffset=$timeZoneOffset, includeDeletedChannels=$includeDeletedChannels, page=$page, perPage=$perPage]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'terms'] = terms;
    _json[r'is_or_search'] = isOrSearch;
    _json[r'time_zone_offset'] = timeZoneOffset;
    if (includeDeletedChannels != null) {
      _json[r'include_deleted_channels'] = includeDeletedChannels;
    }
    _json[r'page'] = page;
    _json[r'per_page'] = perPage;
    return _json;
  }

  /// Returns a new [MmSearchPostsRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmSearchPostsRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmSearchPostsRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmSearchPostsRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmSearchPostsRequest(
        terms: mapValueOfType<String>(json, r'terms')!,
        isOrSearch: mapValueOfType<bool>(json, r'is_or_search')!,
        timeZoneOffset: mapValueOfType<int>(json, r'time_zone_offset') ?? 0,
        includeDeletedChannels: mapValueOfType<bool>(json, r'include_deleted_channels'),
        page: mapValueOfType<int>(json, r'page') ?? 0,
        perPage: mapValueOfType<int>(json, r'per_page') ?? 60,
      );
    }
    return null;
  }

  static List<MmSearchPostsRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmSearchPostsRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmSearchPostsRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmSearchPostsRequest> mapFromJson(dynamic json) {
    final map = <String, MmSearchPostsRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSearchPostsRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmSearchPostsRequest-objects as value to a dart map
  static Map<String, List<MmSearchPostsRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmSearchPostsRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSearchPostsRequest.listFromJson(
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
    'terms',
    'is_or_search',
  };
}
