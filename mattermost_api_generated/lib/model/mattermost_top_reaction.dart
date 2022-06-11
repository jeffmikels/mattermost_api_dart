//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostTopReaction {
  /// Returns a new [MattermostTopReaction] instance.
  MattermostTopReaction({
    this.emojiName,
    this.count,
  });

  /// The name of the emoji used for this reaction.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? emojiName;

  /// The number of the times this emoji has been used.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MattermostTopReaction &&
     other.emojiName == emojiName &&
     other.count == count;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (emojiName == null ? 0 : emojiName!.hashCode) +
    (count == null ? 0 : count!.hashCode);

  @override
  String toString() => 'MattermostTopReaction[emojiName=$emojiName, count=$count]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (emojiName != null) {
      _json[r'emoji_name'] = emojiName;
    }
    if (count != null) {
      _json[r'count'] = count;
    }
    return _json;
  }

  /// Returns a new [MattermostTopReaction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostTopReaction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostTopReaction[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostTopReaction[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostTopReaction(
        emojiName: mapValueOfType<String>(json, r'emoji_name'),
        count: mapValueOfType<int>(json, r'count'),
      );
    }
    return null;
  }

  static List<MattermostTopReaction>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MattermostTopReaction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostTopReaction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostTopReaction> mapFromJson(dynamic json) {
    final map = <String, MattermostTopReaction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostTopReaction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostTopReaction-objects as value to a dart map
  static Map<String, List<MattermostTopReaction>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MattermostTopReaction>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostTopReaction.listFromJson(entry.value, growable: growable,);
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

