//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmAddGroupMembersRequest {
  /// Returns a new [MmAddGroupMembersRequest] instance.
  MmAddGroupMembersRequest({
    this.userIds = const [],
  });

  List<int> userIds;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MmAddGroupMembersRequest && other.userIds == userIds;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (userIds.hashCode);

  @override
  String toString() => 'MmAddGroupMembersRequest[userIds=$userIds]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'user_ids'] = userIds;
    return _json;
  }

  /// Returns a new [MmAddGroupMembersRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmAddGroupMembersRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmAddGroupMembersRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmAddGroupMembersRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmAddGroupMembersRequest(
        userIds: json[r'user_ids'] is List ? (json[r'user_ids'] as List).cast<int>() : const [],
      );
    }
    return null;
  }

  static List<MmAddGroupMembersRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmAddGroupMembersRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmAddGroupMembersRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmAddGroupMembersRequest> mapFromJson(dynamic json) {
    final map = <String, MmAddGroupMembersRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmAddGroupMembersRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmAddGroupMembersRequest-objects as value to a dart map
  static Map<String, List<MmAddGroupMembersRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmAddGroupMembersRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmAddGroupMembersRequest.listFromJson(
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
