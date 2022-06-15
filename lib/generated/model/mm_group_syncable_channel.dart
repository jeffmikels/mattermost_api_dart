//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmGroupSyncableChannel {
  /// Returns a new [MmGroupSyncableChannel] instance.
  MmGroupSyncableChannel({
    this.channelId,
    this.groupId,
    this.autoAdd,
    this.createAt,
    this.deleteAt,
    this.updateAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channelId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? groupId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? autoAdd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deleteAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updateAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmGroupSyncableChannel &&
          other.channelId == channelId &&
          other.groupId == groupId &&
          other.autoAdd == autoAdd &&
          other.createAt == createAt &&
          other.deleteAt == deleteAt &&
          other.updateAt == updateAt;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (channelId == null ? 0 : channelId!.hashCode) +
      (groupId == null ? 0 : groupId!.hashCode) +
      (autoAdd == null ? 0 : autoAdd!.hashCode) +
      (createAt == null ? 0 : createAt!.hashCode) +
      (deleteAt == null ? 0 : deleteAt!.hashCode) +
      (updateAt == null ? 0 : updateAt!.hashCode);

  @override
  String toString() =>
      'MmGroupSyncableChannel[channelId=$channelId, groupId=$groupId, autoAdd=$autoAdd, createAt=$createAt, deleteAt=$deleteAt, updateAt=$updateAt]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (channelId != null) {
      _json[r'channel_id'] = channelId;
    }
    if (groupId != null) {
      _json[r'group_id'] = groupId;
    }
    if (autoAdd != null) {
      _json[r'auto_add'] = autoAdd;
    }
    if (createAt != null) {
      _json[r'create_at'] = createAt;
    }
    if (deleteAt != null) {
      _json[r'delete_at'] = deleteAt;
    }
    if (updateAt != null) {
      _json[r'update_at'] = updateAt;
    }
    return _json;
  }

  /// Returns a new [MmGroupSyncableChannel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmGroupSyncableChannel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmGroupSyncableChannel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmGroupSyncableChannel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmGroupSyncableChannel(
        channelId: mapValueOfType<String>(json, r'channel_id'),
        groupId: mapValueOfType<String>(json, r'group_id'),
        autoAdd: mapValueOfType<bool>(json, r'auto_add'),
        createAt: mapValueOfType<int>(json, r'create_at'),
        deleteAt: mapValueOfType<int>(json, r'delete_at'),
        updateAt: mapValueOfType<int>(json, r'update_at'),
      );
    }
    return null;
  }

  static List<MmGroupSyncableChannel>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmGroupSyncableChannel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmGroupSyncableChannel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmGroupSyncableChannel> mapFromJson(dynamic json) {
    final map = <String, MmGroupSyncableChannel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmGroupSyncableChannel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmGroupSyncableChannel-objects as value to a dart map
  static Map<String, List<MmGroupSyncableChannel>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmGroupSyncableChannel>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmGroupSyncableChannel.listFromJson(
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
