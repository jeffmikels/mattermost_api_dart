//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmOpenGraphImagesInner {
  /// Returns a new [MmOpenGraphImagesInner] instance.
  MmOpenGraphImagesInner({
    this.url,
    this.secureUrl,
    this.type,
    this.width,
    this.height,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? secureUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? width;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? height;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmOpenGraphImagesInner &&
          other.url == url &&
          other.secureUrl == secureUrl &&
          other.type == type &&
          other.width == width &&
          other.height == height;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (url == null ? 0 : url!.hashCode) +
      (secureUrl == null ? 0 : secureUrl!.hashCode) +
      (type == null ? 0 : type!.hashCode) +
      (width == null ? 0 : width!.hashCode) +
      (height == null ? 0 : height!.hashCode);

  @override
  String toString() =>
      'MmOpenGraphImagesInner[url=$url, secureUrl=$secureUrl, type=$type, width=$width, height=$height]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (url != null) {
      _json[r'url'] = url;
    }
    if (secureUrl != null) {
      _json[r'secure_url'] = secureUrl;
    }
    if (type != null) {
      _json[r'type'] = type;
    }
    if (width != null) {
      _json[r'width'] = width;
    }
    if (height != null) {
      _json[r'height'] = height;
    }
    return _json;
  }

  /// Returns a new [MmOpenGraphImagesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmOpenGraphImagesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmOpenGraphImagesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmOpenGraphImagesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmOpenGraphImagesInner(
        url: mapValueOfType<String>(json, r'url'),
        secureUrl: mapValueOfType<String>(json, r'secure_url'),
        type: mapValueOfType<String>(json, r'type'),
        width: mapValueOfType<int>(json, r'width'),
        height: mapValueOfType<int>(json, r'height'),
      );
    }
    return null;
  }

  static List<MmOpenGraphImagesInner>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmOpenGraphImagesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmOpenGraphImagesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmOpenGraphImagesInner> mapFromJson(dynamic json) {
    final map = <String, MmOpenGraphImagesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmOpenGraphImagesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmOpenGraphImagesInner-objects as value to a dart map
  static Map<String, List<MmOpenGraphImagesInner>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmOpenGraphImagesInner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmOpenGraphImagesInner.listFromJson(
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
