//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostPatchGroupSyncableForTeamRequest {
  /// Returns a new [MattermostPatchGroupSyncableForTeamRequest] instance.
  MattermostPatchGroupSyncableForTeamRequest({
    this.autoAdd,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? autoAdd;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MattermostPatchGroupSyncableForTeamRequest && other.autoAdd == autoAdd;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (autoAdd == null ? 0 : autoAdd!.hashCode);

  @override
  String toString() => 'MattermostPatchGroupSyncableForTeamRequest[autoAdd=$autoAdd]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (autoAdd != null) {
      _json[r'auto_add'] = autoAdd;
    }
    return _json;
  }

  /// Returns a new [MattermostPatchGroupSyncableForTeamRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostPatchGroupSyncableForTeamRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MattermostPatchGroupSyncableForTeamRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MattermostPatchGroupSyncableForTeamRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostPatchGroupSyncableForTeamRequest(
        autoAdd: mapValueOfType<bool>(json, r'auto_add'),
      );
    }
    return null;
  }

  static List<MattermostPatchGroupSyncableForTeamRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MattermostPatchGroupSyncableForTeamRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostPatchGroupSyncableForTeamRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostPatchGroupSyncableForTeamRequest> mapFromJson(dynamic json) {
    final map = <String, MattermostPatchGroupSyncableForTeamRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostPatchGroupSyncableForTeamRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostPatchGroupSyncableForTeamRequest-objects as value to a dart map
  static Map<String, List<MattermostPatchGroupSyncableForTeamRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MattermostPatchGroupSyncableForTeamRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostPatchGroupSyncableForTeamRequest.listFromJson(
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
