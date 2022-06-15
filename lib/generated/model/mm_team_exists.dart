//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMTeamExists {
  /// Returns a new [MMTeamExists] instance.
  MMTeamExists({
    this.exists,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? exists;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MMTeamExists && other.exists == exists;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (exists == null ? 0 : exists!.hashCode);

  @override
  String toString() => 'MMTeamExists[exists=$exists]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (exists != null) {
      _json[r'exists'] = exists;
    }
    return _json;
  }

  /// Returns a new [MMTeamExists] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMTeamExists? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMTeamExists[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMTeamExists[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMTeamExists(
        exists: mapValueOfType<bool>(json, r'exists'),
      );
    }
    return null;
  }

  static List<MMTeamExists>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMTeamExists>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMTeamExists.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMTeamExists> mapFromJson(dynamic json) {
    final map = <String, MMTeamExists>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMTeamExists.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMTeamExists-objects as value to a dart map
  static Map<String, List<MMTeamExists>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMTeamExists>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMTeamExists.listFromJson(
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
