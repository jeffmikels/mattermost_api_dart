//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostUserAutocompleteInTeam {
  /// Returns a new [MattermostUserAutocompleteInTeam] instance.
  MattermostUserAutocompleteInTeam({
    this.inTeam = const [],
  });

  /// A list of user objects in the team
  List<MattermostUser> inTeam;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MattermostUserAutocompleteInTeam &&
     other.inTeam == inTeam;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (inTeam.hashCode);

  @override
  String toString() => 'MattermostUserAutocompleteInTeam[inTeam=$inTeam]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'in_team'] = inTeam;
    return _json;
  }

  /// Returns a new [MattermostUserAutocompleteInTeam] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostUserAutocompleteInTeam? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostUserAutocompleteInTeam[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostUserAutocompleteInTeam[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostUserAutocompleteInTeam(
        inTeam: MattermostUser.listFromJson(json[r'in_team']) ?? const [],
      );
    }
    return null;
  }

  static List<MattermostUserAutocompleteInTeam>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MattermostUserAutocompleteInTeam>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostUserAutocompleteInTeam.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostUserAutocompleteInTeam> mapFromJson(dynamic json) {
    final map = <String, MattermostUserAutocompleteInTeam>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostUserAutocompleteInTeam.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostUserAutocompleteInTeam-objects as value to a dart map
  static Map<String, List<MattermostUserAutocompleteInTeam>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MattermostUserAutocompleteInTeam>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostUserAutocompleteInTeam.listFromJson(entry.value, growable: growable,);
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

