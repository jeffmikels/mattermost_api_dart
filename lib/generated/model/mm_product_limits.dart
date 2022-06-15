//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmProductLimits {
  /// Returns a new [MmProductLimits] instance.
  MmProductLimits({
    this.boards,
    this.files,
    this.integrations,
    this.messages,
    this.teams,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MmBoardsLimits? boards;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MmFilesLimits? files;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MmIntegrationsLimits? integrations;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MmMessagesLimits? messages;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MmTeamsLimits? teams;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmProductLimits &&
          other.boards == boards &&
          other.files == files &&
          other.integrations == integrations &&
          other.messages == messages &&
          other.teams == teams;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (boards == null ? 0 : boards!.hashCode) +
      (files == null ? 0 : files!.hashCode) +
      (integrations == null ? 0 : integrations!.hashCode) +
      (messages == null ? 0 : messages!.hashCode) +
      (teams == null ? 0 : teams!.hashCode);

  @override
  String toString() =>
      'MmProductLimits[boards=$boards, files=$files, integrations=$integrations, messages=$messages, teams=$teams]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (boards != null) {
      _json[r'boards'] = boards;
    }
    if (files != null) {
      _json[r'files'] = files;
    }
    if (integrations != null) {
      _json[r'integrations'] = integrations;
    }
    if (messages != null) {
      _json[r'messages'] = messages;
    }
    if (teams != null) {
      _json[r'teams'] = teams;
    }
    return _json;
  }

  /// Returns a new [MmProductLimits] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmProductLimits? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmProductLimits[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmProductLimits[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmProductLimits(
        boards: MmBoardsLimits.fromJson(json[r'boards']),
        files: MmFilesLimits.fromJson(json[r'files']),
        integrations: MmIntegrationsLimits.fromJson(json[r'integrations']),
        messages: MmMessagesLimits.fromJson(json[r'messages']),
        teams: MmTeamsLimits.fromJson(json[r'teams']),
      );
    }
    return null;
  }

  static List<MmProductLimits>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmProductLimits>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmProductLimits.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmProductLimits> mapFromJson(dynamic json) {
    final map = <String, MmProductLimits>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmProductLimits.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmProductLimits-objects as value to a dart map
  static Map<String, List<MmProductLimits>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmProductLimits>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmProductLimits.listFromJson(
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
