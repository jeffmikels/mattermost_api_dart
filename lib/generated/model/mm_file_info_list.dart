//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMFileInfoList {
  /// Returns a new [MMFileInfoList] instance.
  MMFileInfoList({
    this.order = const [],
    this.fileInfos = const {},
    this.nextFileId,
    this.prevFileId,
  });

  List<String> order;

  Map<String, MMFileInfo> fileInfos;

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
      other is MMFileInfoList &&
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
      'MMFileInfoList[order=$order, fileInfos=$fileInfos, nextFileId=$nextFileId, prevFileId=$prevFileId]';

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

  /// Returns a new [MMFileInfoList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMFileInfoList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMFileInfoList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMFileInfoList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMFileInfoList(
        order: json[r'order'] is List ? (json[r'order'] as List).cast<String>() : const [],
        fileInfos: MMFileInfo.mapFromJson(json[r'file_infos'] ?? const {}),
        nextFileId: mapValueOfType<String>(json, r'next_file_id'),
        prevFileId: mapValueOfType<String>(json, r'prev_file_id'),
      );
    }
    return null;
  }

  static List<MMFileInfoList>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMFileInfoList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMFileInfoList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMFileInfoList> mapFromJson(dynamic json) {
    final map = <String, MMFileInfoList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMFileInfoList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMFileInfoList-objects as value to a dart map
  static Map<String, List<MMFileInfoList>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMFileInfoList>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMFileInfoList.listFromJson(
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
