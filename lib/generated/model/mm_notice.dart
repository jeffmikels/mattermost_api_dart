//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmNotice {
  /// Returns a new [MmNotice] instance.
  MmNotice({
    this.id,
    this.sysAdminOnly,
    this.teamAdminOnly,
    this.action,
    this.actionParam,
    this.actionText,
    this.description,
    this.image,
    this.title,
  });

  /// Notice ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Does this notice apply only to sysadmins
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? sysAdminOnly;

  /// Does this notice apply only to team admins
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? teamAdminOnly;

  /// Optional action to perform on action button click. (defaults to closing the notice)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? action;

  /// Optional action parameter.  Example: {\"action\": \"url\", actionParam: \"/console/some-page\"}
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? actionParam;

  /// Optional override for the action button text (defaults to OK)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? actionText;

  /// Notice content. Use {{Mattermost}} instead of plain text to support white-labeling. Text supports Markdown.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// URL of image to display
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  /// Notice title. Use {{Mattermost}} instead of plain text to support white-labeling. Text supports Markdown.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmNotice &&
          other.id == id &&
          other.sysAdminOnly == sysAdminOnly &&
          other.teamAdminOnly == teamAdminOnly &&
          other.action == action &&
          other.actionParam == actionParam &&
          other.actionText == actionText &&
          other.description == description &&
          other.image == image &&
          other.title == title;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (sysAdminOnly == null ? 0 : sysAdminOnly!.hashCode) +
      (teamAdminOnly == null ? 0 : teamAdminOnly!.hashCode) +
      (action == null ? 0 : action!.hashCode) +
      (actionParam == null ? 0 : actionParam!.hashCode) +
      (actionText == null ? 0 : actionText!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (image == null ? 0 : image!.hashCode) +
      (title == null ? 0 : title!.hashCode);

  @override
  String toString() =>
      'MmNotice[id=$id, sysAdminOnly=$sysAdminOnly, teamAdminOnly=$teamAdminOnly, action=$action, actionParam=$actionParam, actionText=$actionText, description=$description, image=$image, title=$title]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (sysAdminOnly != null) {
      _json[r'sysAdminOnly'] = sysAdminOnly;
    }
    if (teamAdminOnly != null) {
      _json[r'teamAdminOnly'] = teamAdminOnly;
    }
    if (action != null) {
      _json[r'action'] = action;
    }
    if (actionParam != null) {
      _json[r'actionParam'] = actionParam;
    }
    if (actionText != null) {
      _json[r'actionText'] = actionText;
    }
    if (description != null) {
      _json[r'description'] = description;
    }
    if (image != null) {
      _json[r'image'] = image;
    }
    if (title != null) {
      _json[r'title'] = title;
    }
    return _json;
  }

  /// Returns a new [MmNotice] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmNotice? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmNotice[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmNotice[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmNotice(
        id: mapValueOfType<String>(json, r'id'),
        sysAdminOnly: mapValueOfType<bool>(json, r'sysAdminOnly'),
        teamAdminOnly: mapValueOfType<bool>(json, r'teamAdminOnly'),
        action: mapValueOfType<String>(json, r'action'),
        actionParam: mapValueOfType<String>(json, r'actionParam'),
        actionText: mapValueOfType<String>(json, r'actionText'),
        description: mapValueOfType<String>(json, r'description'),
        image: mapValueOfType<String>(json, r'image'),
        title: mapValueOfType<String>(json, r'title'),
      );
    }
    return null;
  }

  static List<MmNotice>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmNotice>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmNotice.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmNotice> mapFromJson(dynamic json) {
    final map = <String, MmNotice>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmNotice.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmNotice-objects as value to a dart map
  static Map<String, List<MmNotice>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmNotice>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmNotice.listFromJson(
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
