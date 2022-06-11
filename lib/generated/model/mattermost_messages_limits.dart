//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostMessagesLimits {
  /// Returns a new [MattermostMessagesLimits] instance.
  MattermostMessagesLimits({
    this.history,
  });

  int? history;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MattermostMessagesLimits &&
     other.history == history;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (history == null ? 0 : history!.hashCode);

  @override
  String toString() => 'MattermostMessagesLimits[history=$history]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (history != null) {
      _json[r'history'] = history;
    }
    return _json;
  }

  /// Returns a new [MattermostMessagesLimits] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostMessagesLimits? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostMessagesLimits[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostMessagesLimits[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostMessagesLimits(
        history: mapValueOfType<int>(json, r'history'),
      );
    }
    return null;
  }

  static List<MattermostMessagesLimits>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MattermostMessagesLimits>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostMessagesLimits.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostMessagesLimits> mapFromJson(dynamic json) {
    final map = <String, MattermostMessagesLimits>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostMessagesLimits.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostMessagesLimits-objects as value to a dart map
  static Map<String, List<MattermostMessagesLimits>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MattermostMessagesLimits>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostMessagesLimits.listFromJson(entry.value, growable: growable,);
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

