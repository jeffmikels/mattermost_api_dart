//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class EnvironmentConfigRateLimitSettings {
  /// Returns a new [EnvironmentConfigRateLimitSettings] instance.
  EnvironmentConfigRateLimitSettings({
    this.enable,
    this.perSec,
    this.maxBurst,
    this.memoryStoreSize,
    this.varyByRemoteAddr,
    this.varyByHeader,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? perSec;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? maxBurst;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? memoryStoreSize;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? varyByRemoteAddr;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? varyByHeader;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EnvironmentConfigRateLimitSettings &&
     other.enable == enable &&
     other.perSec == perSec &&
     other.maxBurst == maxBurst &&
     other.memoryStoreSize == memoryStoreSize &&
     other.varyByRemoteAddr == varyByRemoteAddr &&
     other.varyByHeader == varyByHeader;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enable == null ? 0 : enable!.hashCode) +
    (perSec == null ? 0 : perSec!.hashCode) +
    (maxBurst == null ? 0 : maxBurst!.hashCode) +
    (memoryStoreSize == null ? 0 : memoryStoreSize!.hashCode) +
    (varyByRemoteAddr == null ? 0 : varyByRemoteAddr!.hashCode) +
    (varyByHeader == null ? 0 : varyByHeader!.hashCode);

  @override
  String toString() => 'EnvironmentConfigRateLimitSettings[enable=$enable, perSec=$perSec, maxBurst=$maxBurst, memoryStoreSize=$memoryStoreSize, varyByRemoteAddr=$varyByRemoteAddr, varyByHeader=$varyByHeader]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (enable != null) {
      _json[r'Enable'] = enable;
    }
    if (perSec != null) {
      _json[r'PerSec'] = perSec;
    }
    if (maxBurst != null) {
      _json[r'MaxBurst'] = maxBurst;
    }
    if (memoryStoreSize != null) {
      _json[r'MemoryStoreSize'] = memoryStoreSize;
    }
    if (varyByRemoteAddr != null) {
      _json[r'VaryByRemoteAddr'] = varyByRemoteAddr;
    }
    if (varyByHeader != null) {
      _json[r'VaryByHeader'] = varyByHeader;
    }
    return _json;
  }

  /// Returns a new [EnvironmentConfigRateLimitSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EnvironmentConfigRateLimitSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EnvironmentConfigRateLimitSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EnvironmentConfigRateLimitSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EnvironmentConfigRateLimitSettings(
        enable: mapValueOfType<bool>(json, r'Enable'),
        perSec: mapValueOfType<bool>(json, r'PerSec'),
        maxBurst: mapValueOfType<bool>(json, r'MaxBurst'),
        memoryStoreSize: mapValueOfType<bool>(json, r'MemoryStoreSize'),
        varyByRemoteAddr: mapValueOfType<bool>(json, r'VaryByRemoteAddr'),
        varyByHeader: mapValueOfType<bool>(json, r'VaryByHeader'),
      );
    }
    return null;
  }

  static List<EnvironmentConfigRateLimitSettings>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EnvironmentConfigRateLimitSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EnvironmentConfigRateLimitSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EnvironmentConfigRateLimitSettings> mapFromJson(dynamic json) {
    final map = <String, EnvironmentConfigRateLimitSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EnvironmentConfigRateLimitSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EnvironmentConfigRateLimitSettings-objects as value to a dart map
  static Map<String, List<EnvironmentConfigRateLimitSettings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EnvironmentConfigRateLimitSettings>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EnvironmentConfigRateLimitSettings.listFromJson(entry.value, growable: growable,);
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

