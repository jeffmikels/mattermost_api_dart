//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmFileInfoList {
  /// Returns a new [MmFileInfoList] instance.
  MmFileInfoList({
    this.order = const [],
    this.fileInfos = const {},
    this.nextFileId,
    this.prevFileId,
  });

  List<String> order;

  Map<String, MmFileInfo> fileInfos;

  /// The ID of next file info. Not omitted when empty or not relevant.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nextFileId;

  /// The ID of previous file info. Not omitted when empty or not relevant.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prevFileId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmFileInfoList &&
          other.order == order &&
          other.fileInfos == fileInfos &&
          other.nextFileId == nextFileId &&
          other.prevFileId == prevFileId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (order.hashCode) +
      (fileInfos.hashCode) +
      (nextFileId == null ? 0 : nextFileId!.hashCode) +
      (prevFileId == null ? 0 : prevFileId!.hashCode);

  @override
  String toString() =>
      'MmFileInfoList[order=$order, fileInfos=$fileInfos, nextFileId=$nextFileId, prevFileId=$prevFileId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'order'] = order;
    _json[r'file_infos'] = fileInfos;
    if (nextFileId != null) {
      _json[r'next_file_id'] = nextFileId;
    }
    if (prevFileId != null) {
      _json[r'prev_file_id'] = prevFileId;
    }
    return _json;
  }

  /// Returns a new [MmFileInfoList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmFileInfoList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmFileInfoList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmFileInfoList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmFileInfoList(
        order: json[r'order'] is List ? (json[r'order'] as List).cast<String>() : const [],
        fileInfos: MmFileInfo.mapFromJson(json[r'file_infos'] ?? const {}),
        nextFileId: mapValueOfType<String>(json, r'next_file_id'),
        prevFileId: mapValueOfType<String>(json, r'prev_file_id'),
      );
    }
    return null;
  }

  static List<MmFileInfoList>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmFileInfoList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmFileInfoList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmFileInfoList> mapFromJson(dynamic json) {
    final map = <String, MmFileInfoList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmFileInfoList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmFileInfoList-objects as value to a dart map
  static Map<String, List<MmFileInfoList>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmFileInfoList>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmFileInfoList.listFromJson(
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
