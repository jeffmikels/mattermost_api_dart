//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostUsersStats {
  /// Returns a new [MattermostUsersStats] instance.
  MattermostUsersStats({
    this.totalUsersCount,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalUsersCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MattermostUsersStats &&
     other.totalUsersCount == totalUsersCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (totalUsersCount == null ? 0 : totalUsersCount!.hashCode);

  @override
  String toString() => 'MattermostUsersStats[totalUsersCount=$totalUsersCount]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (totalUsersCount != null) {
      _json[r'total_users_count'] = totalUsersCount;
    }
    return _json;
  }

  /// Returns a new [MattermostUsersStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostUsersStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostUsersStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostUsersStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostUsersStats(
        totalUsersCount: mapValueOfType<int>(json, r'total_users_count'),
      );
    }
    return null;
  }

  static List<MattermostUsersStats>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MattermostUsersStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostUsersStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostUsersStats> mapFromJson(dynamic json) {
    final map = <String, MattermostUsersStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostUsersStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostUsersStats-objects as value to a dart map
  static Map<String, List<MattermostUsersStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MattermostUsersStats>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostUsersStats.listFromJson(entry.value, growable: growable,);
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

