//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmAutocompleteSuggestion {
  /// Returns a new [MmAutocompleteSuggestion] instance.
  MmAutocompleteSuggestion({
    this.complete,
    this.suggestion,
    this.hint,
    this.description,
    this.iconData,
  });

  /// Completed suggestion
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? complete;

  /// Predicted text user might want to input
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? suggestion;

  /// Hint about suggested input
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hint;

  /// Description of the suggested command
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Base64 encoded svg image
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iconData;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmAutocompleteSuggestion &&
          other.complete == complete &&
          other.suggestion == suggestion &&
          other.hint == hint &&
          other.description == description &&
          other.iconData == iconData;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (complete == null ? 0 : complete!.hashCode) +
      (suggestion == null ? 0 : suggestion!.hashCode) +
      (hint == null ? 0 : hint!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (iconData == null ? 0 : iconData!.hashCode);

  @override
  String toString() =>
      'MmAutocompleteSuggestion[complete=$complete, suggestion=$suggestion, hint=$hint, description=$description, iconData=$iconData]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (complete != null) {
      _json[r'Complete'] = complete;
    }
    if (suggestion != null) {
      _json[r'Suggestion'] = suggestion;
    }
    if (hint != null) {
      _json[r'Hint'] = hint;
    }
    if (description != null) {
      _json[r'Description'] = description;
    }
    if (iconData != null) {
      _json[r'IconData'] = iconData;
    }
    return _json;
  }

  /// Returns a new [MmAutocompleteSuggestion] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmAutocompleteSuggestion? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmAutocompleteSuggestion[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmAutocompleteSuggestion[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmAutocompleteSuggestion(
        complete: mapValueOfType<String>(json, r'Complete'),
        suggestion: mapValueOfType<String>(json, r'Suggestion'),
        hint: mapValueOfType<String>(json, r'Hint'),
        description: mapValueOfType<String>(json, r'Description'),
        iconData: mapValueOfType<String>(json, r'IconData'),
      );
    }
    return null;
  }

  static List<MmAutocompleteSuggestion>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmAutocompleteSuggestion>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmAutocompleteSuggestion.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmAutocompleteSuggestion> mapFromJson(dynamic json) {
    final map = <String, MmAutocompleteSuggestion>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmAutocompleteSuggestion.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmAutocompleteSuggestion-objects as value to a dart map
  static Map<String, List<MmAutocompleteSuggestion>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmAutocompleteSuggestion>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmAutocompleteSuggestion.listFromJson(
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
