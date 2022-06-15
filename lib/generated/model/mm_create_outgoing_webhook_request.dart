//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmCreateOutgoingWebhookRequest {
  /// Returns a new [MmCreateOutgoingWebhookRequest] instance.
  MmCreateOutgoingWebhookRequest({
    required this.teamId,
    this.channelId,
    this.creatorId,
    this.description,
    required this.displayName,
    this.triggerWords = const [],
    this.triggerWhen,
    this.callbackUrls = const [],
    this.contentType = 'application/x-www-form-urlencoded',
  });

  /// The ID of the team that the webhook watchs
  String teamId;

  /// The ID of a public channel that the webhook watchs
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channelId;

  /// The ID of the owner of the webhook if different than the requester. Required in [local mode](https://docs.mattermost.com/administration/mmctl-cli-tool.html#local-mode).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? creatorId;

  /// The description for this outgoing webhook
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// The display name for this outgoing webhook
  String displayName;

  /// List of words for the webhook to trigger on
  List<String> triggerWords;

  /// When to trigger the webhook, `0` when a trigger word is present at all and `1` if the message starts with a trigger word
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? triggerWhen;

  /// The URLs to POST the payloads to when the webhook is triggered
  List<String> callbackUrls;

  /// The format to POST the data in, either `application/json` or `application/x-www-form-urlencoded`
  String contentType;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmCreateOutgoingWebhookRequest &&
          other.teamId == teamId &&
          other.channelId == channelId &&
          other.creatorId == creatorId &&
          other.description == description &&
          other.displayName == displayName &&
          other.triggerWords == triggerWords &&
          other.triggerWhen == triggerWhen &&
          other.callbackUrls == callbackUrls &&
          other.contentType == contentType;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (teamId.hashCode) +
      (channelId == null ? 0 : channelId!.hashCode) +
      (creatorId == null ? 0 : creatorId!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (displayName.hashCode) +
      (triggerWords.hashCode) +
      (triggerWhen == null ? 0 : triggerWhen!.hashCode) +
      (callbackUrls.hashCode) +
      (contentType.hashCode);

  @override
  String toString() =>
      'MmCreateOutgoingWebhookRequest[teamId=$teamId, channelId=$channelId, creatorId=$creatorId, description=$description, displayName=$displayName, triggerWords=$triggerWords, triggerWhen=$triggerWhen, callbackUrls=$callbackUrls, contentType=$contentType]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'team_id'] = teamId;
    if (channelId != null) {
      _json[r'channel_id'] = channelId;
    }
    if (creatorId != null) {
      _json[r'creator_id'] = creatorId;
    }
    if (description != null) {
      _json[r'description'] = description;
    }
    _json[r'display_name'] = displayName;
    _json[r'trigger_words'] = triggerWords;
    if (triggerWhen != null) {
      _json[r'trigger_when'] = triggerWhen;
    }
    _json[r'callback_urls'] = callbackUrls;
    _json[r'content_type'] = contentType;
    return _json;
  }

  /// Returns a new [MmCreateOutgoingWebhookRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmCreateOutgoingWebhookRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmCreateOutgoingWebhookRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmCreateOutgoingWebhookRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmCreateOutgoingWebhookRequest(
        teamId: mapValueOfType<String>(json, r'team_id')!,
        channelId: mapValueOfType<String>(json, r'channel_id'),
        creatorId: mapValueOfType<String>(json, r'creator_id'),
        description: mapValueOfType<String>(json, r'description'),
        displayName: mapValueOfType<String>(json, r'display_name')!,
        triggerWords: json[r'trigger_words'] is List ? (json[r'trigger_words'] as List).cast<String>() : const [],
        triggerWhen: mapValueOfType<int>(json, r'trigger_when'),
        callbackUrls: json[r'callback_urls'] is List ? (json[r'callback_urls'] as List).cast<String>() : const [],
        contentType: mapValueOfType<String>(json, r'content_type') ?? 'application/x-www-form-urlencoded',
      );
    }
    return null;
  }

  static List<MmCreateOutgoingWebhookRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmCreateOutgoingWebhookRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmCreateOutgoingWebhookRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmCreateOutgoingWebhookRequest> mapFromJson(dynamic json) {
    final map = <String, MmCreateOutgoingWebhookRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmCreateOutgoingWebhookRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmCreateOutgoingWebhookRequest-objects as value to a dart map
  static Map<String, List<MmCreateOutgoingWebhookRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmCreateOutgoingWebhookRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmCreateOutgoingWebhookRequest.listFromJson(
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
    'display_name',
    'trigger_words',
    'callback_urls',
  };
}
