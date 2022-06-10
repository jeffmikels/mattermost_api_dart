//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class PostListWithSearchMatches {
  /// Returns a new [PostListWithSearchMatches] instance.
  PostListWithSearchMatches({
    this.order = const [],
    this.posts = const {},
    this.matches = const {},
  });

  List<String> order;

  Map<String, Post> posts;

  /// A mapping of post IDs to a list of matched terms within the post. This field will only be populated on servers running version 5.1 or greater with Elasticsearch enabled.
  Map<String, List<String>> matches;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostListWithSearchMatches &&
     other.order == order &&
     other.posts == posts &&
     other.matches == matches;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (order.hashCode) +
    (posts.hashCode) +
    (matches.hashCode);

  @override
  String toString() => 'PostListWithSearchMatches[order=$order, posts=$posts, matches=$matches]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'order'] = order;
      _json[r'posts'] = posts;
      _json[r'matches'] = matches;
    return _json;
  }

  /// Returns a new [PostListWithSearchMatches] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostListWithSearchMatches? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PostListWithSearchMatches[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PostListWithSearchMatches[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PostListWithSearchMatches(
        order: json[r'order'] is List
            ? (json[r'order'] as List).cast<String>()
            : const [],
        posts: Post.mapFromJson(json[r'posts']) ?? const {},
        matches: json[r'matches'] == null
          ? const {}
            : mapCastOfType<String, List<String>>(json, r'matches')!,
      );
    }
    return null;
  }

  static List<PostListWithSearchMatches>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostListWithSearchMatches>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostListWithSearchMatches.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PostListWithSearchMatches> mapFromJson(dynamic json) {
    final map = <String, PostListWithSearchMatches>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PostListWithSearchMatches.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PostListWithSearchMatches-objects as value to a dart map
  static Map<String, List<PostListWithSearchMatches>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PostListWithSearchMatches>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PostListWithSearchMatches.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

