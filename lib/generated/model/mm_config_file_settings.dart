//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmConfigFileSettings {
  /// Returns a new [MmConfigFileSettings] instance.
  MmConfigFileSettings({
    this.maxFileSize,
    this.driverName,
    this.directory,
    this.enablePublicLink,
    this.publicLinkSalt,
    this.thumbnailWidth,
    this.thumbnailHeight,
    this.previewWidth,
    this.previewHeight,
    this.profileWidth,
    this.profileHeight,
    this.initialFont,
    this.amazonS3AccessKeyId,
    this.amazonS3SecretAccessKey,
    this.amazonS3Bucket,
    this.amazonS3Region,
    this.amazonS3Endpoint,
    this.amazonS3SSL,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxFileSize;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? driverName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? directory;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enablePublicLink;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publicLinkSalt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? thumbnailWidth;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? thumbnailHeight;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? previewWidth;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? previewHeight;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? profileWidth;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? profileHeight;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? initialFont;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? amazonS3AccessKeyId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? amazonS3SecretAccessKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? amazonS3Bucket;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? amazonS3Region;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? amazonS3Endpoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? amazonS3SSL;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmConfigFileSettings &&
          other.maxFileSize == maxFileSize &&
          other.driverName == driverName &&
          other.directory == directory &&
          other.enablePublicLink == enablePublicLink &&
          other.publicLinkSalt == publicLinkSalt &&
          other.thumbnailWidth == thumbnailWidth &&
          other.thumbnailHeight == thumbnailHeight &&
          other.previewWidth == previewWidth &&
          other.previewHeight == previewHeight &&
          other.profileWidth == profileWidth &&
          other.profileHeight == profileHeight &&
          other.initialFont == initialFont &&
          other.amazonS3AccessKeyId == amazonS3AccessKeyId &&
          other.amazonS3SecretAccessKey == amazonS3SecretAccessKey &&
          other.amazonS3Bucket == amazonS3Bucket &&
          other.amazonS3Region == amazonS3Region &&
          other.amazonS3Endpoint == amazonS3Endpoint &&
          other.amazonS3SSL == amazonS3SSL;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (maxFileSize == null ? 0 : maxFileSize!.hashCode) +
      (driverName == null ? 0 : driverName!.hashCode) +
      (directory == null ? 0 : directory!.hashCode) +
      (enablePublicLink == null ? 0 : enablePublicLink!.hashCode) +
      (publicLinkSalt == null ? 0 : publicLinkSalt!.hashCode) +
      (thumbnailWidth == null ? 0 : thumbnailWidth!.hashCode) +
      (thumbnailHeight == null ? 0 : thumbnailHeight!.hashCode) +
      (previewWidth == null ? 0 : previewWidth!.hashCode) +
      (previewHeight == null ? 0 : previewHeight!.hashCode) +
      (profileWidth == null ? 0 : profileWidth!.hashCode) +
      (profileHeight == null ? 0 : profileHeight!.hashCode) +
      (initialFont == null ? 0 : initialFont!.hashCode) +
      (amazonS3AccessKeyId == null ? 0 : amazonS3AccessKeyId!.hashCode) +
      (amazonS3SecretAccessKey == null ? 0 : amazonS3SecretAccessKey!.hashCode) +
      (amazonS3Bucket == null ? 0 : amazonS3Bucket!.hashCode) +
      (amazonS3Region == null ? 0 : amazonS3Region!.hashCode) +
      (amazonS3Endpoint == null ? 0 : amazonS3Endpoint!.hashCode) +
      (amazonS3SSL == null ? 0 : amazonS3SSL!.hashCode);

  @override
  String toString() =>
      'MmConfigFileSettings[maxFileSize=$maxFileSize, driverName=$driverName, directory=$directory, enablePublicLink=$enablePublicLink, publicLinkSalt=$publicLinkSalt, thumbnailWidth=$thumbnailWidth, thumbnailHeight=$thumbnailHeight, previewWidth=$previewWidth, previewHeight=$previewHeight, profileWidth=$profileWidth, profileHeight=$profileHeight, initialFont=$initialFont, amazonS3AccessKeyId=$amazonS3AccessKeyId, amazonS3SecretAccessKey=$amazonS3SecretAccessKey, amazonS3Bucket=$amazonS3Bucket, amazonS3Region=$amazonS3Region, amazonS3Endpoint=$amazonS3Endpoint, amazonS3SSL=$amazonS3SSL]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (maxFileSize != null) {
      _json[r'MaxFileSize'] = maxFileSize;
    }
    if (driverName != null) {
      _json[r'DriverName'] = driverName;
    }
    if (directory != null) {
      _json[r'Directory'] = directory;
    }
    if (enablePublicLink != null) {
      _json[r'EnablePublicLink'] = enablePublicLink;
    }
    if (publicLinkSalt != null) {
      _json[r'PublicLinkSalt'] = publicLinkSalt;
    }
    if (thumbnailWidth != null) {
      _json[r'ThumbnailWidth'] = thumbnailWidth;
    }
    if (thumbnailHeight != null) {
      _json[r'ThumbnailHeight'] = thumbnailHeight;
    }
    if (previewWidth != null) {
      _json[r'PreviewWidth'] = previewWidth;
    }
    if (previewHeight != null) {
      _json[r'PreviewHeight'] = previewHeight;
    }
    if (profileWidth != null) {
      _json[r'ProfileWidth'] = profileWidth;
    }
    if (profileHeight != null) {
      _json[r'ProfileHeight'] = profileHeight;
    }
    if (initialFont != null) {
      _json[r'InitialFont'] = initialFont;
    }
    if (amazonS3AccessKeyId != null) {
      _json[r'AmazonS3AccessKeyId'] = amazonS3AccessKeyId;
    }
    if (amazonS3SecretAccessKey != null) {
      _json[r'AmazonS3SecretAccessKey'] = amazonS3SecretAccessKey;
    }
    if (amazonS3Bucket != null) {
      _json[r'AmazonS3Bucket'] = amazonS3Bucket;
    }
    if (amazonS3Region != null) {
      _json[r'AmazonS3Region'] = amazonS3Region;
    }
    if (amazonS3Endpoint != null) {
      _json[r'AmazonS3Endpoint'] = amazonS3Endpoint;
    }
    if (amazonS3SSL != null) {
      _json[r'AmazonS3SSL'] = amazonS3SSL;
    }
    return _json;
  }

  /// Returns a new [MmConfigFileSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmConfigFileSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmConfigFileSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmConfigFileSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmConfigFileSettings(
        maxFileSize: mapValueOfType<int>(json, r'MaxFileSize'),
        driverName: mapValueOfType<String>(json, r'DriverName'),
        directory: mapValueOfType<String>(json, r'Directory'),
        enablePublicLink: mapValueOfType<bool>(json, r'EnablePublicLink'),
        publicLinkSalt: mapValueOfType<String>(json, r'PublicLinkSalt'),
        thumbnailWidth: mapValueOfType<int>(json, r'ThumbnailWidth'),
        thumbnailHeight: mapValueOfType<int>(json, r'ThumbnailHeight'),
        previewWidth: mapValueOfType<int>(json, r'PreviewWidth'),
        previewHeight: mapValueOfType<int>(json, r'PreviewHeight'),
        profileWidth: mapValueOfType<int>(json, r'ProfileWidth'),
        profileHeight: mapValueOfType<int>(json, r'ProfileHeight'),
        initialFont: mapValueOfType<String>(json, r'InitialFont'),
        amazonS3AccessKeyId: mapValueOfType<String>(json, r'AmazonS3AccessKeyId'),
        amazonS3SecretAccessKey: mapValueOfType<String>(json, r'AmazonS3SecretAccessKey'),
        amazonS3Bucket: mapValueOfType<String>(json, r'AmazonS3Bucket'),
        amazonS3Region: mapValueOfType<String>(json, r'AmazonS3Region'),
        amazonS3Endpoint: mapValueOfType<String>(json, r'AmazonS3Endpoint'),
        amazonS3SSL: mapValueOfType<bool>(json, r'AmazonS3SSL'),
      );
    }
    return null;
  }

  static List<MmConfigFileSettings>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmConfigFileSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmConfigFileSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmConfigFileSettings> mapFromJson(dynamic json) {
    final map = <String, MmConfigFileSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmConfigFileSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmConfigFileSettings-objects as value to a dart map
  static Map<String, List<MmConfigFileSettings>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmConfigFileSettings>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmConfigFileSettings.listFromJson(
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
