//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class OpenGraphBook {
  /// Returns a new [OpenGraphBook] instance.
  OpenGraphBook({
    this.isbn,
    this.releaseDate,
    this.tags = const [],
    this.authors = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? isbn;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? releaseDate;

  List<String> tags;

  List<OpenGraphArticleAuthorsInner> authors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenGraphBook &&
     other.isbn == isbn &&
     other.releaseDate == releaseDate &&
     other.tags == tags &&
     other.authors == authors;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (isbn == null ? 0 : isbn!.hashCode) +
    (releaseDate == null ? 0 : releaseDate!.hashCode) +
    (tags.hashCode) +
    (authors.hashCode);

  @override
  String toString() => 'OpenGraphBook[isbn=$isbn, releaseDate=$releaseDate, tags=$tags, authors=$authors]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (isbn != null) {
      _json[r'isbn'] = isbn;
    }
    if (releaseDate != null) {
      _json[r'release_date'] = releaseDate;
    }
      _json[r'tags'] = tags;
      _json[r'authors'] = authors;
    return _json;
  }

  /// Returns a new [OpenGraphBook] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenGraphBook? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenGraphBook[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenGraphBook[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenGraphBook(
        isbn: mapValueOfType<String>(json, r'isbn'),
        releaseDate: mapValueOfType<String>(json, r'release_date'),
        tags: json[r'tags'] is List
            ? (json[r'tags'] as List).cast<String>()
            : const [],
        authors: OpenGraphArticleAuthorsInner.listFromJson(json[r'authors']) ?? const [],
      );
    }
    return null;
  }

  static List<OpenGraphBook>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenGraphBook>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenGraphBook.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenGraphBook> mapFromJson(dynamic json) {
    final map = <String, OpenGraphBook>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenGraphBook.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenGraphBook-objects as value to a dart map
  static Map<String, List<OpenGraphBook>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenGraphBook>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenGraphBook.listFromJson(entry.value, growable: growable,);
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

