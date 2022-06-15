//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmPluginManifestWebapp {
  /// Returns a new [MmPluginManifestWebapp] instance.
  MmPluginManifestWebapp({
    this.bundlePath,
  });

  /// Path to the webapp JavaScript bundle.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bundlePath;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MmPluginManifestWebapp && other.bundlePath == bundlePath;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (bundlePath == null ? 0 : bundlePath!.hashCode);

  @override
  String toString() => 'MmPluginManifestWebapp[bundlePath=$bundlePath]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (bundlePath != null) {
      _json[r'bundle_path'] = bundlePath;
    }
    return _json;
  }

  /// Returns a new [MmPluginManifestWebapp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmPluginManifestWebapp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmPluginManifestWebapp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmPluginManifestWebapp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmPluginManifestWebapp(
        bundlePath: mapValueOfType<String>(json, r'bundle_path'),
      );
    }
    return null;
  }

  static List<MmPluginManifestWebapp>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmPluginManifestWebapp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmPluginManifestWebapp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmPluginManifestWebapp> mapFromJson(dynamic json) {
    final map = <String, MmPluginManifestWebapp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmPluginManifestWebapp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmPluginManifestWebapp-objects as value to a dart map
  static Map<String, List<MmPluginManifestWebapp>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmPluginManifestWebapp>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmPluginManifestWebapp.listFromJson(
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
