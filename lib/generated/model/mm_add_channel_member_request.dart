//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmAddChannelMemberRequest {
  /// Returns a new [MmAddChannelMemberRequest] instance.
  MmAddChannelMemberRequest({
    required this.userId,
    this.postRootId,
  });

  /// The ID of user to add into the channel
  String userId;

  /// The ID of root post where link to add channel member originates
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? postRootId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmAddChannelMemberRequest && other.userId == userId && other.postRootId == postRootId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (userId.hashCode) + (postRootId == null ? 0 : postRootId!.hashCode);

  @override
  String toString() => 'MmAddChannelMemberRequest[userId=$userId, postRootId=$postRootId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'user_id'] = userId;
    if (postRootId != null) {
      _json[r'post_root_id'] = postRootId;
    }
    return _json;
  }

  /// Returns a new [MmAddChannelMemberRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmAddChannelMemberRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmAddChannelMemberRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmAddChannelMemberRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmAddChannelMemberRequest(
        userId: mapValueOfType<String>(json, r'user_id')!,
        postRootId: mapValueOfType<String>(json, r'post_root_id'),
      );
    }
    return null;
  }

  static List<MmAddChannelMemberRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmAddChannelMemberRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmAddChannelMemberRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmAddChannelMemberRequest> mapFromJson(dynamic json) {
    final map = <String, MmAddChannelMemberRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmAddChannelMemberRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmAddChannelMemberRequest-objects as value to a dart map
  static Map<String, List<MmAddChannelMemberRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmAddChannelMemberRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmAddChannelMemberRequest.listFromJson(
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
    'user_id',
  };
}
