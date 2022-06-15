//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMLDAPGroupsPaged {
  /// Returns a new [MMLDAPGroupsPaged] instance.
  MMLDAPGroupsPaged({
    this.count,
    this.groups = const [],
  });

  /// Total number of groups
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? count;

  List<MMLDAPGroup> groups;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MMLDAPGroupsPaged && other.count == count && other.groups == groups;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (count == null ? 0 : count!.hashCode) + (groups.hashCode);

  @override
  String toString() => 'MMLDAPGroupsPaged[count=$count, groups=$groups]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (count != null) {
      _json[r'count'] = count;
    }
    _json[r'groups'] = groups;
    return _json;
  }

  /// Returns a new [MMLDAPGroupsPaged] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMLDAPGroupsPaged? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMLDAPGroupsPaged[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMLDAPGroupsPaged[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMLDAPGroupsPaged(
        count: json[r'count'] == null ? null : num.parse(json[r'count'].toString()),
        groups: MMLDAPGroup.listFromJson(json[r'groups']) ?? const [],
      );
    }
    return null;
  }

  static List<MMLDAPGroupsPaged>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMLDAPGroupsPaged>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMLDAPGroupsPaged.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMLDAPGroupsPaged> mapFromJson(dynamic json) {
    final map = <String, MMLDAPGroupsPaged>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMLDAPGroupsPaged.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMLDAPGroupsPaged-objects as value to a dart map
  static Map<String, List<MMLDAPGroupsPaged>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMLDAPGroupsPaged>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMLDAPGroupsPaged.listFromJson(
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
