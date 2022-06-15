//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmCreateChannelRequest {
  /// Returns a new [MmCreateChannelRequest] instance.
  MmCreateChannelRequest({
    required this.teamId,
    required this.name,
    required this.displayName,
    this.purpose,
    this.header,
    required this.type,
  });

  /// The team ID of the team to create the channel on
  String teamId;

  /// The unique handle for the channel, will be present in the channel URL
  String name;

  /// The non-unique UI name for the channel
  String displayName;

  /// A short description of the purpose of the channel
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? purpose;

  /// Markdown-formatted text to display in the header of the channel
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? header;

  /// 'O' for a public channel, 'P' for a private channel
  String type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmCreateChannelRequest &&
          other.teamId == teamId &&
          other.name == name &&
          other.displayName == displayName &&
          other.purpose == purpose &&
          other.header == header &&
          other.type == type;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (teamId.hashCode) +
      (name.hashCode) +
      (displayName.hashCode) +
      (purpose == null ? 0 : purpose!.hashCode) +
      (header == null ? 0 : header!.hashCode) +
      (type.hashCode);

  @override
  String toString() =>
      'MmCreateChannelRequest[teamId=$teamId, name=$name, displayName=$displayName, purpose=$purpose, header=$header, type=$type]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'team_id'] = teamId;
    _json[r'name'] = name;
    _json[r'display_name'] = displayName;
    if (purpose != null) {
      _json[r'purpose'] = purpose;
    }
    if (header != null) {
      _json[r'header'] = header;
    }
    _json[r'type'] = type;
    return _json;
  }

  /// Returns a new [MmCreateChannelRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmCreateChannelRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmCreateChannelRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmCreateChannelRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmCreateChannelRequest(
        teamId: mapValueOfType<String>(json, r'team_id')!,
        name: mapValueOfType<String>(json, r'name')!,
        displayName: mapValueOfType<String>(json, r'display_name')!,
        purpose: mapValueOfType<String>(json, r'purpose'),
        header: mapValueOfType<String>(json, r'header'),
        type: mapValueOfType<String>(json, r'type')!,
      );
    }
    return null;
  }

  static List<MmCreateChannelRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmCreateChannelRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmCreateChannelRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmCreateChannelRequest> mapFromJson(dynamic json) {
    final map = <String, MmCreateChannelRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmCreateChannelRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmCreateChannelRequest-objects as value to a dart map
  static Map<String, List<MmCreateChannelRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmCreateChannelRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmCreateChannelRequest.listFromJson(
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
  static const requiredKeys = <String>{
    'team_id',
    'name',
    'display_name',
    'type',
  };
}
