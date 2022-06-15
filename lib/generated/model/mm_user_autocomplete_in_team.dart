//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmUserAutocompleteInTeam {
  /// Returns a new [MmUserAutocompleteInTeam] instance.
  MmUserAutocompleteInTeam({
    this.inTeam = const [],
  });

  /// A list of user objects in the team
  List<MmUser> inTeam;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MmUserAutocompleteInTeam && other.inTeam == inTeam;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (inTeam.hashCode);

  @override
  String toString() => 'MmUserAutocompleteInTeam[inTeam=$inTeam]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'in_team'] = inTeam;
    return _json;
  }

  /// Returns a new [MmUserAutocompleteInTeam] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmUserAutocompleteInTeam? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmUserAutocompleteInTeam[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmUserAutocompleteInTeam[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmUserAutocompleteInTeam(
        inTeam: MmUser.listFromJson(json[r'in_team']) ?? const [],
      );
    }
    return null;
  }

  static List<MmUserAutocompleteInTeam>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmUserAutocompleteInTeam>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmUserAutocompleteInTeam.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmUserAutocompleteInTeam> mapFromJson(dynamic json) {
    final map = <String, MmUserAutocompleteInTeam>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUserAutocompleteInTeam.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmUserAutocompleteInTeam-objects as value to a dart map
  static Map<String, List<MmUserAutocompleteInTeam>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmUserAutocompleteInTeam>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUserAutocompleteInTeam.listFromJson(
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
