//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmCreatePostEphemeralRequest {
  /// Returns a new [MmCreatePostEphemeralRequest] instance.
  MmCreatePostEphemeralRequest({
    required this.userId,
    required this.post,
  });

  /// The target user id for the ephemeral post
  String userId;

  MmCreatePostEphemeralRequestPost post;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MmCreatePostEphemeralRequest && other.userId == userId && other.post == post;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (userId.hashCode) + (post.hashCode);

  @override
  String toString() => 'MmCreatePostEphemeralRequest[userId=$userId, post=$post]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'user_id'] = userId;
    _json[r'post'] = post;
    return _json;
  }

  /// Returns a new [MmCreatePostEphemeralRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmCreatePostEphemeralRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmCreatePostEphemeralRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmCreatePostEphemeralRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmCreatePostEphemeralRequest(
        userId: mapValueOfType<String>(json, r'user_id')!,
        post: MmCreatePostEphemeralRequestPost.fromJson(json[r'post'])!,
      );
    }
    return null;
  }

  static List<MmCreatePostEphemeralRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmCreatePostEphemeralRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmCreatePostEphemeralRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmCreatePostEphemeralRequest> mapFromJson(dynamic json) {
    final map = <String, MmCreatePostEphemeralRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmCreatePostEphemeralRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmCreatePostEphemeralRequest-objects as value to a dart map
  static Map<String, List<MmCreatePostEphemeralRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmCreatePostEphemeralRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmCreatePostEphemeralRequest.listFromJson(
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
    'post',
  };
}
