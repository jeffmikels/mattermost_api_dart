//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class IntegrityCheckResult {
  /// Returns a new [IntegrityCheckResult] instance.
  IntegrityCheckResult({
    this.data,
    this.err,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RelationalIntegrityCheckData? data;

  /// a string value set in case of error.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? err;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IntegrityCheckResult &&
     other.data == data &&
     other.err == err;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data == null ? 0 : data!.hashCode) +
    (err == null ? 0 : err!.hashCode);

  @override
  String toString() => 'IntegrityCheckResult[data=$data, err=$err]';

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

  /// Returns a new [IntegrityCheckResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IntegrityCheckResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IntegrityCheckResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IntegrityCheckResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IntegrityCheckResult(
        data: RelationalIntegrityCheckData.fromJson(json[r'data']),
        err: mapValueOfType<String>(json, r'err'),
      );
    }
    return null;
  }

  static List<IntegrityCheckResult>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IntegrityCheckResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IntegrityCheckResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IntegrityCheckResult> mapFromJson(dynamic json) {
    final map = <String, IntegrityCheckResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IntegrityCheckResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IntegrityCheckResult-objects as value to a dart map
  static Map<String, List<IntegrityCheckResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IntegrityCheckResult>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IntegrityCheckResult.listFromJson(entry.value, growable: growable,);
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

