//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmConfigRateLimitSettings {
  /// Returns a new [MmConfigRateLimitSettings] instance.
  MmConfigRateLimitSettings({
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
  int? perSec;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxBurst;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? memoryStoreSize;

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
  String? varyByHeader;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmConfigRateLimitSettings &&
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
  String toString() =>
      'MmConfigRateLimitSettings[enable=$enable, perSec=$perSec, maxBurst=$maxBurst, memoryStoreSize=$memoryStoreSize, varyByRemoteAddr=$varyByRemoteAddr, varyByHeader=$varyByHeader]';

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

  /// Returns a new [MmConfigRateLimitSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmConfigRateLimitSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmConfigRateLimitSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmConfigRateLimitSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmConfigRateLimitSettings(
        enable: mapValueOfType<bool>(json, r'Enable'),
        perSec: mapValueOfType<int>(json, r'PerSec'),
        maxBurst: mapValueOfType<int>(json, r'MaxBurst'),
        memoryStoreSize: mapValueOfType<int>(json, r'MemoryStoreSize'),
        varyByRemoteAddr: mapValueOfType<bool>(json, r'VaryByRemoteAddr'),
        varyByHeader: mapValueOfType<String>(json, r'VaryByHeader'),
      );
    }
    return null;
  }

  static List<MmConfigRateLimitSettings>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmConfigRateLimitSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmConfigRateLimitSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmConfigRateLimitSettings> mapFromJson(dynamic json) {
    final map = <String, MmConfigRateLimitSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmConfigRateLimitSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmConfigRateLimitSettings-objects as value to a dart map
  static Map<String, List<MmConfigRateLimitSettings>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmConfigRateLimitSettings>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmConfigRateLimitSettings.listFromJson(
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
