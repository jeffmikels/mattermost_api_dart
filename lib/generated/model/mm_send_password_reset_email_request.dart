//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmSendPasswordResetEmailRequest {
  /// Returns a new [MmSendPasswordResetEmailRequest] instance.
  MmSendPasswordResetEmailRequest({
    required this.email,
  });

  /// The email of the user
  String email;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MmSendPasswordResetEmailRequest && other.email == email;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (email.hashCode);

  @override
  String toString() => 'MmSendPasswordResetEmailRequest[email=$email]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'email'] = email;
    return _json;
  }

  /// Returns a new [MmSendPasswordResetEmailRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmSendPasswordResetEmailRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmSendPasswordResetEmailRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmSendPasswordResetEmailRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmSendPasswordResetEmailRequest(
        email: mapValueOfType<String>(json, r'email')!,
      );
    }
    return null;
  }

  static List<MmSendPasswordResetEmailRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmSendPasswordResetEmailRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmSendPasswordResetEmailRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmSendPasswordResetEmailRequest> mapFromJson(dynamic json) {
    final map = <String, MmSendPasswordResetEmailRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSendPasswordResetEmailRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmSendPasswordResetEmailRequest-objects as value to a dart map
  static Map<String, List<MmSendPasswordResetEmailRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmSendPasswordResetEmailRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSendPasswordResetEmailRequest.listFromJson(
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
    'email',
  };
}
