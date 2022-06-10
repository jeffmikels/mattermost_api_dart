//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class UploadFile201Response {
  /// Returns a new [UploadFile201Response] instance.
  UploadFile201Response({
    this.fileInfos = const [],
    this.clientIds = const [],
  });

  /// A list of file metadata that has been stored in the database
  List<FileInfo> fileInfos;

  /// A list of the client_ids that were provided in the request
  List<String> clientIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UploadFile201Response &&
     other.fileInfos == fileInfos &&
     other.clientIds == clientIds;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fileInfos.hashCode) +
    (clientIds.hashCode);

  @override
  String toString() => 'UploadFile201Response[fileInfos=$fileInfos, clientIds=$clientIds]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'file_infos'] = fileInfos;
      _json[r'client_ids'] = clientIds;
    return _json;
  }

  /// Returns a new [UploadFile201Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UploadFile201Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UploadFile201Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UploadFile201Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UploadFile201Response(
        fileInfos: FileInfo.listFromJson(json[r'file_infos']) ?? const [],
        clientIds: json[r'client_ids'] is List
            ? (json[r'client_ids'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<UploadFile201Response>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UploadFile201Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UploadFile201Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UploadFile201Response> mapFromJson(dynamic json) {
    final map = <String, UploadFile201Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UploadFile201Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UploadFile201Response-objects as value to a dart map
  static Map<String, List<UploadFile201Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UploadFile201Response>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UploadFile201Response.listFromJson(entry.value, growable: growable,);
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

