//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmUpdateOutgoingWebhookRequest {
  /// Returns a new [MmUpdateOutgoingWebhookRequest] instance.
  MmUpdateOutgoingWebhookRequest({
    this.hookId,
    required this.channelId,
    required this.displayName,
    required this.description,
  });

  /// Outgoing webhook GUID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hookId;

  /// The ID of a public channel or private group that receives the webhook payloads.
  String channelId;

  /// The display name for this incoming webhook
  String displayName;

  /// The description for this incoming webhook
  String description;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmUpdateOutgoingWebhookRequest &&
          other.hookId == hookId &&
          other.channelId == channelId &&
          other.displayName == displayName &&
          other.description == description;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (hookId == null ? 0 : hookId!.hashCode) + (channelId.hashCode) + (displayName.hashCode) + (description.hashCode);

  @override
  String toString() =>
      'MmUpdateOutgoingWebhookRequest[hookId=$hookId, channelId=$channelId, displayName=$displayName, description=$description]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (hookId != null) {
      _json[r'hook_id'] = hookId;
    }
    _json[r'channel_id'] = channelId;
    _json[r'display_name'] = displayName;
    _json[r'description'] = description;
    return _json;
  }

  /// Returns a new [MmUpdateOutgoingWebhookRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmUpdateOutgoingWebhookRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmUpdateOutgoingWebhookRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmUpdateOutgoingWebhookRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmUpdateOutgoingWebhookRequest(
        hookId: mapValueOfType<String>(json, r'hook_id'),
        channelId: mapValueOfType<String>(json, r'channel_id')!,
        displayName: mapValueOfType<String>(json, r'display_name')!,
        description: mapValueOfType<String>(json, r'description')!,
      );
    }
    return null;
  }

  static List<MmUpdateOutgoingWebhookRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmUpdateOutgoingWebhookRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmUpdateOutgoingWebhookRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmUpdateOutgoingWebhookRequest> mapFromJson(dynamic json) {
    final map = <String, MmUpdateOutgoingWebhookRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUpdateOutgoingWebhookRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmUpdateOutgoingWebhookRequest-objects as value to a dart map
  static Map<String, List<MmUpdateOutgoingWebhookRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmUpdateOutgoingWebhookRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUpdateOutgoingWebhookRequest.listFromJson(
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
    'display_name',
    'description',
  };
}
