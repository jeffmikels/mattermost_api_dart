//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class UserThreads {
  /// Returns a new [UserThreads] instance.
  UserThreads({
    this.total,
    this.threads = const [],
  });

  /// Total number of threads (used for paging)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  /// Array of threads
  List<UserThread> threads;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserThreads &&
     other.total == total &&
     other.threads == threads;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (total == null ? 0 : total!.hashCode) +
    (threads.hashCode);

  @override
  String toString() => 'UserThreads[total=$total, threads=$threads]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (total != null) {
      _json[r'total'] = total;
    }
      _json[r'threads'] = threads;
    return _json;
  }

  /// Returns a new [UserThreads] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserThreads? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserThreads[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserThreads[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserThreads(
        total: mapValueOfType<int>(json, r'total'),
        threads: UserThread.listFromJson(json[r'threads']) ?? const [],
      );
    }
    return null;
  }

  static List<UserThreads>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserThreads>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserThreads.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserThreads> mapFromJson(dynamic json) {
    final map = <String, UserThreads>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserThreads.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserThreads-objects as value to a dart map
  static Map<String, List<UserThreads>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserThreads>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserThreads.listFromJson(entry.value, growable: growable,);
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

