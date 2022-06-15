//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmResetPasswordRequest {
  /// Returns a new [MmResetPasswordRequest] instance.
  MmResetPasswordRequest({
    required this.code,
    required this.newPassword,
  });

  /// The recovery code
  String code;

  /// The new password for the user
  String newPassword;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmResetPasswordRequest && other.code == code && other.newPassword == newPassword;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (code.hashCode) + (newPassword.hashCode);

  @override
  String toString() => 'MmResetPasswordRequest[code=$code, newPassword=$newPassword]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'code'] = code;
    _json[r'new_password'] = newPassword;
    return _json;
  }

  /// Returns a new [MmResetPasswordRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmResetPasswordRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmResetPasswordRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmResetPasswordRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmResetPasswordRequest(
        code: mapValueOfType<String>(json, r'code')!,
        newPassword: mapValueOfType<String>(json, r'new_password')!,
      );
    }
    return null;
  }

  static List<MmResetPasswordRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmResetPasswordRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmResetPasswordRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmResetPasswordRequest> mapFromJson(dynamic json) {
    final map = <String, MmResetPasswordRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmResetPasswordRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmResetPasswordRequest-objects as value to a dart map
  static Map<String, List<MmResetPasswordRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmResetPasswordRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmResetPasswordRequest.listFromJson(
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
    'code',
    'new_password',
  };
}
