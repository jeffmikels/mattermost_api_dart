//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmPostListWithSearchMatches {
  /// Returns a new [MmPostListWithSearchMatches] instance.
  MmPostListWithSearchMatches({
    this.order = const [],
    this.posts = const {},
    this.matches = const {},
  });

  List<String> order;

  Map<String, MmPost> posts;

  /// A mapping of post IDs to a list of matched terms within the post. This field will only be populated on servers running version 5.1 or greater with Elasticsearch enabled.
  Map<String, List<String>> matches;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmPostListWithSearchMatches && other.order == order && other.posts == posts && other.matches == matches;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (order.hashCode) + (posts.hashCode) + (matches.hashCode);

  @override
  String toString() => 'MmPostListWithSearchMatches[order=$order, posts=$posts, matches=$matches]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'order'] = order;
    _json[r'posts'] = posts;
    _json[r'matches'] = matches;
    return _json;
  }

  /// Returns a new [MmPostListWithSearchMatches] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmPostListWithSearchMatches? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmPostListWithSearchMatches[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmPostListWithSearchMatches[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmPostListWithSearchMatches(
        order: json[r'order'] is List ? (json[r'order'] as List).cast<String>() : const [],
        posts: MmPost.mapFromJson(json[r'posts'] ?? const {}),
        matches: json[r'matches'] == null ? const {} : mapCastOfType<String, List<String>>(json, r'matches')!,
      );
    }
    return null;
  }

  static List<MmPostListWithSearchMatches>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmPostListWithSearchMatches>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmPostListWithSearchMatches.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmPostListWithSearchMatches> mapFromJson(dynamic json) {
    final map = <String, MmPostListWithSearchMatches>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmPostListWithSearchMatches.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmPostListWithSearchMatches-objects as value to a dart map
  static Map<String, List<MmPostListWithSearchMatches>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmPostListWithSearchMatches>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmPostListWithSearchMatches.listFromJson(
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
