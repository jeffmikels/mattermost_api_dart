//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmIntegrityCheckResult {
  /// Returns a new [MmIntegrityCheckResult] instance.
  MmIntegrityCheckResult({
    this.data,
    this.err,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MmRelationalIntegrityCheckData? data;

  /// a string value set in case of error.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? err;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MmIntegrityCheckResult && other.data == data && other.err == err;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (data == null ? 0 : data!.hashCode) + (err == null ? 0 : err!.hashCode);

  @override
  String toString() => 'MmIntegrityCheckResult[data=$data, err=$err]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (data != null) {
      _json[r'data'] = data;
    }
    if (err != null) {
      _json[r'err'] = err;
    }
    return _json;
  }

  /// Returns a new [MmIntegrityCheckResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmIntegrityCheckResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmIntegrityCheckResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmIntegrityCheckResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmIntegrityCheckResult(
        data: MmRelationalIntegrityCheckData.fromJson(json[r'data']),
        err: mapValueOfType<String>(json, r'err'),
      );
    }
    return null;
  }

  static List<MmIntegrityCheckResult>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmIntegrityCheckResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmIntegrityCheckResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmIntegrityCheckResult> mapFromJson(dynamic json) {
    final map = <String, MmIntegrityCheckResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmIntegrityCheckResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmIntegrityCheckResult-objects as value to a dart map
  static Map<String, List<MmIntegrityCheckResult>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmIntegrityCheckResult>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmIntegrityCheckResult.listFromJson(
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
