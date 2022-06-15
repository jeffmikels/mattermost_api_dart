//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmConfigClusterSettings {
  /// Returns a new [MmConfigClusterSettings] instance.
  MmConfigClusterSettings({
    this.enable,
    this.interNodeListenAddress,
    this.interNodeUrls = const [],
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
  String? interNodeListenAddress;

  List<String> interNodeUrls;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmConfigClusterSettings &&
          other.enable == enable &&
          other.interNodeListenAddress == interNodeListenAddress &&
          other.interNodeUrls == interNodeUrls;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (enable == null ? 0 : enable!.hashCode) +
      (interNodeListenAddress == null ? 0 : interNodeListenAddress!.hashCode) +
      (interNodeUrls.hashCode);

  @override
  String toString() =>
      'MmConfigClusterSettings[enable=$enable, interNodeListenAddress=$interNodeListenAddress, interNodeUrls=$interNodeUrls]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (enable != null) {
      _json[r'Enable'] = enable;
    }
    if (interNodeListenAddress != null) {
      _json[r'InterNodeListenAddress'] = interNodeListenAddress;
    }
    _json[r'InterNodeUrls'] = interNodeUrls;
    return _json;
  }

  /// Returns a new [MmConfigClusterSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmConfigClusterSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmConfigClusterSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmConfigClusterSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmConfigClusterSettings(
        enable: mapValueOfType<bool>(json, r'Enable'),
        interNodeListenAddress: mapValueOfType<String>(json, r'InterNodeListenAddress'),
        interNodeUrls: json[r'InterNodeUrls'] is List ? (json[r'InterNodeUrls'] as List).cast<String>() : const [],
      );
    }
    return null;
  }

  static List<MmConfigClusterSettings>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmConfigClusterSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmConfigClusterSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmConfigClusterSettings> mapFromJson(dynamic json) {
    final map = <String, MmConfigClusterSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmConfigClusterSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmConfigClusterSettings-objects as value to a dart map
  static Map<String, List<MmConfigClusterSettings>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmConfigClusterSettings>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmConfigClusterSettings.listFromJson(
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
