//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmOpenGraph {
  /// Returns a new [MmOpenGraph] instance.
  MmOpenGraph({
    this.type,
    this.url,
    this.title,
    this.description,
    this.determiner,
    this.siteName,
    this.locale,
    this.localesAlternate = const [],
    this.images = const [],
    this.videos = const [],
    this.audios = const [],
    this.article,
    this.book,
    this.profile,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? determiner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? siteName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locale;

  List<String> localesAlternate;

  List<MmOpenGraphImagesInner> images;

  List<MmOpenGraphVideosInner> videos;

  List<MmOpenGraphAudiosInner> audios;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MmOpenGraphArticle? article;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MmOpenGraphBook? book;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MmOpenGraphArticleAuthorsInner? profile;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmOpenGraph &&
          other.type == type &&
          other.url == url &&
          other.title == title &&
          other.description == description &&
          other.determiner == determiner &&
          other.siteName == siteName &&
          other.locale == locale &&
          other.localesAlternate == localesAlternate &&
          other.images == images &&
          other.videos == videos &&
          other.audios == audios &&
          other.article == article &&
          other.book == book &&
          other.profile == profile;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (type == null ? 0 : type!.hashCode) +
      (url == null ? 0 : url!.hashCode) +
      (title == null ? 0 : title!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (determiner == null ? 0 : determiner!.hashCode) +
      (siteName == null ? 0 : siteName!.hashCode) +
      (locale == null ? 0 : locale!.hashCode) +
      (localesAlternate.hashCode) +
      (images.hashCode) +
      (videos.hashCode) +
      (audios.hashCode) +
      (article == null ? 0 : article!.hashCode) +
      (book == null ? 0 : book!.hashCode) +
      (profile == null ? 0 : profile!.hashCode);

  @override
  String toString() =>
      'MmOpenGraph[type=$type, url=$url, title=$title, description=$description, determiner=$determiner, siteName=$siteName, locale=$locale, localesAlternate=$localesAlternate, images=$images, videos=$videos, audios=$audios, article=$article, book=$book, profile=$profile]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (type != null) {
      _json[r'type'] = type;
    }
    if (url != null) {
      _json[r'url'] = url;
    }
    if (title != null) {
      _json[r'title'] = title;
    }
    if (description != null) {
      _json[r'description'] = description;
    }
    if (determiner != null) {
      _json[r'determiner'] = determiner;
    }
    if (siteName != null) {
      _json[r'site_name'] = siteName;
    }
    if (locale != null) {
      _json[r'locale'] = locale;
    }
    _json[r'locales_alternate'] = localesAlternate;
    _json[r'images'] = images;
    _json[r'videos'] = videos;
    _json[r'audios'] = audios;
    if (article != null) {
      _json[r'article'] = article;
    }
    if (book != null) {
      _json[r'book'] = book;
    }
    if (profile != null) {
      _json[r'profile'] = profile;
    }
    return _json;
  }

  /// Returns a new [MmOpenGraph] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmOpenGraph? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmOpenGraph[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmOpenGraph[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmOpenGraph(
        type: mapValueOfType<String>(json, r'type'),
        url: mapValueOfType<String>(json, r'url'),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        determiner: mapValueOfType<String>(json, r'determiner'),
        siteName: mapValueOfType<String>(json, r'site_name'),
        locale: mapValueOfType<String>(json, r'locale'),
        localesAlternate:
            json[r'locales_alternate'] is List ? (json[r'locales_alternate'] as List).cast<String>() : const [],
        images: MmOpenGraphImagesInner.listFromJson(json[r'images']) ?? const [],
        videos: MmOpenGraphVideosInner.listFromJson(json[r'videos']) ?? const [],
        audios: MmOpenGraphAudiosInner.listFromJson(json[r'audios']) ?? const [],
        article: MmOpenGraphArticle.fromJson(json[r'article']),
        book: MmOpenGraphBook.fromJson(json[r'book']),
        profile: MmOpenGraphArticleAuthorsInner.fromJson(json[r'profile']),
      );
    }
    return null;
  }

  static List<MmOpenGraph>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmOpenGraph>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmOpenGraph.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmOpenGraph> mapFromJson(dynamic json) {
    final map = <String, MmOpenGraph>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmOpenGraph.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmOpenGraph-objects as value to a dart map
  static Map<String, List<MmOpenGraph>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmOpenGraph>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmOpenGraph.listFromJson(
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
