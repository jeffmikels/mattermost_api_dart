//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MigrateAuthToLdapRequest {
  /// Returns a new [MigrateAuthToLdapRequest] instance.
  MigrateAuthToLdapRequest({
    required this.from,
    required this.matchField,
    required this.force,
  });

  /// The current authentication type for the matched users.
  String from;

  /// Foreign user field name to match.
  String matchField;

  bool force;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MigrateAuthToLdapRequest &&
     other.from == from &&
     other.matchField == matchField &&
     other.force == force;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (from.hashCode) +
    (matchField.hashCode) +
    (force.hashCode);

  @override
  String toString() => 'MigrateAuthToLdapRequest[from=$from, matchField=$matchField, force=$force]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'from'] = from;
      _json[r'match_field'] = matchField;
      _json[r'force'] = force;
    return _json;
  }

  /// Returns a new [MigrateAuthToLdapRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MigrateAuthToLdapRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MigrateAuthToLdapRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MigrateAuthToLdapRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MigrateAuthToLdapRequest(
        from: mapValueOfType<String>(json, r'from')!,
        matchField: mapValueOfType<String>(json, r'match_field')!,
        force: mapValueOfType<bool>(json, r'force')!,
      );
    }
    return null;
  }

  static List<MigrateAuthToLdapRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MigrateAuthToLdapRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MigrateAuthToLdapRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MigrateAuthToLdapRequest> mapFromJson(dynamic json) {
    final map = <String, MigrateAuthToLdapRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MigrateAuthToLdapRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MigrateAuthToLdapRequest-objects as value to a dart map
  static Map<String, List<MigrateAuthToLdapRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MigrateAuthToLdapRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MigrateAuthToLdapRequest.listFromJson(entry.value, growable: growable,);
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
    'match_field',
    'force',
  };
}

