//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class PluginManifestWebapp {
  /// Returns a new [PluginManifestWebapp] instance.
  PluginManifestWebapp({
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
  bool operator ==(Object other) => identical(this, other) || other is PluginManifestWebapp &&
     other.bundlePath == bundlePath;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bundlePath == null ? 0 : bundlePath!.hashCode);

  @override
  String toString() => 'PluginManifestWebapp[bundlePath=$bundlePath]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (bundlePath != null) {
      _json[r'bundle_path'] = bundlePath;
    }
    return _json;
  }

  /// Returns a new [PluginManifestWebapp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PluginManifestWebapp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PluginManifestWebapp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PluginManifestWebapp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PluginManifestWebapp(
        bundlePath: mapValueOfType<String>(json, r'bundle_path'),
      );
    }
    return null;
  }

  static List<PluginManifestWebapp>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PluginManifestWebapp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PluginManifestWebapp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PluginManifestWebapp> mapFromJson(dynamic json) {
    final map = <String, PluginManifestWebapp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PluginManifestWebapp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PluginManifestWebapp-objects as value to a dart map
  static Map<String, List<PluginManifestWebapp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PluginManifestWebapp>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PluginManifestWebapp.listFromJson(entry.value, growable: growable,);
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

