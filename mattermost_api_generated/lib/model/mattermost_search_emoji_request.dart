//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostSearchEmojiRequest {
  /// Returns a new [MattermostSearchEmojiRequest] instance.
  MattermostSearchEmojiRequest({
    required this.term,
    this.prefixOnly,
  });

  /// The term to match against the emoji name.
  String term;

  /// Set to only search for names starting with the search term.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prefixOnly;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MattermostSearchEmojiRequest &&
     other.term == term &&
     other.prefixOnly == prefixOnly;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (term.hashCode) +
    (prefixOnly == null ? 0 : prefixOnly!.hashCode);

  @override
  String toString() => 'MattermostSearchEmojiRequest[term=$term, prefixOnly=$prefixOnly]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'term'] = term;
    if (prefixOnly != null) {
      _json[r'prefix_only'] = prefixOnly;
    }
    return _json;
  }

  /// Returns a new [MattermostSearchEmojiRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostSearchEmojiRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostSearchEmojiRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostSearchEmojiRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostSearchEmojiRequest(
        term: mapValueOfType<String>(json, r'term')!,
        prefixOnly: mapValueOfType<String>(json, r'prefix_only'),
      );
    }
    return null;
  }

  static List<MattermostSearchEmojiRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MattermostSearchEmojiRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostSearchEmojiRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostSearchEmojiRequest> mapFromJson(dynamic json) {
    final map = <String, MattermostSearchEmojiRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostSearchEmojiRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostSearchEmojiRequest-objects as value to a dart map
  static Map<String, List<MattermostSearchEmojiRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MattermostSearchEmojiRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostSearchEmojiRequest.listFromJson(entry.value, growable: growable,);
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

