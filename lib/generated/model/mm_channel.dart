//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmChannel {
  /// Returns a new [MmChannel] instance.
  MmChannel({
    this.id,
    this.createAt,
    this.updateAt,
    this.deleteAt,
    this.teamId,
    this.type,
    this.displayName,
    this.name,
    this.header,
    this.purpose,
    this.lastPostAt,
    this.totalMsgCount,
    this.extraUpdateAt,
    this.creatorId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The time in milliseconds a channel was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createAt;

  /// The time in milliseconds a channel was last updated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updateAt;

  /// The time in milliseconds a channel was deleted
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
  String? teamId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? header;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? purpose;

  /// The time in milliseconds of the last post of a channel
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastPostAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalMsgCount;

  /// Deprecated in Mattermost 5.0 release
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? extraUpdateAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? creatorId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmChannel &&
          other.id == id &&
          other.createAt == createAt &&
          other.updateAt == updateAt &&
          other.deleteAt == deleteAt &&
          other.teamId == teamId &&
          other.type == type &&
          other.displayName == displayName &&
          other.name == name &&
          other.header == header &&
          other.purpose == purpose &&
          other.lastPostAt == lastPostAt &&
          other.totalMsgCount == totalMsgCount &&
          other.extraUpdateAt == extraUpdateAt &&
          other.creatorId == creatorId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (createAt == null ? 0 : createAt!.hashCode) +
      (updateAt == null ? 0 : updateAt!.hashCode) +
      (deleteAt == null ? 0 : deleteAt!.hashCode) +
      (teamId == null ? 0 : teamId!.hashCode) +
      (type == null ? 0 : type!.hashCode) +
      (displayName == null ? 0 : displayName!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (header == null ? 0 : header!.hashCode) +
      (purpose == null ? 0 : purpose!.hashCode) +
      (lastPostAt == null ? 0 : lastPostAt!.hashCode) +
      (totalMsgCount == null ? 0 : totalMsgCount!.hashCode) +
      (extraUpdateAt == null ? 0 : extraUpdateAt!.hashCode) +
      (creatorId == null ? 0 : creatorId!.hashCode);

  @override
  String toString() =>
      'MmChannel[id=$id, createAt=$createAt, updateAt=$updateAt, deleteAt=$deleteAt, teamId=$teamId, type=$type, displayName=$displayName, name=$name, header=$header, purpose=$purpose, lastPostAt=$lastPostAt, totalMsgCount=$totalMsgCount, extraUpdateAt=$extraUpdateAt, creatorId=$creatorId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (createAt != null) {
      _json[r'create_at'] = createAt;
    }
    if (updateAt != null) {
      _json[r'update_at'] = updateAt;
    }
    if (deleteAt != null) {
      _json[r'delete_at'] = deleteAt;
    }
    if (teamId != null) {
      _json[r'team_id'] = teamId;
    }
    if (type != null) {
      _json[r'type'] = type;
    }
    if (displayName != null) {
      _json[r'display_name'] = displayName;
    }
    if (name != null) {
      _json[r'name'] = name;
    }
    if (header != null) {
      _json[r'header'] = header;
    }
    if (purpose != null) {
      _json[r'purpose'] = purpose;
    }
    if (lastPostAt != null) {
      _json[r'last_post_at'] = lastPostAt;
    }
    if (totalMsgCount != null) {
      _json[r'total_msg_count'] = totalMsgCount;
    }
    if (extraUpdateAt != null) {
      _json[r'extra_update_at'] = extraUpdateAt;
    }
    if (creatorId != null) {
      _json[r'creator_id'] = creatorId;
    }
    return _json;
  }

  /// Returns a new [MmChannel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmChannel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmChannel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmChannel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmChannel(
        id: mapValueOfType<String>(json, r'id'),
        createAt: mapValueOfType<int>(json, r'create_at'),
        updateAt: mapValueOfType<int>(json, r'update_at'),
        deleteAt: mapValueOfType<int>(json, r'delete_at'),
        teamId: mapValueOfType<String>(json, r'team_id'),
        type: mapValueOfType<String>(json, r'type'),
        displayName: mapValueOfType<String>(json, r'display_name'),
        name: mapValueOfType<String>(json, r'name'),
        header: mapValueOfType<String>(json, r'header'),
        purpose: mapValueOfType<String>(json, r'purpose'),
        lastPostAt: mapValueOfType<int>(json, r'last_post_at'),
        totalMsgCount: mapValueOfType<int>(json, r'total_msg_count'),
        extraUpdateAt: mapValueOfType<int>(json, r'extra_update_at'),
        creatorId: mapValueOfType<String>(json, r'creator_id'),
      );
    }
    return null;
  }

  static List<MmChannel>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmChannel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmChannel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmChannel> mapFromJson(dynamic json) {
    final map = <String, MmChannel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmChannel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmChannel-objects as value to a dart map
  static Map<String, List<MmChannel>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmChannel>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmChannel.listFromJson(
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
