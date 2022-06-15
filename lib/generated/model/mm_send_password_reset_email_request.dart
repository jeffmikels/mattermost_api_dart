//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMSendPasswordResetEmailRequest {
  /// Returns a new [MMSendPasswordResetEmailRequest] instance.
  MMSendPasswordResetEmailRequest({
    required this.email,
  });

  /// The email of the user
  String email;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MMSendPasswordResetEmailRequest && other.email == email;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (email.hashCode);

  @override
  String toString() => 'MMSendPasswordResetEmailRequest[email=$email]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'email'] = email;
    return _json;
  }

  /// Returns a new [MMSendPasswordResetEmailRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMSendPasswordResetEmailRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMSendPasswordResetEmailRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMSendPasswordResetEmailRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMSendPasswordResetEmailRequest(
        email: mapValueOfType<String>(json, r'email')!,
      );
    }
    return null;
  }

  static List<MMSendPasswordResetEmailRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMSendPasswordResetEmailRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMSendPasswordResetEmailRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMSendPasswordResetEmailRequest> mapFromJson(dynamic json) {
    final map = <String, MMSendPasswordResetEmailRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMSendPasswordResetEmailRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMSendPasswordResetEmailRequest-objects as value to a dart map
  static Map<String, List<MMSendPasswordResetEmailRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMSendPasswordResetEmailRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMSendPasswordResetEmailRequest.listFromJson(
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
