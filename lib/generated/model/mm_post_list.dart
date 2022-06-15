//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmPostList {
  /// Returns a new [MmPostList] instance.
  MmPostList({
    this.order = const [],
    this.posts = const {},
    this.nextPostId,
    this.prevPostId,
    this.hasNext,
  });

  List<String> order;

  Map<String, MmPost> posts;

  /// The ID of next post. Not omitted when empty or not relevant.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nextPostId;

  /// The ID of previous post. Not omitted when empty or not relevant.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prevPostId;

  /// Whether there are more items after this page.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasNext;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmPostList &&
          other.order == order &&
          other.posts == posts &&
          other.nextPostId == nextPostId &&
          other.prevPostId == prevPostId &&
          other.hasNext == hasNext;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (order.hashCode) +
      (posts.hashCode) +
      (nextPostId == null ? 0 : nextPostId!.hashCode) +
      (prevPostId == null ? 0 : prevPostId!.hashCode) +
      (hasNext == null ? 0 : hasNext!.hashCode);

  @override
  String toString() =>
      'MmPostList[order=$order, posts=$posts, nextPostId=$nextPostId, prevPostId=$prevPostId, hasNext=$hasNext]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'order'] = order;
    _json[r'posts'] = posts;
    if (nextPostId != null) {
      _json[r'next_post_id'] = nextPostId;
    }
    if (prevPostId != null) {
      _json[r'prev_post_id'] = prevPostId;
    }
    if (hasNext != null) {
      _json[r'has_next'] = hasNext;
    }
    return _json;
  }

  /// Returns a new [MmPostList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmPostList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmPostList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmPostList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmPostList(
        order: json[r'order'] is List ? (json[r'order'] as List).cast<String>() : const [],
        posts: MmPost.mapFromJson(json[r'posts'] ?? const {}),
        nextPostId: mapValueOfType<String>(json, r'next_post_id'),
        prevPostId: mapValueOfType<String>(json, r'prev_post_id'),
        hasNext: mapValueOfType<bool>(json, r'has_next'),
      );
    }
    return null;
  }

  static List<MmPostList>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmPostList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmPostList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmPostList> mapFromJson(dynamic json) {
    final map = <String, MmPostList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmPostList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmPostList-objects as value to a dart map
  static Map<String, List<MmPostList>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmPostList>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmPostList.listFromJson(
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
