//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class ChannelModeratedRole {
  /// Returns a new [ChannelModeratedRole] instance.
  ChannelModeratedRole({
    this.value,
    this.enabled,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? value;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChannelModeratedRole &&
     other.value == value &&
     other.enabled == enabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (value == null ? 0 : value!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode);

  @override
  String toString() => 'ChannelModeratedRole[value=$value, enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (value != null) {
      _json[r'value'] = value;
    }
    if (enabled != null) {
      _json[r'enabled'] = enabled;
    }
    return _json;
  }

  /// Returns a new [ChannelModeratedRole] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChannelModeratedRole? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChannelModeratedRole[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChannelModeratedRole[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChannelModeratedRole(
        value: mapValueOfType<bool>(json, r'value'),
        enabled: mapValueOfType<bool>(json, r'enabled'),
      );
    }
    return null;
  }

  static List<ChannelModeratedRole>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChannelModeratedRole>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChannelModeratedRole.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChannelModeratedRole> mapFromJson(dynamic json) {
    final map = <String, ChannelModeratedRole>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChannelModeratedRole.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChannelModeratedRole-objects as value to a dart map
  static Map<String, List<ChannelModeratedRole>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChannelModeratedRole>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChannelModeratedRole.listFromJson(entry.value, growable: growable,);
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

