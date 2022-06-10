//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class SendVerificationEmailRequest {
  /// Returns a new [SendVerificationEmailRequest] instance.
  SendVerificationEmailRequest({
    required this.email,
  });

  /// Email of a user
  String email;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendVerificationEmailRequest &&
     other.email == email;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email.hashCode);

  @override
  String toString() => 'SendVerificationEmailRequest[email=$email]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'email'] = email;
    return _json;
  }

  /// Returns a new [SendVerificationEmailRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendVerificationEmailRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendVerificationEmailRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendVerificationEmailRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendVerificationEmailRequest(
        email: mapValueOfType<String>(json, r'email')!,
      );
    }
    return null;
  }

  static List<SendVerificationEmailRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendVerificationEmailRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendVerificationEmailRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendVerificationEmailRequest> mapFromJson(dynamic json) {
    final map = <String, SendVerificationEmailRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendVerificationEmailRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendVerificationEmailRequest-objects as value to a dart map
  static Map<String, List<SendVerificationEmailRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendVerificationEmailRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendVerificationEmailRequest.listFromJson(entry.value, growable: growable,);
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

