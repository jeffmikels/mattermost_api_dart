//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmAttachDeviceIdRequest {
  /// Returns a new [MmAttachDeviceIdRequest] instance.
  MmAttachDeviceIdRequest({
    required this.deviceId,
  });

  /// Mobile device id. For Android prefix the id with `android:` and Apple with `apple:`
  String deviceId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MmAttachDeviceIdRequest && other.deviceId == deviceId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (deviceId.hashCode);

  @override
  String toString() => 'MmAttachDeviceIdRequest[deviceId=$deviceId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'device_id'] = deviceId;
    return _json;
  }

  /// Returns a new [MmAttachDeviceIdRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmAttachDeviceIdRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmAttachDeviceIdRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmAttachDeviceIdRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmAttachDeviceIdRequest(
        deviceId: mapValueOfType<String>(json, r'device_id')!,
      );
    }
    return null;
  }

  static List<MmAttachDeviceIdRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmAttachDeviceIdRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmAttachDeviceIdRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmAttachDeviceIdRequest> mapFromJson(dynamic json) {
    final map = <String, MmAttachDeviceIdRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmAttachDeviceIdRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmAttachDeviceIdRequest-objects as value to a dart map
  static Map<String, List<MmAttachDeviceIdRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmAttachDeviceIdRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmAttachDeviceIdRequest.listFromJson(
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
