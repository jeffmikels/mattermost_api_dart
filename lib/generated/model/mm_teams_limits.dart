//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMTeamsLimits {
  /// Returns a new [MMTeamsLimits] instance.
  MMTeamsLimits({
    this.active,
  });

  int? active;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MMTeamsLimits && other.active == active;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (active == null ? 0 : active!.hashCode);

  @override
  String toString() => 'MMTeamsLimits[active=$active]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (active != null) {
      _json[r'active'] = active;
    }
    return _json;
  }

  /// Returns a new [MMTeamsLimits] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMTeamsLimits? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMTeamsLimits[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMTeamsLimits[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMTeamsLimits(
        active: mapValueOfType<int>(json, r'active'),
      );
    }
    return null;
  }

  static List<MMTeamsLimits>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMTeamsLimits>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMTeamsLimits.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMTeamsLimits> mapFromJson(dynamic json) {
    final map = <String, MMTeamsLimits>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMTeamsLimits.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMTeamsLimits-objects as value to a dart map
  static Map<String, List<MMTeamsLimits>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMTeamsLimits>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMTeamsLimits.listFromJson(
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
