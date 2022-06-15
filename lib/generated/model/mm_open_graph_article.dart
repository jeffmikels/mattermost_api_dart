//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmOpenGraphArticle {
  /// Returns a new [MmOpenGraphArticle] instance.
  MmOpenGraphArticle({
    this.publishedTime,
    this.modifiedTime,
    this.expirationTime,
    this.section,
    this.tags = const [],
    this.authors = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publishedTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? modifiedTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expirationTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? section;

  List<String> tags;

  List<MmOpenGraphArticleAuthorsInner> authors;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmOpenGraphArticle &&
          other.publishedTime == publishedTime &&
          other.modifiedTime == modifiedTime &&
          other.expirationTime == expirationTime &&
          other.section == section &&
          other.tags == tags &&
          other.authors == authors;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (publishedTime == null ? 0 : publishedTime!.hashCode) +
      (modifiedTime == null ? 0 : modifiedTime!.hashCode) +
      (expirationTime == null ? 0 : expirationTime!.hashCode) +
      (section == null ? 0 : section!.hashCode) +
      (tags.hashCode) +
      (authors.hashCode);

  @override
  String toString() =>
      'MmOpenGraphArticle[publishedTime=$publishedTime, modifiedTime=$modifiedTime, expirationTime=$expirationTime, section=$section, tags=$tags, authors=$authors]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (publishedTime != null) {
      _json[r'published_time'] = publishedTime;
    }
    if (modifiedTime != null) {
      _json[r'modified_time'] = modifiedTime;
    }
    if (expirationTime != null) {
      _json[r'expiration_time'] = expirationTime;
    }
    if (section != null) {
      _json[r'section'] = section;
    }
    _json[r'tags'] = tags;
    _json[r'authors'] = authors;
    return _json;
  }

  /// Returns a new [MmOpenGraphArticle] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmOpenGraphArticle? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmOpenGraphArticle[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmOpenGraphArticle[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmOpenGraphArticle(
        publishedTime: mapValueOfType<String>(json, r'published_time'),
        modifiedTime: mapValueOfType<String>(json, r'modified_time'),
        expirationTime: mapValueOfType<String>(json, r'expiration_time'),
        section: mapValueOfType<String>(json, r'section'),
        tags: json[r'tags'] is List ? (json[r'tags'] as List).cast<String>() : const [],
        authors: MmOpenGraphArticleAuthorsInner.listFromJson(json[r'authors']) ?? const [],
      );
    }
    return null;
  }

  static List<MmOpenGraphArticle>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmOpenGraphArticle>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmOpenGraphArticle.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmOpenGraphArticle> mapFromJson(dynamic json) {
    final map = <String, MmOpenGraphArticle>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmOpenGraphArticle.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmOpenGraphArticle-objects as value to a dart map
  static Map<String, List<MmOpenGraphArticle>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmOpenGraphArticle>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmOpenGraphArticle.listFromJson(
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
