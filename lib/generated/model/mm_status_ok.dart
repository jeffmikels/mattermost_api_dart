//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmStatusOK {
  /// Returns a new [MmStatusOK] instance.
  MmStatusOK({
    this.status,
  });

  /// Will contain \"ok\" if the request was successful and there was nothing else to return
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MmStatusOK && other.status == status;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'MmStatusOK[status=$status]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (status != null) {
      _json[r'status'] = status;
    }
    return _json;
  }

  /// Returns a new [MmStatusOK] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmStatusOK? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmStatusOK[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmStatusOK[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmStatusOK(
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<MmStatusOK>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmStatusOK>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmStatusOK.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmStatusOK> mapFromJson(dynamic json) {
    final map = <String, MmStatusOK>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmStatusOK.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmStatusOK-objects as value to a dart map
  static Map<String, List<MmStatusOK>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmStatusOK>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmStatusOK.listFromJson(
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
