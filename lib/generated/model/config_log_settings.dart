//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class ConfigLogSettings {
  /// Returns a new [ConfigLogSettings] instance.
  ConfigLogSettings({
    this.enableConsole,
    this.consoleLevel,
    this.enableFile,
    this.fileLevel,
    this.fileLocation,
    this.enableWebhookDebugging,
    this.enableDiagnostics,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableConsole;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? consoleLevel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableFile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fileLevel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fileLocation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableWebhookDebugging;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableDiagnostics;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConfigLogSettings &&
     other.enableConsole == enableConsole &&
     other.consoleLevel == consoleLevel &&
     other.enableFile == enableFile &&
     other.fileLevel == fileLevel &&
     other.fileLocation == fileLocation &&
     other.enableWebhookDebugging == enableWebhookDebugging &&
     other.enableDiagnostics == enableDiagnostics;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enableConsole == null ? 0 : enableConsole!.hashCode) +
    (consoleLevel == null ? 0 : consoleLevel!.hashCode) +
    (enableFile == null ? 0 : enableFile!.hashCode) +
    (fileLevel == null ? 0 : fileLevel!.hashCode) +
    (fileLocation == null ? 0 : fileLocation!.hashCode) +
    (enableWebhookDebugging == null ? 0 : enableWebhookDebugging!.hashCode) +
    (enableDiagnostics == null ? 0 : enableDiagnostics!.hashCode);

  @override
  String toString() => 'ConfigLogSettings[enableConsole=$enableConsole, consoleLevel=$consoleLevel, enableFile=$enableFile, fileLevel=$fileLevel, fileLocation=$fileLocation, enableWebhookDebugging=$enableWebhookDebugging, enableDiagnostics=$enableDiagnostics]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (enableConsole != null) {
      _json[r'EnableConsole'] = enableConsole;
    }
    if (consoleLevel != null) {
      _json[r'ConsoleLevel'] = consoleLevel;
    }
    if (enableFile != null) {
      _json[r'EnableFile'] = enableFile;
    }
    if (fileLevel != null) {
      _json[r'FileLevel'] = fileLevel;
    }
    if (fileLocation != null) {
      _json[r'FileLocation'] = fileLocation;
    }
    if (enableWebhookDebugging != null) {
      _json[r'EnableWebhookDebugging'] = enableWebhookDebugging;
    }
    if (enableDiagnostics != null) {
      _json[r'EnableDiagnostics'] = enableDiagnostics;
    }
    return _json;
  }

  /// Returns a new [ConfigLogSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConfigLogSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConfigLogSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConfigLogSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConfigLogSettings(
        enableConsole: mapValueOfType<bool>(json, r'EnableConsole'),
        consoleLevel: mapValueOfType<String>(json, r'ConsoleLevel'),
        enableFile: mapValueOfType<bool>(json, r'EnableFile'),
        fileLevel: mapValueOfType<String>(json, r'FileLevel'),
        fileLocation: mapValueOfType<String>(json, r'FileLocation'),
        enableWebhookDebugging: mapValueOfType<bool>(json, r'EnableWebhookDebugging'),
        enableDiagnostics: mapValueOfType<bool>(json, r'EnableDiagnostics'),
      );
    }
    return null;
  }

  static List<ConfigLogSettings>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConfigLogSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConfigLogSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConfigLogSettings> mapFromJson(dynamic json) {
    final map = <String, ConfigLogSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConfigLogSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConfigLogSettings-objects as value to a dart map
  static Map<String, List<ConfigLogSettings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConfigLogSettings>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConfigLogSettings.listFromJson(entry.value, growable: growable,);
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

