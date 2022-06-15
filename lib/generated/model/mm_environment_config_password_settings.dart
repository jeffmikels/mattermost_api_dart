//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmEnvironmentConfigPasswordSettings {
  /// Returns a new [MmEnvironmentConfigPasswordSettings] instance.
  MmEnvironmentConfigPasswordSettings({
    this.minimumLength,
    this.lowercase,
    this.number,
    this.uppercase,
    this.symbol,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? minimumLength;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? lowercase;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? number;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? uppercase;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? symbol;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmEnvironmentConfigPasswordSettings &&
          other.minimumLength == minimumLength &&
          other.lowercase == lowercase &&
          other.number == number &&
          other.uppercase == uppercase &&
          other.symbol == symbol;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (minimumLength == null ? 0 : minimumLength!.hashCode) +
      (lowercase == null ? 0 : lowercase!.hashCode) +
      (number == null ? 0 : number!.hashCode) +
      (uppercase == null ? 0 : uppercase!.hashCode) +
      (symbol == null ? 0 : symbol!.hashCode);

  @override
  String toString() =>
      'MmEnvironmentConfigPasswordSettings[minimumLength=$minimumLength, lowercase=$lowercase, number=$number, uppercase=$uppercase, symbol=$symbol]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (minimumLength != null) {
      _json[r'MinimumLength'] = minimumLength;
    }
    if (lowercase != null) {
      _json[r'Lowercase'] = lowercase;
    }
    if (number != null) {
      _json[r'Number'] = number;
    }
    if (uppercase != null) {
      _json[r'Uppercase'] = uppercase;
    }
    if (symbol != null) {
      _json[r'Symbol'] = symbol;
    }
    return _json;
  }

  /// Returns a new [MmEnvironmentConfigPasswordSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmEnvironmentConfigPasswordSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(
              json.containsKey(key), 'Required key "MmEnvironmentConfigPasswordSettings[$key]" is missing from JSON.');
          assert(
              json[key] != null, 'Required key "MmEnvironmentConfigPasswordSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmEnvironmentConfigPasswordSettings(
        minimumLength: mapValueOfType<bool>(json, r'MinimumLength'),
        lowercase: mapValueOfType<bool>(json, r'Lowercase'),
        number: mapValueOfType<bool>(json, r'Number'),
        uppercase: mapValueOfType<bool>(json, r'Uppercase'),
        symbol: mapValueOfType<bool>(json, r'Symbol'),
      );
    }
    return null;
  }

  static List<MmEnvironmentConfigPasswordSettings>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmEnvironmentConfigPasswordSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmEnvironmentConfigPasswordSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmEnvironmentConfigPasswordSettings> mapFromJson(dynamic json) {
    final map = <String, MmEnvironmentConfigPasswordSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmEnvironmentConfigPasswordSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmEnvironmentConfigPasswordSettings-objects as value to a dart map
  static Map<String, List<MmEnvironmentConfigPasswordSettings>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmEnvironmentConfigPasswordSettings>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmEnvironmentConfigPasswordSettings.listFromJson(
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
