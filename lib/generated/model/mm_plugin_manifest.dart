//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmPluginManifest {
  /// Returns a new [MmPluginManifest] instance.
  MmPluginManifest({
    this.id,
    this.name,
    this.description,
    this.version,
    this.minServerVersion,
    this.backend,
    this.server,
    this.webapp,
    this.settingsSchema,
  });

  /// Globally unique identifier that represents the plugin.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name of the plugin.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Description of what the plugin is and does.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Version number of the plugin.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  /// The minimum Mattermost server version required for the plugin.  Available as server version 5.6.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? minServerVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MmPluginManifestBackend? backend;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MmPluginManifestServer? server;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MmPluginManifestWebapp? webapp;

  /// Settings schema used to define the System Console UI for the plugin.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Map? settingsSchema;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmPluginManifest &&
          other.id == id &&
          other.name == name &&
          other.description == description &&
          other.version == version &&
          other.minServerVersion == minServerVersion &&
          other.backend == backend &&
          other.server == server &&
          other.webapp == webapp &&
          other.settingsSchema == settingsSchema;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (version == null ? 0 : version!.hashCode) +
      (minServerVersion == null ? 0 : minServerVersion!.hashCode) +
      (backend == null ? 0 : backend!.hashCode) +
      (server == null ? 0 : server!.hashCode) +
      (webapp == null ? 0 : webapp!.hashCode) +
      (settingsSchema == null ? 0 : settingsSchema!.hashCode);

  @override
  String toString() =>
      'MmPluginManifest[id=$id, name=$name, description=$description, version=$version, minServerVersion=$minServerVersion, backend=$backend, server=$server, webapp=$webapp, settingsSchema=$settingsSchema]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (name != null) {
      _json[r'name'] = name;
    }
    if (description != null) {
      _json[r'description'] = description;
    }
    if (version != null) {
      _json[r'version'] = version;
    }
    if (minServerVersion != null) {
      _json[r'min_server_version'] = minServerVersion;
    }
    if (backend != null) {
      _json[r'backend'] = backend;
    }
    if (server != null) {
      _json[r'server'] = server;
    }
    if (webapp != null) {
      _json[r'webapp'] = webapp;
    }
    if (settingsSchema != null) {
      _json[r'settings_schema'] = settingsSchema;
    }
    return _json;
  }

  /// Returns a new [MmPluginManifest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmPluginManifest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmPluginManifest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmPluginManifest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmPluginManifest(
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        version: mapValueOfType<String>(json, r'version'),
        minServerVersion: mapValueOfType<String>(json, r'min_server_version'),
        backend: MmPluginManifestBackend.fromJson(json[r'backend']),
        server: MmPluginManifestServer.fromJson(json[r'server']),
        webapp: MmPluginManifestWebapp.fromJson(json[r'webapp']),
        settingsSchema: mapValueOfType<Map>(json, r'settings_schema'),
      );
    }
    return null;
  }

  static List<MmPluginManifest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmPluginManifest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmPluginManifest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmPluginManifest> mapFromJson(dynamic json) {
    final map = <String, MmPluginManifest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmPluginManifest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmPluginManifest-objects as value to a dart map
  static Map<String, List<MmPluginManifest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmPluginManifest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmPluginManifest.listFromJson(
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
