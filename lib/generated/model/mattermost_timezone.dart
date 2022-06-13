//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostTimezone {
  /// Returns a new [MattermostTimezone] instance.
  MattermostTimezone({
    this.useAutomaticTimezone,
    this.manualTimezone,
    this.automaticTimezone,
  });

  /// Set to \"true\" to use the browser/system timezone, \"false\" to set manually. Defaults to \"true\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? useAutomaticTimezone;

  /// Value when setting manually the timezone, i.e. \"Europe/Berlin\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? manualTimezone;

  /// This value is set automatically when the \"useAutomaticTimezone\" is set to \"true\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? automaticTimezone;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MattermostTimezone &&
          other.useAutomaticTimezone == useAutomaticTimezone &&
          other.manualTimezone == manualTimezone &&
          other.automaticTimezone == automaticTimezone;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (useAutomaticTimezone == null ? 0 : useAutomaticTimezone!.hashCode) +
      (manualTimezone == null ? 0 : manualTimezone!.hashCode) +
      (automaticTimezone == null ? 0 : automaticTimezone!.hashCode);

  @override
  String toString() =>
      'MattermostTimezone[useAutomaticTimezone=$useAutomaticTimezone, manualTimezone=$manualTimezone, automaticTimezone=$automaticTimezone]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (useAutomaticTimezone != null) {
      _json[r'useAutomaticTimezone'] = useAutomaticTimezone;
    }
    if (manualTimezone != null) {
      _json[r'manualTimezone'] = manualTimezone;
    }
    if (automaticTimezone != null) {
      _json[r'automaticTimezone'] = automaticTimezone;
    }
    return _json;
  }

  /// Returns a new [MattermostTimezone] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostTimezone? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostTimezone[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostTimezone[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostTimezone(
        useAutomaticTimezone: mapValueOfType<bool>(json, r'useAutomaticTimezone'),
        manualTimezone: mapValueOfType<String>(json, r'manualTimezone'),
        automaticTimezone: mapValueOfType<String>(json, r'automaticTimezone'),
      );
    }
    return null;
  }

  static List<MattermostTimezone>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MattermostTimezone>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostTimezone.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostTimezone> mapFromJson(dynamic json) {
    final map = <String, MattermostTimezone>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostTimezone.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostTimezone-objects as value to a dart map
  static Map<String, List<MattermostTimezone>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MattermostTimezone>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostTimezone.listFromJson(
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
