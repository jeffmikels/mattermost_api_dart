//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmSharedChannel {
  /// Returns a new [MmSharedChannel] instance.
  MmSharedChannel({
    this.id,
    this.teamId,
    this.home,
    this.readonly,
    this.name,
    this.displayName,
    this.purpose,
    this.header,
    this.creatorId,
    this.createAt,
    this.updateAt,
    this.remoteId,
  });

  /// Channel id of the shared channel
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
  String? teamId;

  /// Is this the home cluster for the shared channel
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? home;

  /// Is this shared channel shared as read only
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? readonly;

  /// Channel name as it is shared (may be different than original channel name)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Channel display name as it appears locally
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
  String? purpose;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? header;

  /// Id of the user that shared the channel
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? creatorId;

  /// Time in milliseconds that the channel was shared
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createAt;

  /// Time in milliseconds that the shared channel record was last updated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updateAt;

  /// Id of the remote cluster where the shared channel is homed
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? remoteId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmSharedChannel &&
          other.id == id &&
          other.teamId == teamId &&
          other.home == home &&
          other.readonly == readonly &&
          other.name == name &&
          other.displayName == displayName &&
          other.purpose == purpose &&
          other.header == header &&
          other.creatorId == creatorId &&
          other.createAt == createAt &&
          other.updateAt == updateAt &&
          other.remoteId == remoteId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (teamId == null ? 0 : teamId!.hashCode) +
      (home == null ? 0 : home!.hashCode) +
      (readonly == null ? 0 : readonly!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (displayName == null ? 0 : displayName!.hashCode) +
      (purpose == null ? 0 : purpose!.hashCode) +
      (header == null ? 0 : header!.hashCode) +
      (creatorId == null ? 0 : creatorId!.hashCode) +
      (createAt == null ? 0 : createAt!.hashCode) +
      (updateAt == null ? 0 : updateAt!.hashCode) +
      (remoteId == null ? 0 : remoteId!.hashCode);

  @override
  String toString() =>
      'MmSharedChannel[id=$id, teamId=$teamId, home=$home, readonly=$readonly, name=$name, displayName=$displayName, purpose=$purpose, header=$header, creatorId=$creatorId, createAt=$createAt, updateAt=$updateAt, remoteId=$remoteId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (teamId != null) {
      _json[r'team_id'] = teamId;
    }
    if (home != null) {
      _json[r'home'] = home;
    }
    if (readonly != null) {
      _json[r'readonly'] = readonly;
    }
    if (name != null) {
      _json[r'name'] = name;
    }
    if (displayName != null) {
      _json[r'display_name'] = displayName;
    }
    if (purpose != null) {
      _json[r'purpose'] = purpose;
    }
    if (header != null) {
      _json[r'header'] = header;
    }
    if (creatorId != null) {
      _json[r'creator_id'] = creatorId;
    }
    if (createAt != null) {
      _json[r'create_at'] = createAt;
    }
    if (updateAt != null) {
      _json[r'update_at'] = updateAt;
    }
    if (remoteId != null) {
      _json[r'remote_id'] = remoteId;
    }
    return _json;
  }

  /// Returns a new [MmSharedChannel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmSharedChannel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmSharedChannel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmSharedChannel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmSharedChannel(
        id: mapValueOfType<String>(json, r'id'),
        teamId: mapValueOfType<String>(json, r'team_id'),
        home: mapValueOfType<bool>(json, r'home'),
        readonly: mapValueOfType<bool>(json, r'readonly'),
        name: mapValueOfType<String>(json, r'name'),
        displayName: mapValueOfType<String>(json, r'display_name'),
        purpose: mapValueOfType<String>(json, r'purpose'),
        header: mapValueOfType<String>(json, r'header'),
        creatorId: mapValueOfType<String>(json, r'creator_id'),
        createAt: mapValueOfType<int>(json, r'create_at'),
        updateAt: mapValueOfType<int>(json, r'update_at'),
        remoteId: mapValueOfType<String>(json, r'remote_id'),
      );
    }
    return null;
  }

  static List<MmSharedChannel>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmSharedChannel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmSharedChannel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmSharedChannel> mapFromJson(dynamic json) {
    final map = <String, MmSharedChannel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSharedChannel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmSharedChannel-objects as value to a dart map
  static Map<String, List<MmSharedChannel>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmSharedChannel>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSharedChannel.listFromJson(
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
