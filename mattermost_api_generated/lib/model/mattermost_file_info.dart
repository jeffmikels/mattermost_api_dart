//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostFileInfo {
  /// Returns a new [MattermostFileInfo] instance.
  MattermostFileInfo({
    this.id,
    this.userId,
    this.postId,
    this.createAt,
    this.updateAt,
    this.deleteAt,
    this.name,
    this.extension_,
    this.size,
    this.mimeType,
    this.width,
    this.height,
    this.hasPreviewImage,
  });

  /// The unique identifier for this file
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The ID of the user that uploaded this file
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  /// If this file is attached to a post, the ID of that post
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? postId;

  /// The time in milliseconds a file was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createAt;

  /// The time in milliseconds a file was last updated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updateAt;

  /// The time in milliseconds a file was deleted
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deleteAt;

  /// The name of the file
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The extension at the end of the file name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? extension_;

  /// The size of the file in bytes
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  /// The MIME type of the file
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mimeType;

  /// If this file is an image, the width of the file
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? width;

  /// If this file is an image, the height of the file
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? height;

  /// If this file is an image, whether or not it has a preview-sized version
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasPreviewImage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MattermostFileInfo &&
     other.id == id &&
     other.userId == userId &&
     other.postId == postId &&
     other.createAt == createAt &&
     other.updateAt == updateAt &&
     other.deleteAt == deleteAt &&
     other.name == name &&
     other.extension_ == extension_ &&
     other.size == size &&
     other.mimeType == mimeType &&
     other.width == width &&
     other.height == height &&
     other.hasPreviewImage == hasPreviewImage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (postId == null ? 0 : postId!.hashCode) +
    (createAt == null ? 0 : createAt!.hashCode) +
    (updateAt == null ? 0 : updateAt!.hashCode) +
    (deleteAt == null ? 0 : deleteAt!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (extension_ == null ? 0 : extension_!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (mimeType == null ? 0 : mimeType!.hashCode) +
    (width == null ? 0 : width!.hashCode) +
    (height == null ? 0 : height!.hashCode) +
    (hasPreviewImage == null ? 0 : hasPreviewImage!.hashCode);

  @override
  String toString() => 'MattermostFileInfo[id=$id, userId=$userId, postId=$postId, createAt=$createAt, updateAt=$updateAt, deleteAt=$deleteAt, name=$name, extension_=$extension_, size=$size, mimeType=$mimeType, width=$width, height=$height, hasPreviewImage=$hasPreviewImage]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (userId != null) {
      _json[r'user_id'] = userId;
    }
    if (postId != null) {
      _json[r'post_id'] = postId;
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
    if (name != null) {
      _json[r'name'] = name;
    }
    if (extension_ != null) {
      _json[r'extension'] = extension_;
    }
    if (size != null) {
      _json[r'size'] = size;
    }
    if (mimeType != null) {
      _json[r'mime_type'] = mimeType;
    }
    if (width != null) {
      _json[r'width'] = width;
    }
    if (height != null) {
      _json[r'height'] = height;
    }
    if (hasPreviewImage != null) {
      _json[r'has_preview_image'] = hasPreviewImage;
    }
    return _json;
  }

  /// Returns a new [MattermostFileInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostFileInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostFileInfo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostFileInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostFileInfo(
        id: mapValueOfType<String>(json, r'id'),
        userId: mapValueOfType<String>(json, r'user_id'),
        postId: mapValueOfType<String>(json, r'post_id'),
        createAt: mapValueOfType<int>(json, r'create_at'),
        updateAt: mapValueOfType<int>(json, r'update_at'),
        deleteAt: mapValueOfType<int>(json, r'delete_at'),
        name: mapValueOfType<String>(json, r'name'),
        extension_: mapValueOfType<String>(json, r'extension'),
        size: mapValueOfType<int>(json, r'size'),
        mimeType: mapValueOfType<String>(json, r'mime_type'),
        width: mapValueOfType<int>(json, r'width'),
        height: mapValueOfType<int>(json, r'height'),
        hasPreviewImage: mapValueOfType<bool>(json, r'has_preview_image'),
      );
    }
    return null;
  }

  static List<MattermostFileInfo>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MattermostFileInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostFileInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostFileInfo> mapFromJson(dynamic json) {
    final map = <String, MattermostFileInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostFileInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostFileInfo-objects as value to a dart map
  static Map<String, List<MattermostFileInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MattermostFileInfo>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostFileInfo.listFromJson(entry.value, growable: growable,);
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

