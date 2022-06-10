//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MigrateAuthToSamlRequest {
  /// Returns a new [MigrateAuthToSamlRequest] instance.
  MigrateAuthToSamlRequest({
    required this.from,
    required this.matches,
    required this.auto,
  });

  /// The current authentication type for the matched users.
  String from;

  /// Users map.
  Object matches;

  bool auto;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MigrateAuthToSamlRequest &&
     other.from == from &&
     other.matches == matches &&
     other.auto == auto;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (from.hashCode) +
    (matches.hashCode) +
    (auto.hashCode);

  @override
  String toString() => 'MigrateAuthToSamlRequest[from=$from, matches=$matches, auto=$auto]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'from'] = from;
      _json[r'matches'] = matches;
      _json[r'auto'] = auto;
    return _json;
  }

  /// Returns a new [MigrateAuthToSamlRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MigrateAuthToSamlRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MigrateAuthToSamlRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MigrateAuthToSamlRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MigrateAuthToSamlRequest(
        from: mapValueOfType<String>(json, r'from')!,
        matches: mapValueOfType<Object>(json, r'matches')!,
        auto: mapValueOfType<bool>(json, r'auto')!,
      );
    }
    return null;
  }

  static List<MigrateAuthToSamlRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MigrateAuthToSamlRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MigrateAuthToSamlRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MigrateAuthToSamlRequest> mapFromJson(dynamic json) {
    final map = <String, MigrateAuthToSamlRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MigrateAuthToSamlRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MigrateAuthToSamlRequest-objects as value to a dart map
  static Map<String, List<MigrateAuthToSamlRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MigrateAuthToSamlRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MigrateAuthToSamlRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'from',
    'matches',
    'auto',
  };
}

