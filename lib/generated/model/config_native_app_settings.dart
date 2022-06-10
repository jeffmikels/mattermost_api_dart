//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class ConfigNativeAppSettings {
  /// Returns a new [ConfigNativeAppSettings] instance.
  ConfigNativeAppSettings({
    this.appDownloadLink,
    this.androidAppDownloadLink,
    this.iosAppDownloadLink,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? appDownloadLink;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? androidAppDownloadLink;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iosAppDownloadLink;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConfigNativeAppSettings &&
     other.appDownloadLink == appDownloadLink &&
     other.androidAppDownloadLink == androidAppDownloadLink &&
     other.iosAppDownloadLink == iosAppDownloadLink;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (appDownloadLink == null ? 0 : appDownloadLink!.hashCode) +
    (androidAppDownloadLink == null ? 0 : androidAppDownloadLink!.hashCode) +
    (iosAppDownloadLink == null ? 0 : iosAppDownloadLink!.hashCode);

  @override
  String toString() => 'ConfigNativeAppSettings[appDownloadLink=$appDownloadLink, androidAppDownloadLink=$androidAppDownloadLink, iosAppDownloadLink=$iosAppDownloadLink]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (appDownloadLink != null) {
      _json[r'AppDownloadLink'] = appDownloadLink;
    }
    if (androidAppDownloadLink != null) {
      _json[r'AndroidAppDownloadLink'] = androidAppDownloadLink;
    }
    if (iosAppDownloadLink != null) {
      _json[r'IosAppDownloadLink'] = iosAppDownloadLink;
    }
    return _json;
  }

  /// Returns a new [ConfigNativeAppSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConfigNativeAppSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConfigNativeAppSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConfigNativeAppSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConfigNativeAppSettings(
        appDownloadLink: mapValueOfType<String>(json, r'AppDownloadLink'),
        androidAppDownloadLink: mapValueOfType<String>(json, r'AndroidAppDownloadLink'),
        iosAppDownloadLink: mapValueOfType<String>(json, r'IosAppDownloadLink'),
      );
    }
    return null;
  }

  static List<ConfigNativeAppSettings>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConfigNativeAppSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConfigNativeAppSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConfigNativeAppSettings> mapFromJson(dynamic json) {
    final map = <String, ConfigNativeAppSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConfigNativeAppSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConfigNativeAppSettings-objects as value to a dart map
  static Map<String, List<ConfigNativeAppSettings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConfigNativeAppSettings>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConfigNativeAppSettings.listFromJson(entry.value, growable: growable,);
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

