//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostUploadFile201Response {
  /// Returns a new [MattermostUploadFile201Response] instance.
  MattermostUploadFile201Response({
    this.fileInfos = const [],
    this.clientIds = const [],
  });

  /// A list of file metadata that has been stored in the database
  List<MattermostFileInfo> fileInfos;

  /// A list of the client_ids that were provided in the request
  List<String> clientIds;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MattermostUploadFile201Response && other.fileInfos == fileInfos && other.clientIds == clientIds;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (fileInfos.hashCode) + (clientIds.hashCode);

  @override
  String toString() => 'MattermostUploadFile201Response[fileInfos=$fileInfos, clientIds=$clientIds]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'file_infos'] = fileInfos;
    _json[r'client_ids'] = clientIds;
    return _json;
  }

  /// Returns a new [MattermostUploadFile201Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostUploadFile201Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostUploadFile201Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostUploadFile201Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostUploadFile201Response(
        fileInfos: MattermostFileInfo.listFromJson(json[r'file_infos']) ?? const [],
        clientIds: json[r'client_ids'] is List ? (json[r'client_ids'] as List).cast<String>() : const [],
      );
    }
    return null;
  }

  static List<MattermostUploadFile201Response>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MattermostUploadFile201Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostUploadFile201Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostUploadFile201Response> mapFromJson(dynamic json) {
    final map = <String, MattermostUploadFile201Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostUploadFile201Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostUploadFile201Response-objects as value to a dart map
  static Map<String, List<MattermostUploadFile201Response>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MattermostUploadFile201Response>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostUploadFile201Response.listFromJson(
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
