//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMPatchRoleRequest {
  /// Returns a new [MMPatchRoleRequest] instance.
  MMPatchRoleRequest({
    this.permissions = const [],
  });

  /// The permissions the role should grant.
  List<String> permissions;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MMPatchRoleRequest && other.permissions == permissions;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (permissions.hashCode);

  @override
  String toString() => 'MMPatchRoleRequest[permissions=$permissions]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'permissions'] = permissions;
    return _json;
  }

  /// Returns a new [MMPatchRoleRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMPatchRoleRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMPatchRoleRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMPatchRoleRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMPatchRoleRequest(
        permissions: json[r'permissions'] is List ? (json[r'permissions'] as List).cast<String>() : const [],
      );
    }
    return null;
  }

  static List<MMPatchRoleRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMPatchRoleRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMPatchRoleRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMPatchRoleRequest> mapFromJson(dynamic json) {
    final map = <String, MMPatchRoleRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMPatchRoleRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMPatchRoleRequest-objects as value to a dart map
  static Map<String, List<MMPatchRoleRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMPatchRoleRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMPatchRoleRequest.listFromJson(
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
