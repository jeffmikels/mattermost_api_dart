//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmTopChannel {
  /// Returns a new [MmTopChannel] instance.
  MmTopChannel({
    this.id,
    this.type,
    this.displayName,
    this.name,
    this.teamId,
    this.messageCount,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

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
  String? teamId;

  /// The number of messages posted in the channel by users over the given time period (not including messages posted by bots).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? messageCount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmTopChannel &&
          other.id == id &&
          other.type == type &&
          other.displayName == displayName &&
          other.name == name &&
          other.teamId == teamId &&
          other.messageCount == messageCount;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (type == null ? 0 : type!.hashCode) +
      (displayName == null ? 0 : displayName!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (teamId == null ? 0 : teamId!.hashCode) +
      (messageCount == null ? 0 : messageCount!.hashCode);

  @override
  String toString() =>
      'MmTopChannel[id=$id, type=$type, displayName=$displayName, name=$name, teamId=$teamId, messageCount=$messageCount]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
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
    if (teamId != null) {
      _json[r'team_id'] = teamId;
    }
    if (messageCount != null) {
      _json[r'message_count'] = messageCount;
    }
    return _json;
  }

  /// Returns a new [MmTopChannel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmTopChannel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmTopChannel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmTopChannel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmTopChannel(
        id: mapValueOfType<String>(json, r'id'),
        type: mapValueOfType<String>(json, r'type'),
        displayName: mapValueOfType<String>(json, r'display_name'),
        name: mapValueOfType<String>(json, r'name'),
        teamId: mapValueOfType<String>(json, r'team_id'),
        messageCount: mapValueOfType<String>(json, r'message_count'),
      );
    }
    return null;
  }

  static List<MmTopChannel>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmTopChannel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmTopChannel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmTopChannel> mapFromJson(dynamic json) {
    final map = <String, MmTopChannel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmTopChannel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmTopChannel-objects as value to a dart map
  static Map<String, List<MmTopChannel>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmTopChannel>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmTopChannel.listFromJson(
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
