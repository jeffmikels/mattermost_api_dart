//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmPost {
  /// Returns a new [MmPost] instance.
  MmPost({
    this.id,
    this.createAt,
    this.updateAt,
    this.deleteAt,
    this.editAt,
    this.userId,
    this.channelId,
    this.rootId,
    this.originalId,
    this.message,
    this.type,
    this.props,
    this.hashtag,
    this.fileIds = const [],
    this.pendingPostId,
    this.metadata,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The time in milliseconds a post was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createAt;

  /// The time in milliseconds a post was last updated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updateAt;

  /// The time in milliseconds a post was deleted
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
  int? editAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

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
  String? rootId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? originalId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

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
  Map? props;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hashtag;

  List<String> fileIds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pendingPostId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MmPostMetadata? metadata;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmPost &&
          other.id == id &&
          other.createAt == createAt &&
          other.updateAt == updateAt &&
          other.deleteAt == deleteAt &&
          other.editAt == editAt &&
          other.userId == userId &&
          other.channelId == channelId &&
          other.rootId == rootId &&
          other.originalId == originalId &&
          other.message == message &&
          other.type == type &&
          other.props == props &&
          other.hashtag == hashtag &&
          other.fileIds == fileIds &&
          other.pendingPostId == pendingPostId &&
          other.metadata == metadata;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (createAt == null ? 0 : createAt!.hashCode) +
      (updateAt == null ? 0 : updateAt!.hashCode) +
      (deleteAt == null ? 0 : deleteAt!.hashCode) +
      (editAt == null ? 0 : editAt!.hashCode) +
      (userId == null ? 0 : userId!.hashCode) +
      (channelId == null ? 0 : channelId!.hashCode) +
      (rootId == null ? 0 : rootId!.hashCode) +
      (originalId == null ? 0 : originalId!.hashCode) +
      (message == null ? 0 : message!.hashCode) +
      (type == null ? 0 : type!.hashCode) +
      (props == null ? 0 : props!.hashCode) +
      (hashtag == null ? 0 : hashtag!.hashCode) +
      (fileIds.hashCode) +
      (pendingPostId == null ? 0 : pendingPostId!.hashCode) +
      (metadata == null ? 0 : metadata!.hashCode);

  @override
  String toString() =>
      'MmPost[id=$id, createAt=$createAt, updateAt=$updateAt, deleteAt=$deleteAt, editAt=$editAt, userId=$userId, channelId=$channelId, rootId=$rootId, originalId=$originalId, message=$message, type=$type, props=$props, hashtag=$hashtag, fileIds=$fileIds, pendingPostId=$pendingPostId, metadata=$metadata]';

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
    if (editAt != null) {
      _json[r'edit_at'] = editAt;
    }
    if (userId != null) {
      _json[r'user_id'] = userId;
    }
    if (channelId != null) {
      _json[r'channel_id'] = channelId;
    }
    if (rootId != null) {
      _json[r'root_id'] = rootId;
    }
    if (originalId != null) {
      _json[r'original_id'] = originalId;
    }
    if (message != null) {
      _json[r'message'] = message;
    }
    if (type != null) {
      _json[r'type'] = type;
    }
    if (props != null) {
      _json[r'props'] = props;
    }
    if (hashtag != null) {
      _json[r'hashtag'] = hashtag;
    }
    _json[r'file_ids'] = fileIds;
    if (pendingPostId != null) {
      _json[r'pending_post_id'] = pendingPostId;
    }
    if (metadata != null) {
      _json[r'metadata'] = metadata;
    }
    return _json;
  }

  /// Returns a new [MmPost] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmPost? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmPost[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmPost[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmPost(
        id: mapValueOfType<String>(json, r'id'),
        createAt: mapValueOfType<int>(json, r'create_at'),
        updateAt: mapValueOfType<int>(json, r'update_at'),
        deleteAt: mapValueOfType<int>(json, r'delete_at'),
        editAt: mapValueOfType<int>(json, r'edit_at'),
        userId: mapValueOfType<String>(json, r'user_id'),
        channelId: mapValueOfType<String>(json, r'channel_id'),
        rootId: mapValueOfType<String>(json, r'root_id'),
        originalId: mapValueOfType<String>(json, r'original_id'),
        message: mapValueOfType<String>(json, r'message'),
        type: mapValueOfType<String>(json, r'type'),
        props: mapValueOfType<Map>(json, r'props'),
        hashtag: mapValueOfType<String>(json, r'hashtag'),
        fileIds: json[r'file_ids'] is List ? (json[r'file_ids'] as List).cast<String>() : const [],
        pendingPostId: mapValueOfType<String>(json, r'pending_post_id'),
        metadata: MmPostMetadata.fromJson(json[r'metadata']),
      );
    }
    return null;
  }

  static List<MmPost>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmPost>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmPost.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmPost> mapFromJson(dynamic json) {
    final map = <String, MmPost>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmPost.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmPost-objects as value to a dart map
  static Map<String, List<MmPost>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmPost>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmPost.listFromJson(
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
