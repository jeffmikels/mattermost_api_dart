//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmCreateIncomingWebhookRequest {
  /// Returns a new [MmCreateIncomingWebhookRequest] instance.
  MmCreateIncomingWebhookRequest({
    required this.channelId,
    this.userId,
    this.displayName,
    this.description,
    this.username,
    this.iconUrl,
  });

  /// The ID of a public channel or private group that receives the webhook payloads.
  String channelId;

  /// The ID of the owner of the webhook if different than the requester. Required for [local mode](https://docs.mattermost.com/administration/mmctl-cli-tool.html#local-mode).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  /// The display name for this incoming webhook
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  /// The description for this incoming webhook
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// The username this incoming webhook will post as.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  /// The profile picture this incoming webhook will use when posting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iconUrl;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmCreateIncomingWebhookRequest &&
          other.channelId == channelId &&
          other.userId == userId &&
          other.displayName == displayName &&
          other.description == description &&
          other.username == username &&
          other.iconUrl == iconUrl;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (channelId.hashCode) +
      (userId == null ? 0 : userId!.hashCode) +
      (displayName == null ? 0 : displayName!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (username == null ? 0 : username!.hashCode) +
      (iconUrl == null ? 0 : iconUrl!.hashCode);

  @override
  String toString() =>
      'MmCreateIncomingWebhookRequest[channelId=$channelId, userId=$userId, displayName=$displayName, description=$description, username=$username, iconUrl=$iconUrl]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'channel_id'] = channelId;
    if (userId != null) {
      _json[r'user_id'] = userId;
    }
    if (displayName != null) {
      _json[r'display_name'] = displayName;
    }
    if (description != null) {
      _json[r'description'] = description;
    }
    if (username != null) {
      _json[r'username'] = username;
    }
    if (iconUrl != null) {
      _json[r'icon_url'] = iconUrl;
    }
    return _json;
  }

  /// Returns a new [MmCreateIncomingWebhookRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmCreateIncomingWebhookRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmCreateIncomingWebhookRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmCreateIncomingWebhookRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmCreateIncomingWebhookRequest(
        channelId: mapValueOfType<String>(json, r'channel_id')!,
        userId: mapValueOfType<String>(json, r'user_id'),
        displayName: mapValueOfType<String>(json, r'display_name'),
        description: mapValueOfType<String>(json, r'description'),
        username: mapValueOfType<String>(json, r'username'),
        iconUrl: mapValueOfType<String>(json, r'icon_url'),
      );
    }
    return null;
  }

  static List<MmCreateIncomingWebhookRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmCreateIncomingWebhookRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmCreateIncomingWebhookRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmCreateIncomingWebhookRequest> mapFromJson(dynamic json) {
    final map = <String, MmCreateIncomingWebhookRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmCreateIncomingWebhookRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmCreateIncomingWebhookRequest-objects as value to a dart map
  static Map<String, List<MmCreateIncomingWebhookRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmCreateIncomingWebhookRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmCreateIncomingWebhookRequest.listFromJson(
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
    'channel_id',
  };
}
