//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostCreateUploadRequest {
  /// Returns a new [MattermostCreateUploadRequest] instance.
  MattermostCreateUploadRequest({
    required this.channelId,
    required this.filename,
    required this.fileSize,
  });

  /// The ID of the channel to upload to.
  String channelId;

  /// The name of the file to upload.
  String filename;

  /// The size of the file to upload in bytes.
  int fileSize;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MattermostCreateUploadRequest &&
     other.channelId == channelId &&
     other.filename == filename &&
     other.fileSize == fileSize;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (channelId.hashCode) +
    (filename.hashCode) +
    (fileSize.hashCode);

  @override
  String toString() => 'MattermostCreateUploadRequest[channelId=$channelId, filename=$filename, fileSize=$fileSize]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'channel_id'] = channelId;
      _json[r'filename'] = filename;
      _json[r'file_size'] = fileSize;
    return _json;
  }

  /// Returns a new [MattermostCreateUploadRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostCreateUploadRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostCreateUploadRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostCreateUploadRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostCreateUploadRequest(
        channelId: mapValueOfType<String>(json, r'channel_id')!,
        filename: mapValueOfType<String>(json, r'filename')!,
        fileSize: mapValueOfType<int>(json, r'file_size')!,
      );
    }
    return null;
  }

  static List<MattermostCreateUploadRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MattermostCreateUploadRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostCreateUploadRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostCreateUploadRequest> mapFromJson(dynamic json) {
    final map = <String, MattermostCreateUploadRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostCreateUploadRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostCreateUploadRequest-objects as value to a dart map
  static Map<String, List<MattermostCreateUploadRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MattermostCreateUploadRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostCreateUploadRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'channel_id',
    'filename',
    'file_size',
  };
}

