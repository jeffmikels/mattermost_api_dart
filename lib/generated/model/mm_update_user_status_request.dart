//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmUpdateUserStatusRequest {
  /// Returns a new [MmUpdateUserStatusRequest] instance.
  MmUpdateUserStatusRequest({
    required this.userId,
    required this.status,
    this.dndEndTime,
  });

  /// User ID
  String userId;

  /// User status, can be `online`, `away`, `offline` and `dnd`
  String status;

  /// Time in epoch seconds at which a dnd status would be unset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dndEndTime;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmUpdateUserStatusRequest &&
          other.userId == userId &&
          other.status == status &&
          other.dndEndTime == dndEndTime;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (userId.hashCode) + (status.hashCode) + (dndEndTime == null ? 0 : dndEndTime!.hashCode);

  @override
  String toString() => 'MmUpdateUserStatusRequest[userId=$userId, status=$status, dndEndTime=$dndEndTime]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'user_id'] = userId;
    _json[r'status'] = status;
    if (dndEndTime != null) {
      _json[r'dnd_end_time'] = dndEndTime;
    }
    return _json;
  }

  /// Returns a new [MmUpdateUserStatusRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmUpdateUserStatusRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmUpdateUserStatusRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmUpdateUserStatusRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmUpdateUserStatusRequest(
        userId: mapValueOfType<String>(json, r'user_id')!,
        status: mapValueOfType<String>(json, r'status')!,
        dndEndTime: mapValueOfType<int>(json, r'dnd_end_time'),
      );
    }
    return null;
  }

  static List<MmUpdateUserStatusRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmUpdateUserStatusRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmUpdateUserStatusRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmUpdateUserStatusRequest> mapFromJson(dynamic json) {
    final map = <String, MmUpdateUserStatusRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUpdateUserStatusRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmUpdateUserStatusRequest-objects as value to a dart map
  static Map<String, List<MmUpdateUserStatusRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmUpdateUserStatusRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUpdateUserStatusRequest.listFromJson(
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
    'status',
  };
}
