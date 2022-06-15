//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmIntegrationsLimits {
  /// Returns a new [MmIntegrationsLimits] instance.
  MmIntegrationsLimits({
    this.enabled,
  });

  int? enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MmIntegrationsLimits && other.enabled == enabled;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (enabled == null ? 0 : enabled!.hashCode);

  @override
  String toString() => 'MmIntegrationsLimits[enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (enabled != null) {
      _json[r'enabled'] = enabled;
    }
    return _json;
  }

  /// Returns a new [MmIntegrationsLimits] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmIntegrationsLimits? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmIntegrationsLimits[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmIntegrationsLimits[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmIntegrationsLimits(
        enabled: mapValueOfType<int>(json, r'enabled'),
      );
    }
    return null;
  }

  static List<MmIntegrationsLimits>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmIntegrationsLimits>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmIntegrationsLimits.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmIntegrationsLimits> mapFromJson(dynamic json) {
    final map = <String, MmIntegrationsLimits>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmIntegrationsLimits.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmIntegrationsLimits-objects as value to a dart map
  static Map<String, List<MmIntegrationsLimits>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmIntegrationsLimits>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmIntegrationsLimits.listFromJson(
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
