//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmMoveChannelRequest {
  /// Returns a new [MmMoveChannelRequest] instance.
  MmMoveChannelRequest({
    required this.teamId,
    this.force,
  });

  String teamId;

  /// Remove members those are not member of target team before moving the channel.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? force;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MmMoveChannelRequest && other.teamId == teamId && other.force == force;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (teamId.hashCode) + (force == null ? 0 : force!.hashCode);

  @override
  String toString() => 'MmMoveChannelRequest[teamId=$teamId, force=$force]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'team_id'] = teamId;
    if (force != null) {
      _json[r'force'] = force;
    }
    return _json;
  }

  /// Returns a new [MmMoveChannelRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmMoveChannelRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmMoveChannelRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmMoveChannelRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmMoveChannelRequest(
        teamId: mapValueOfType<String>(json, r'team_id')!,
        force: mapValueOfType<bool>(json, r'force'),
      );
    }
    return null;
  }

  static List<MmMoveChannelRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmMoveChannelRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmMoveChannelRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmMoveChannelRequest> mapFromJson(dynamic json) {
    final map = <String, MmMoveChannelRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmMoveChannelRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmMoveChannelRequest-objects as value to a dart map
  static Map<String, List<MmMoveChannelRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmMoveChannelRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmMoveChannelRequest.listFromJson(
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
  };
}
