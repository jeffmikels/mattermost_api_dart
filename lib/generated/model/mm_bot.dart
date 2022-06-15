//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmBot {
  /// Returns a new [MmBot] instance.
  MmBot({
    this.userId,
    this.createAt,
    this.updateAt,
    this.deleteAt,
    this.username,
    this.displayName,
    this.description,
    this.ownerId,
  });

  /// The user id of the associated user entry.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  /// The time in milliseconds a bot was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createAt;

  /// The time in milliseconds a bot was last updated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updateAt;

  /// The time in milliseconds a bot was deleted
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
  String? username;

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
  String? description;

  /// The user id of the user that currently owns this bot.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ownerId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmBot &&
          other.userId == userId &&
          other.createAt == createAt &&
          other.updateAt == updateAt &&
          other.deleteAt == deleteAt &&
          other.username == username &&
          other.displayName == displayName &&
          other.description == description &&
          other.ownerId == ownerId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (userId == null ? 0 : userId!.hashCode) +
      (createAt == null ? 0 : createAt!.hashCode) +
      (updateAt == null ? 0 : updateAt!.hashCode) +
      (deleteAt == null ? 0 : deleteAt!.hashCode) +
      (username == null ? 0 : username!.hashCode) +
      (displayName == null ? 0 : displayName!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (ownerId == null ? 0 : ownerId!.hashCode);

  @override
  String toString() =>
      'MmBot[userId=$userId, createAt=$createAt, updateAt=$updateAt, deleteAt=$deleteAt, username=$username, displayName=$displayName, description=$description, ownerId=$ownerId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (userId != null) {
      _json[r'user_id'] = userId;
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
    if (username != null) {
      _json[r'username'] = username;
    }
    if (displayName != null) {
      _json[r'display_name'] = displayName;
    }
    if (description != null) {
      _json[r'description'] = description;
    }
    if (ownerId != null) {
      _json[r'owner_id'] = ownerId;
    }
    return _json;
  }

  /// Returns a new [MmBot] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmBot? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmBot[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmBot[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmBot(
        userId: mapValueOfType<String>(json, r'user_id'),
        createAt: mapValueOfType<int>(json, r'create_at'),
        updateAt: mapValueOfType<int>(json, r'update_at'),
        deleteAt: mapValueOfType<int>(json, r'delete_at'),
        username: mapValueOfType<String>(json, r'username'),
        displayName: mapValueOfType<String>(json, r'display_name'),
        description: mapValueOfType<String>(json, r'description'),
        ownerId: mapValueOfType<String>(json, r'owner_id'),
      );
    }
    return null;
  }

  static List<MmBot>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmBot>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmBot.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmBot> mapFromJson(dynamic json) {
    final map = <String, MmBot>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmBot.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmBot-objects as value to a dart map
  static Map<String, List<MmBot>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmBot>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmBot.listFromJson(
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
