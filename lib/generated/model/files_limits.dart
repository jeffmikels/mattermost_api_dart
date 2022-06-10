//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class FilesLimits {
  /// Returns a new [FilesLimits] instance.
  FilesLimits({
    this.totalStorage,
  });

  int? totalStorage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FilesLimits &&
     other.totalStorage == totalStorage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (totalStorage == null ? 0 : totalStorage!.hashCode);

  @override
  String toString() => 'FilesLimits[totalStorage=$totalStorage]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (totalStorage != null) {
      _json[r'total_storage'] = totalStorage;
    }
    return _json;
  }

  /// Returns a new [FilesLimits] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FilesLimits? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FilesLimits[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FilesLimits[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FilesLimits(
        totalStorage: mapValueOfType<int>(json, r'total_storage'),
      );
    }
    return null;
  }

  static List<FilesLimits>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FilesLimits>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilesLimits.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FilesLimits> mapFromJson(dynamic json) {
    final map = <String, FilesLimits>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FilesLimits.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FilesLimits-objects as value to a dart map
  static Map<String, List<FilesLimits>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FilesLimits>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FilesLimits.listFromJson(entry.value, growable: growable,);
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

