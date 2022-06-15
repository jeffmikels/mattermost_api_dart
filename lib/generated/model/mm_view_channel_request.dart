//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmViewChannelRequest {
  /// Returns a new [MmViewChannelRequest] instance.
  MmViewChannelRequest({
    required this.channelId,
    this.prevChannelId,
  });

  /// The channel ID that is being viewed. Use a blank string to indicate that all channels have lost focus.
  String channelId;

  /// The channel ID of the previous channel, used when switching channels. Providing this ID will cause push notifications to clear on the channel being switched to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prevChannelId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmViewChannelRequest && other.channelId == channelId && other.prevChannelId == prevChannelId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (channelId.hashCode) + (prevChannelId == null ? 0 : prevChannelId!.hashCode);

  @override
  String toString() => 'MmViewChannelRequest[channelId=$channelId, prevChannelId=$prevChannelId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'channel_id'] = channelId;
    if (prevChannelId != null) {
      _json[r'prev_channel_id'] = prevChannelId;
    }
    return _json;
  }

  /// Returns a new [MmViewChannelRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmViewChannelRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmViewChannelRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmViewChannelRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmViewChannelRequest(
        channelId: mapValueOfType<String>(json, r'channel_id')!,
        prevChannelId: mapValueOfType<String>(json, r'prev_channel_id'),
      );
    }
    return null;
  }

  static List<MmViewChannelRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmViewChannelRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmViewChannelRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmViewChannelRequest> mapFromJson(dynamic json) {
    final map = <String, MmViewChannelRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmViewChannelRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmViewChannelRequest-objects as value to a dart map
  static Map<String, List<MmViewChannelRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmViewChannelRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmViewChannelRequest.listFromJson(
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
