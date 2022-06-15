//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmReaction {
  /// Returns a new [MmReaction] instance.
  MmReaction({
    this.userId,
    this.postId,
    this.emojiName,
    this.createAt,
  });

  /// The ID of the user that made this reaction
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  /// The ID of the post to which this reaction was made
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? postId;

  /// The name of the emoji that was used for this reaction
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? emojiName;

  /// The time in milliseconds this reaction was made
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmReaction &&
          other.userId == userId &&
          other.postId == postId &&
          other.emojiName == emojiName &&
          other.createAt == createAt;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (userId == null ? 0 : userId!.hashCode) +
      (postId == null ? 0 : postId!.hashCode) +
      (emojiName == null ? 0 : emojiName!.hashCode) +
      (createAt == null ? 0 : createAt!.hashCode);

  @override
  String toString() => 'MmReaction[userId=$userId, postId=$postId, emojiName=$emojiName, createAt=$createAt]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (userId != null) {
      _json[r'user_id'] = userId;
    }
    if (postId != null) {
      _json[r'post_id'] = postId;
    }
    if (emojiName != null) {
      _json[r'emoji_name'] = emojiName;
    }
    if (createAt != null) {
      _json[r'create_at'] = createAt;
    }
    return _json;
  }

  /// Returns a new [MmReaction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmReaction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmReaction[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmReaction[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmReaction(
        userId: mapValueOfType<String>(json, r'user_id'),
        postId: mapValueOfType<String>(json, r'post_id'),
        emojiName: mapValueOfType<String>(json, r'emoji_name'),
        createAt: mapValueOfType<int>(json, r'create_at'),
      );
    }
    return null;
  }

  static List<MmReaction>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmReaction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmReaction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmReaction> mapFromJson(dynamic json) {
    final map = <String, MmReaction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmReaction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmReaction-objects as value to a dart map
  static Map<String, List<MmReaction>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmReaction>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmReaction.listFromJson(
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
