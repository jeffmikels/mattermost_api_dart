//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmUpdateUserPasswordRequest {
  /// Returns a new [MmUpdateUserPasswordRequest] instance.
  MmUpdateUserPasswordRequest({
    this.currentPassword,
    required this.newPassword,
  });

  /// The current password for the user
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currentPassword;

  /// The new password for the user
  String newPassword;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmUpdateUserPasswordRequest &&
          other.currentPassword == currentPassword &&
          other.newPassword == newPassword;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (currentPassword == null ? 0 : currentPassword!.hashCode) + (newPassword.hashCode);

  @override
  String toString() => 'MmUpdateUserPasswordRequest[currentPassword=$currentPassword, newPassword=$newPassword]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (currentPassword != null) {
      _json[r'current_password'] = currentPassword;
    }
    _json[r'new_password'] = newPassword;
    return _json;
  }

  /// Returns a new [MmUpdateUserPasswordRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmUpdateUserPasswordRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmUpdateUserPasswordRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmUpdateUserPasswordRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmUpdateUserPasswordRequest(
        currentPassword: mapValueOfType<String>(json, r'current_password'),
        newPassword: mapValueOfType<String>(json, r'new_password')!,
      );
    }
    return null;
  }

  static List<MmUpdateUserPasswordRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmUpdateUserPasswordRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmUpdateUserPasswordRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmUpdateUserPasswordRequest> mapFromJson(dynamic json) {
    final map = <String, MmUpdateUserPasswordRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUpdateUserPasswordRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmUpdateUserPasswordRequest-objects as value to a dart map
  static Map<String, List<MmUpdateUserPasswordRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmUpdateUserPasswordRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUpdateUserPasswordRequest.listFromJson(
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
    'new_password',
  };
}
