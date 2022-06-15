//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmCommand {
  /// Returns a new [MmCommand] instance.
  MmCommand({
    this.id,
    this.token,
    this.createAt,
    this.updateAt,
    this.deleteAt,
    this.creatorId,
    this.teamId,
    this.trigger,
    this.method,
    this.username,
    this.iconUrl,
    this.autoComplete,
    this.autoCompleteDesc,
    this.autoCompleteHint,
    this.displayName,
    this.description,
    this.url,
  });

  /// The ID of the slash command
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The token which is used to verify the source of the payload
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  /// The time in milliseconds the command was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createAt;

  /// The time in milliseconds the command was last updated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updateAt;

  /// The time in milliseconds the command was deleted, 0 if never deleted
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deleteAt;

  /// The user id for the commands creator
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? creatorId;

  /// The team id for which this command is configured
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? teamId;

  /// The string that triggers this command
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? trigger;

  /// Is the trigger done with HTTP Get ('G') or HTTP Post ('P')
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? method;

  /// What is the username for the response post
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  /// The url to find the icon for this users avatar
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iconUrl;

  /// Use auto complete for this command
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? autoComplete;

  /// The description for this command shown when selecting the command
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? autoCompleteDesc;

  /// The hint for this command
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? autoCompleteHint;

  /// Display name for the command
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  /// Description for this command
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// The URL that is triggered
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmCommand &&
          other.id == id &&
          other.token == token &&
          other.createAt == createAt &&
          other.updateAt == updateAt &&
          other.deleteAt == deleteAt &&
          other.creatorId == creatorId &&
          other.teamId == teamId &&
          other.trigger == trigger &&
          other.method == method &&
          other.username == username &&
          other.iconUrl == iconUrl &&
          other.autoComplete == autoComplete &&
          other.autoCompleteDesc == autoCompleteDesc &&
          other.autoCompleteHint == autoCompleteHint &&
          other.displayName == displayName &&
          other.description == description &&
          other.url == url;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (token == null ? 0 : token!.hashCode) +
      (createAt == null ? 0 : createAt!.hashCode) +
      (updateAt == null ? 0 : updateAt!.hashCode) +
      (deleteAt == null ? 0 : deleteAt!.hashCode) +
      (creatorId == null ? 0 : creatorId!.hashCode) +
      (teamId == null ? 0 : teamId!.hashCode) +
      (trigger == null ? 0 : trigger!.hashCode) +
      (method == null ? 0 : method!.hashCode) +
      (username == null ? 0 : username!.hashCode) +
      (iconUrl == null ? 0 : iconUrl!.hashCode) +
      (autoComplete == null ? 0 : autoComplete!.hashCode) +
      (autoCompleteDesc == null ? 0 : autoCompleteDesc!.hashCode) +
      (autoCompleteHint == null ? 0 : autoCompleteHint!.hashCode) +
      (displayName == null ? 0 : displayName!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (url == null ? 0 : url!.hashCode);

  @override
  String toString() =>
      'MmCommand[id=$id, token=$token, createAt=$createAt, updateAt=$updateAt, deleteAt=$deleteAt, creatorId=$creatorId, teamId=$teamId, trigger=$trigger, method=$method, username=$username, iconUrl=$iconUrl, autoComplete=$autoComplete, autoCompleteDesc=$autoCompleteDesc, autoCompleteHint=$autoCompleteHint, displayName=$displayName, description=$description, url=$url]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (token != null) {
      _json[r'token'] = token;
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
    if (creatorId != null) {
      _json[r'creator_id'] = creatorId;
    }
    if (teamId != null) {
      _json[r'team_id'] = teamId;
    }
    if (trigger != null) {
      _json[r'trigger'] = trigger;
    }
    if (method != null) {
      _json[r'method'] = method;
    }
    if (username != null) {
      _json[r'username'] = username;
    }
    if (iconUrl != null) {
      _json[r'icon_url'] = iconUrl;
    }
    if (autoComplete != null) {
      _json[r'auto_complete'] = autoComplete;
    }
    if (autoCompleteDesc != null) {
      _json[r'auto_complete_desc'] = autoCompleteDesc;
    }
    if (autoCompleteHint != null) {
      _json[r'auto_complete_hint'] = autoCompleteHint;
    }
    if (displayName != null) {
      _json[r'display_name'] = displayName;
    }
    if (description != null) {
      _json[r'description'] = description;
    }
    if (url != null) {
      _json[r'url'] = url;
    }
    return _json;
  }

  /// Returns a new [MmCommand] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmCommand? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmCommand[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmCommand[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmCommand(
        id: mapValueOfType<String>(json, r'id'),
        token: mapValueOfType<String>(json, r'token'),
        createAt: mapValueOfType<int>(json, r'create_at'),
        updateAt: mapValueOfType<int>(json, r'update_at'),
        deleteAt: mapValueOfType<int>(json, r'delete_at'),
        creatorId: mapValueOfType<String>(json, r'creator_id'),
        teamId: mapValueOfType<String>(json, r'team_id'),
        trigger: mapValueOfType<String>(json, r'trigger'),
        method: mapValueOfType<String>(json, r'method'),
        username: mapValueOfType<String>(json, r'username'),
        iconUrl: mapValueOfType<String>(json, r'icon_url'),
        autoComplete: mapValueOfType<bool>(json, r'auto_complete'),
        autoCompleteDesc: mapValueOfType<String>(json, r'auto_complete_desc'),
        autoCompleteHint: mapValueOfType<String>(json, r'auto_complete_hint'),
        displayName: mapValueOfType<String>(json, r'display_name'),
        description: mapValueOfType<String>(json, r'description'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<MmCommand>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmCommand>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmCommand.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmCommand> mapFromJson(dynamic json) {
    final map = <String, MmCommand>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmCommand.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmCommand-objects as value to a dart map
  static Map<String, List<MmCommand>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmCommand>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmCommand.listFromJson(
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
