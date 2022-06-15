//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMAttachDeviceIdRequest {
  /// Returns a new [MMAttachDeviceIdRequest] instance.
  MMAttachDeviceIdRequest({
    required this.deviceId,
  });

  /// Mobile device id. For Android prefix the id with `android:` and Apple with `apple:`
  String deviceId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MMAttachDeviceIdRequest && other.deviceId == deviceId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (deviceId.hashCode);

  @override
  String toString() => 'MMAttachDeviceIdRequest[deviceId=$deviceId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'device_id'] = deviceId;
    return _json;
  }

  /// Returns a new [MMAttachDeviceIdRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMAttachDeviceIdRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMAttachDeviceIdRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMAttachDeviceIdRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMAttachDeviceIdRequest(
        deviceId: mapValueOfType<String>(json, r'device_id')!,
      );
    }
    return null;
  }

  static List<MMAttachDeviceIdRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMAttachDeviceIdRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMAttachDeviceIdRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMAttachDeviceIdRequest> mapFromJson(dynamic json) {
    final map = <String, MMAttachDeviceIdRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMAttachDeviceIdRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMAttachDeviceIdRequest-objects as value to a dart map
  static Map<String, List<MMAttachDeviceIdRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMAttachDeviceIdRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMAttachDeviceIdRequest.listFromJson(
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
  static const requiredKeys = <String>{
    'device_id',
  };
}
