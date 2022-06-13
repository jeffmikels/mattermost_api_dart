//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostIntegrationsLimits {
  /// Returns a new [MattermostIntegrationsLimits] instance.
  MattermostIntegrationsLimits({
    this.enabled,
  });

  int? enabled;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MattermostIntegrationsLimits && other.enabled == enabled;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (enabled == null ? 0 : enabled!.hashCode);

  @override
  String toString() => 'MattermostIntegrationsLimits[enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (enabled != null) {
      _json[r'enabled'] = enabled;
    }
    return _json;
  }

  /// Returns a new [MattermostIntegrationsLimits] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostIntegrationsLimits? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostIntegrationsLimits[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostIntegrationsLimits[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostIntegrationsLimits(
        enabled: mapValueOfType<int>(json, r'enabled'),
      );
    }
    return null;
  }

  static List<MattermostIntegrationsLimits>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MattermostIntegrationsLimits>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostIntegrationsLimits.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostIntegrationsLimits> mapFromJson(dynamic json) {
    final map = <String, MattermostIntegrationsLimits>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostIntegrationsLimits.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostIntegrationsLimits-objects as value to a dart map
  static Map<String, List<MattermostIntegrationsLimits>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MattermostIntegrationsLimits>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostIntegrationsLimits.listFromJson(
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
