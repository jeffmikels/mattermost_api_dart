//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmRelationalIntegrityCheckData {
  /// Returns a new [MmRelationalIntegrityCheckData] instance.
  MmRelationalIntegrityCheckData({
    this.parentName,
    this.childName,
    this.parentIdAttr,
    this.childIdAttr,
    this.records = const [],
  });

  /// the name of the parent relation (table).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parentName;

  /// the name of the child relation (table).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? childName;

  /// the name of the attribute (column) containing the parent id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parentIdAttr;

  /// the name of the attribute (column) containing the child id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? childIdAttr;

  /// the list of orphaned records found.
  List<MmOrphanedRecord> records;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmRelationalIntegrityCheckData &&
          other.parentName == parentName &&
          other.childName == childName &&
          other.parentIdAttr == parentIdAttr &&
          other.childIdAttr == childIdAttr &&
          other.records == records;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (parentName == null ? 0 : parentName!.hashCode) +
      (childName == null ? 0 : childName!.hashCode) +
      (parentIdAttr == null ? 0 : parentIdAttr!.hashCode) +
      (childIdAttr == null ? 0 : childIdAttr!.hashCode) +
      (records.hashCode);

  @override
  String toString() =>
      'MmRelationalIntegrityCheckData[parentName=$parentName, childName=$childName, parentIdAttr=$parentIdAttr, childIdAttr=$childIdAttr, records=$records]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (parentName != null) {
      _json[r'parent_name'] = parentName;
    }
    if (childName != null) {
      _json[r'child_name'] = childName;
    }
    if (parentIdAttr != null) {
      _json[r'parent_id_attr'] = parentIdAttr;
    }
    if (childIdAttr != null) {
      _json[r'child_id_attr'] = childIdAttr;
    }
    _json[r'records'] = records;
    return _json;
  }

  /// Returns a new [MmRelationalIntegrityCheckData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmRelationalIntegrityCheckData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmRelationalIntegrityCheckData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmRelationalIntegrityCheckData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmRelationalIntegrityCheckData(
        parentName: mapValueOfType<String>(json, r'parent_name'),
        childName: mapValueOfType<String>(json, r'child_name'),
        parentIdAttr: mapValueOfType<String>(json, r'parent_id_attr'),
        childIdAttr: mapValueOfType<String>(json, r'child_id_attr'),
        records: MmOrphanedRecord.listFromJson(json[r'records']) ?? const [],
      );
    }
    return null;
  }

  static List<MmRelationalIntegrityCheckData>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmRelationalIntegrityCheckData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmRelationalIntegrityCheckData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmRelationalIntegrityCheckData> mapFromJson(dynamic json) {
    final map = <String, MmRelationalIntegrityCheckData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmRelationalIntegrityCheckData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmRelationalIntegrityCheckData-objects as value to a dart map
  static Map<String, List<MmRelationalIntegrityCheckData>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmRelationalIntegrityCheckData>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmRelationalIntegrityCheckData.listFromJson(
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
