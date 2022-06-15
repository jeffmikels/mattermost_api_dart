//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMMarketplacePlugin {
  /// Returns a new [MMMarketplacePlugin] instance.
  MMMarketplacePlugin({
    this.homepageUrl,
    this.iconData,
    this.downloadUrl,
    this.releaseNotesUrl,
    this.labels = const [],
    this.signature,
    this.manifest,
    this.installedVersion,
  });

  /// URL that leads to the homepage of the plugin.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? homepageUrl;

  /// Base64 encoding of a plugin icon SVG.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iconData;

  /// URL to download the plugin.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? downloadUrl;

  /// URL that leads to the release notes of the plugin.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? releaseNotesUrl;

  /// A list of the plugin labels.
  List<String> labels;

  /// Base64 encoded signature of the plugin.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? signature;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MMPluginManifest? manifest;

  /// Version number of the already installed plugin, if any.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? installedVersion;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMMarketplacePlugin &&
          other.homepageUrl == homepageUrl &&
          other.iconData == iconData &&
          other.downloadUrl == downloadUrl &&
          other.releaseNotesUrl == releaseNotesUrl &&
          other.labels == labels &&
          other.signature == signature &&
          other.manifest == manifest &&
          other.installedVersion == installedVersion;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (homepageUrl == null ? 0 : homepageUrl!.hashCode) +
      (iconData == null ? 0 : iconData!.hashCode) +
      (downloadUrl == null ? 0 : downloadUrl!.hashCode) +
      (releaseNotesUrl == null ? 0 : releaseNotesUrl!.hashCode) +
      (labels.hashCode) +
      (signature == null ? 0 : signature!.hashCode) +
      (manifest == null ? 0 : manifest!.hashCode) +
      (installedVersion == null ? 0 : installedVersion!.hashCode);

  @override
  String toString() =>
      'MMMarketplacePlugin[homepageUrl=$homepageUrl, iconData=$iconData, downloadUrl=$downloadUrl, releaseNotesUrl=$releaseNotesUrl, labels=$labels, signature=$signature, manifest=$manifest, installedVersion=$installedVersion]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (homepageUrl != null) {
      _json[r'homepage_url'] = homepageUrl;
    }
    if (iconData != null) {
      _json[r'icon_data'] = iconData;
    }
    if (downloadUrl != null) {
      _json[r'download_url'] = downloadUrl;
    }
    if (releaseNotesUrl != null) {
      _json[r'release_notes_url'] = releaseNotesUrl;
    }
    _json[r'labels'] = labels;
    if (signature != null) {
      _json[r'signature'] = signature;
    }
    if (manifest != null) {
      _json[r'manifest'] = manifest;
    }
    if (installedVersion != null) {
      _json[r'installed_version'] = installedVersion;
    }
    return _json;
  }

  /// Returns a new [MMMarketplacePlugin] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMMarketplacePlugin? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMMarketplacePlugin[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMMarketplacePlugin[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMMarketplacePlugin(
        homepageUrl: mapValueOfType<String>(json, r'homepage_url'),
        iconData: mapValueOfType<String>(json, r'icon_data'),
        downloadUrl: mapValueOfType<String>(json, r'download_url'),
        releaseNotesUrl: mapValueOfType<String>(json, r'release_notes_url'),
        labels: json[r'labels'] is List ? (json[r'labels'] as List).cast<String>() : const [],
        signature: mapValueOfType<String>(json, r'signature'),
        manifest: MMPluginManifest.fromJson(json[r'manifest']),
        installedVersion: mapValueOfType<String>(json, r'installed_version'),
      );
    }
    return null;
  }

  static List<MMMarketplacePlugin>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMMarketplacePlugin>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMMarketplacePlugin.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMMarketplacePlugin> mapFromJson(dynamic json) {
    final map = <String, MMMarketplacePlugin>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMMarketplacePlugin.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMMarketplacePlugin-objects as value to a dart map
  static Map<String, List<MMMarketplacePlugin>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMMarketplacePlugin>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMMarketplacePlugin.listFromJson(
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
