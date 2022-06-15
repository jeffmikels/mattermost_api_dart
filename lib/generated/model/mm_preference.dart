//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmPreference {
  /// Returns a new [MmPreference] instance.
  MmPreference({
    this.userId,
    this.category,
    this.name,
    this.value,
  });

  /// The ID of the user that owns this preference
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmPreference &&
          other.userId == userId &&
          other.category == category &&
          other.name == name &&
          other.value == value;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (userId == null ? 0 : userId!.hashCode) +
      (category == null ? 0 : category!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'MmPreference[userId=$userId, category=$category, name=$name, value=$value]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (userId != null) {
      _json[r'user_id'] = userId;
    }
    if (category != null) {
      _json[r'category'] = category;
    }
    if (name != null) {
      _json[r'name'] = name;
    }
    if (value != null) {
      _json[r'value'] = value;
    }
    return _json;
  }

  /// Returns a new [MmPreference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmPreference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmPreference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmPreference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmPreference(
        userId: mapValueOfType<String>(json, r'user_id'),
        category: mapValueOfType<String>(json, r'category'),
        name: mapValueOfType<String>(json, r'name'),
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<MmPreference>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmPreference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmPreference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmPreference> mapFromJson(dynamic json) {
    final map = <String, MmPreference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmPreference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmPreference-objects as value to a dart map
  static Map<String, List<MmPreference>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmPreference>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmPreference.listFromJson(
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
