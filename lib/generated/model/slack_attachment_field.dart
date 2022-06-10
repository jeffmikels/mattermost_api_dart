//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class SlackAttachmentField {
  /// Returns a new [SlackAttachmentField] instance.
  SlackAttachmentField({
    this.title,
    this.value,
    this.short,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// The value of the attachment, set as string but capable with golang interface
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? short;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SlackAttachmentField &&
     other.title == title &&
     other.value == value &&
     other.short == short;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title == null ? 0 : title!.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (short == null ? 0 : short!.hashCode);

  @override
  String toString() => 'SlackAttachmentField[title=$title, value=$value, short=$short]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (title != null) {
      _json[r'Title'] = title;
    }
    if (value != null) {
      _json[r'Value'] = value;
    }
    if (short != null) {
      _json[r'Short'] = short;
    }
    return _json;
  }

  /// Returns a new [SlackAttachmentField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SlackAttachmentField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SlackAttachmentField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SlackAttachmentField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SlackAttachmentField(
        title: mapValueOfType<String>(json, r'Title'),
        value: mapValueOfType<String>(json, r'Value'),
        short: mapValueOfType<bool>(json, r'Short'),
      );
    }
    return null;
  }

  static List<SlackAttachmentField>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SlackAttachmentField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SlackAttachmentField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SlackAttachmentField> mapFromJson(dynamic json) {
    final map = <String, SlackAttachmentField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SlackAttachmentField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SlackAttachmentField-objects as value to a dart map
  static Map<String, List<SlackAttachmentField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SlackAttachmentField>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SlackAttachmentField.listFromJson(entry.value, growable: growable,);
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

