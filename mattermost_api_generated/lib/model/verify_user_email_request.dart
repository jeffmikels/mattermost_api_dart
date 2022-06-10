//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class VerifyUserEmailRequest {
  /// Returns a new [VerifyUserEmailRequest] instance.
  VerifyUserEmailRequest({
    required this.token,
  });

  /// The token given to validate the email
  String token;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VerifyUserEmailRequest &&
     other.token == token;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (token.hashCode);

  @override
  String toString() => 'VerifyUserEmailRequest[token=$token]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'token'] = token;
    return _json;
  }

  /// Returns a new [VerifyUserEmailRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VerifyUserEmailRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VerifyUserEmailRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VerifyUserEmailRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VerifyUserEmailRequest(
        token: mapValueOfType<String>(json, r'token')!,
      );
    }
    return null;
  }

  static List<VerifyUserEmailRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VerifyUserEmailRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VerifyUserEmailRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VerifyUserEmailRequest> mapFromJson(dynamic json) {
    final map = <String, VerifyUserEmailRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VerifyUserEmailRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VerifyUserEmailRequest-objects as value to a dart map
  static Map<String, List<VerifyUserEmailRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VerifyUserEmailRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VerifyUserEmailRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'token',
  };
}

