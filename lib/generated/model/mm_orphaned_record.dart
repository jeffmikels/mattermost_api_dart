//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmOrphanedRecord {
  /// Returns a new [MmOrphanedRecord] instance.
  MmOrphanedRecord({
    this.parentId,
    this.childId,
  });

  /// the id of the parent relation (table) entry.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parentId;

  /// the id of the child relation (table) entry.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? childId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MmOrphanedRecord && other.parentId == parentId && other.childId == childId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (parentId == null ? 0 : parentId!.hashCode) + (childId == null ? 0 : childId!.hashCode);

  @override
  String toString() => 'MmOrphanedRecord[parentId=$parentId, childId=$childId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (parentId != null) {
      _json[r'parent_id'] = parentId;
    }
    if (childId != null) {
      _json[r'child_id'] = childId;
    }
    return _json;
  }

  /// Returns a new [MmOrphanedRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmOrphanedRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmOrphanedRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmOrphanedRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmOrphanedRecord(
        parentId: mapValueOfType<String>(json, r'parent_id'),
        childId: mapValueOfType<String>(json, r'child_id'),
      );
    }
    return null;
  }

  static List<MmOrphanedRecord>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmOrphanedRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmOrphanedRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmOrphanedRecord> mapFromJson(dynamic json) {
    final map = <String, MmOrphanedRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmOrphanedRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmOrphanedRecord-objects as value to a dart map
  static Map<String, List<MmOrphanedRecord>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmOrphanedRecord>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmOrphanedRecord.listFromJson(
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
