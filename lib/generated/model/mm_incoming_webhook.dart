//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmIncomingWebhook {
  /// Returns a new [MmIncomingWebhook] instance.
  MmIncomingWebhook({
    this.id,
    this.createAt,
    this.updateAt,
    this.deleteAt,
    this.channelId,
    this.description,
    this.displayName,
  });

  /// The unique identifier for this incoming webhook
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The time in milliseconds a incoming webhook was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createAt;

  /// The time in milliseconds a incoming webhook was last updated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updateAt;

  /// The time in milliseconds a incoming webhook was deleted
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deleteAt;

  /// The ID of a public channel or private group that receives the webhook payloads
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channelId;

  /// The description for this incoming webhook
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// The display name for this incoming webhook
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmIncomingWebhook &&
          other.id == id &&
          other.createAt == createAt &&
          other.updateAt == updateAt &&
          other.deleteAt == deleteAt &&
          other.channelId == channelId &&
          other.description == description &&
          other.displayName == displayName;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (createAt == null ? 0 : createAt!.hashCode) +
      (updateAt == null ? 0 : updateAt!.hashCode) +
      (deleteAt == null ? 0 : deleteAt!.hashCode) +
      (channelId == null ? 0 : channelId!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (displayName == null ? 0 : displayName!.hashCode);

  @override
  String toString() =>
      'MmIncomingWebhook[id=$id, createAt=$createAt, updateAt=$updateAt, deleteAt=$deleteAt, channelId=$channelId, description=$description, displayName=$displayName]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
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
    if (channelId != null) {
      _json[r'channel_id'] = channelId;
    }
    if (description != null) {
      _json[r'description'] = description;
    }
    if (displayName != null) {
      _json[r'display_name'] = displayName;
    }
    return _json;
  }

  /// Returns a new [MmIncomingWebhook] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmIncomingWebhook? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmIncomingWebhook[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmIncomingWebhook[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmIncomingWebhook(
        id: mapValueOfType<String>(json, r'id'),
        createAt: mapValueOfType<int>(json, r'create_at'),
        updateAt: mapValueOfType<int>(json, r'update_at'),
        deleteAt: mapValueOfType<int>(json, r'delete_at'),
        channelId: mapValueOfType<String>(json, r'channel_id'),
        description: mapValueOfType<String>(json, r'description'),
        displayName: mapValueOfType<String>(json, r'display_name'),
      );
    }
    return null;
  }

  static List<MmIncomingWebhook>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmIncomingWebhook>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmIncomingWebhook.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmIncomingWebhook> mapFromJson(dynamic json) {
    final map = <String, MmIncomingWebhook>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmIncomingWebhook.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmIncomingWebhook-objects as value to a dart map
  static Map<String, List<MmIncomingWebhook>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmIncomingWebhook>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmIncomingWebhook.listFromJson(
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
