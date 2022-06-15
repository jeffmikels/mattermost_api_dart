//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmSlackAttachment {
  /// Returns a new [MmSlackAttachment] instance.
  MmSlackAttachment({
    this.id,
    this.fallback,
    this.color,
    this.pretext,
    this.authorName,
    this.authorLink,
    this.authorIcon,
    this.title,
    this.titleLink,
    this.text,
    this.fields = const [],
    this.imageURL,
    this.thumbURL,
    this.footer,
    this.footerIcon,
    this.timestamp,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fallback;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? color;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pretext;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authorName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authorLink;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authorIcon;

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
  String? titleLink;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  List<MmSlackAttachmentField> fields;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imageURL;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? thumbURL;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? footer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? footerIcon;

  /// The timestamp of the slack attachment, either type of string or integer
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timestamp;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmSlackAttachment &&
          other.id == id &&
          other.fallback == fallback &&
          other.color == color &&
          other.pretext == pretext &&
          other.authorName == authorName &&
          other.authorLink == authorLink &&
          other.authorIcon == authorIcon &&
          other.title == title &&
          other.titleLink == titleLink &&
          other.text == text &&
          other.fields == fields &&
          other.imageURL == imageURL &&
          other.thumbURL == thumbURL &&
          other.footer == footer &&
          other.footerIcon == footerIcon &&
          other.timestamp == timestamp;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (fallback == null ? 0 : fallback!.hashCode) +
      (color == null ? 0 : color!.hashCode) +
      (pretext == null ? 0 : pretext!.hashCode) +
      (authorName == null ? 0 : authorName!.hashCode) +
      (authorLink == null ? 0 : authorLink!.hashCode) +
      (authorIcon == null ? 0 : authorIcon!.hashCode) +
      (title == null ? 0 : title!.hashCode) +
      (titleLink == null ? 0 : titleLink!.hashCode) +
      (text == null ? 0 : text!.hashCode) +
      (fields.hashCode) +
      (imageURL == null ? 0 : imageURL!.hashCode) +
      (thumbURL == null ? 0 : thumbURL!.hashCode) +
      (footer == null ? 0 : footer!.hashCode) +
      (footerIcon == null ? 0 : footerIcon!.hashCode) +
      (timestamp == null ? 0 : timestamp!.hashCode);

  @override
  String toString() =>
      'MmSlackAttachment[id=$id, fallback=$fallback, color=$color, pretext=$pretext, authorName=$authorName, authorLink=$authorLink, authorIcon=$authorIcon, title=$title, titleLink=$titleLink, text=$text, fields=$fields, imageURL=$imageURL, thumbURL=$thumbURL, footer=$footer, footerIcon=$footerIcon, timestamp=$timestamp]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'Id'] = id;
    }
    if (fallback != null) {
      _json[r'Fallback'] = fallback;
    }
    if (color != null) {
      _json[r'Color'] = color;
    }
    if (pretext != null) {
      _json[r'Pretext'] = pretext;
    }
    if (authorName != null) {
      _json[r'AuthorName'] = authorName;
    }
    if (authorLink != null) {
      _json[r'AuthorLink'] = authorLink;
    }
    if (authorIcon != null) {
      _json[r'AuthorIcon'] = authorIcon;
    }
    if (title != null) {
      _json[r'Title'] = title;
    }
    if (titleLink != null) {
      _json[r'TitleLink'] = titleLink;
    }
    if (text != null) {
      _json[r'Text'] = text;
    }
    _json[r'Fields'] = fields;
    if (imageURL != null) {
      _json[r'ImageURL'] = imageURL;
    }
    if (thumbURL != null) {
      _json[r'ThumbURL'] = thumbURL;
    }
    if (footer != null) {
      _json[r'Footer'] = footer;
    }
    if (footerIcon != null) {
      _json[r'FooterIcon'] = footerIcon;
    }
    if (timestamp != null) {
      _json[r'Timestamp'] = timestamp;
    }
    return _json;
  }

  /// Returns a new [MmSlackAttachment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmSlackAttachment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmSlackAttachment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmSlackAttachment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmSlackAttachment(
        id: mapValueOfType<String>(json, r'Id'),
        fallback: mapValueOfType<String>(json, r'Fallback'),
        color: mapValueOfType<String>(json, r'Color'),
        pretext: mapValueOfType<String>(json, r'Pretext'),
        authorName: mapValueOfType<String>(json, r'AuthorName'),
        authorLink: mapValueOfType<String>(json, r'AuthorLink'),
        authorIcon: mapValueOfType<String>(json, r'AuthorIcon'),
        title: mapValueOfType<String>(json, r'Title'),
        titleLink: mapValueOfType<String>(json, r'TitleLink'),
        text: mapValueOfType<String>(json, r'Text'),
        fields: MmSlackAttachmentField.listFromJson(json[r'Fields']) ?? const [],
        imageURL: mapValueOfType<String>(json, r'ImageURL'),
        thumbURL: mapValueOfType<String>(json, r'ThumbURL'),
        footer: mapValueOfType<String>(json, r'Footer'),
        footerIcon: mapValueOfType<String>(json, r'FooterIcon'),
        timestamp: mapValueOfType<String>(json, r'Timestamp'),
      );
    }
    return null;
  }

  static List<MmSlackAttachment>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmSlackAttachment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmSlackAttachment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmSlackAttachment> mapFromJson(dynamic json) {
    final map = <String, MmSlackAttachment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSlackAttachment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmSlackAttachment-objects as value to a dart map
  static Map<String, List<MmSlackAttachment>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmSlackAttachment>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSlackAttachment.listFromJson(
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
