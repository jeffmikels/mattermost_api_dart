//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMPluginManifestServerExecutables {
  /// Returns a new [MMPluginManifestServerExecutables] instance.
  MMPluginManifestServerExecutables({
    this.linuxAmd64,
    this.darwinAmd64,
    this.windowsAmd64,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? linuxAmd64;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? darwinAmd64;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? windowsAmd64;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMPluginManifestServerExecutables &&
          other.linuxAmd64 == linuxAmd64 &&
          other.darwinAmd64 == darwinAmd64 &&
          other.windowsAmd64 == windowsAmd64;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (linuxAmd64 == null ? 0 : linuxAmd64!.hashCode) +
      (darwinAmd64 == null ? 0 : darwinAmd64!.hashCode) +
      (windowsAmd64 == null ? 0 : windowsAmd64!.hashCode);

  @override
  String toString() =>
      'MMPluginManifestServerExecutables[linuxAmd64=$linuxAmd64, darwinAmd64=$darwinAmd64, windowsAmd64=$windowsAmd64]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (linuxAmd64 != null) {
      _json[r'linux-amd64'] = linuxAmd64;
    }
    if (darwinAmd64 != null) {
      _json[r'darwin-amd64'] = darwinAmd64;
    }
    if (windowsAmd64 != null) {
      _json[r'windows-amd64'] = windowsAmd64;
    }
    return _json;
  }

  /// Returns a new [MMPluginManifestServerExecutables] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMPluginManifestServerExecutables? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMPluginManifestServerExecutables[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMPluginManifestServerExecutables[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMPluginManifestServerExecutables(
        linuxAmd64: mapValueOfType<String>(json, r'linux-amd64'),
        darwinAmd64: mapValueOfType<String>(json, r'darwin-amd64'),
        windowsAmd64: mapValueOfType<String>(json, r'windows-amd64'),
      );
    }
    return null;
  }

  static List<MMPluginManifestServerExecutables>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMPluginManifestServerExecutables>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMPluginManifestServerExecutables.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMPluginManifestServerExecutables> mapFromJson(dynamic json) {
    final map = <String, MMPluginManifestServerExecutables>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMPluginManifestServerExecutables.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMPluginManifestServerExecutables-objects as value to a dart map
  static Map<String, List<MMPluginManifestServerExecutables>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMPluginManifestServerExecutables>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMPluginManifestServerExecutables.listFromJson(
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
