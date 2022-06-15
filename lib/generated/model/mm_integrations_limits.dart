//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMIntegrationsLimits {
  /// Returns a new [MMIntegrationsLimits] instance.
  MMIntegrationsLimits({
    this.enabled,
  });

  int? enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MMIntegrationsLimits && other.enabled == enabled;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (enabled == null ? 0 : enabled!.hashCode);

  @override
  String toString() => 'MMIntegrationsLimits[enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (enabled != null) {
      _json[r'enabled'] = enabled;
    }
    return _json;
  }

  /// Returns a new [MMIntegrationsLimits] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMIntegrationsLimits? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMIntegrationsLimits[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMIntegrationsLimits[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMIntegrationsLimits(
        enabled: mapValueOfType<int>(json, r'enabled'),
      );
    }
    return null;
  }

  static List<MMIntegrationsLimits>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMIntegrationsLimits>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMIntegrationsLimits.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMIntegrationsLimits> mapFromJson(dynamic json) {
    final map = <String, MMIntegrationsLimits>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMIntegrationsLimits.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMIntegrationsLimits-objects as value to a dart map
  static Map<String, List<MMIntegrationsLimits>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMIntegrationsLimits>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMIntegrationsLimits.listFromJson(
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
