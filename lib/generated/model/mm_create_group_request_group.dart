//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmCreateGroupRequestGroup {
  /// Returns a new [MmCreateGroupRequestGroup] instance.
  MmCreateGroupRequestGroup({
    required this.name,
    required this.displayName,
    required this.source_,
    required this.allowReference,
  });

  /// The unique group name used for at-mentioning.
  String name;

  /// The display name of the group which can include spaces.
  String displayName;

  /// Must be `custom`
  String source_;

  /// Must be true
  bool allowReference;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmCreateGroupRequestGroup &&
          other.name == name &&
          other.displayName == displayName &&
          other.source_ == source_ &&
          other.allowReference == allowReference;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name.hashCode) + (displayName.hashCode) + (source_.hashCode) + (allowReference.hashCode);

  @override
  String toString() =>
      'MmCreateGroupRequestGroup[name=$name, displayName=$displayName, source_=$source_, allowReference=$allowReference]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'name'] = name;
    _json[r'display_name'] = displayName;
    _json[r'source'] = source_;
    _json[r'allow_reference'] = allowReference;
    return _json;
  }

  /// Returns a new [MmCreateGroupRequestGroup] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmCreateGroupRequestGroup? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmCreateGroupRequestGroup[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmCreateGroupRequestGroup[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmCreateGroupRequestGroup(
        name: mapValueOfType<String>(json, r'name')!,
        displayName: mapValueOfType<String>(json, r'display_name')!,
        source_: mapValueOfType<String>(json, r'source')!,
        allowReference: mapValueOfType<bool>(json, r'allow_reference')!,
      );
    }
    return null;
  }

  static List<MmCreateGroupRequestGroup>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmCreateGroupRequestGroup>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmCreateGroupRequestGroup.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmCreateGroupRequestGroup> mapFromJson(dynamic json) {
    final map = <String, MmCreateGroupRequestGroup>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmCreateGroupRequestGroup.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmCreateGroupRequestGroup-objects as value to a dart map
  static Map<String, List<MmCreateGroupRequestGroup>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmCreateGroupRequestGroup>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmCreateGroupRequestGroup.listFromJson(
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
    'name',
    'display_name',
    'source',
    'allow_reference',
  };
}
