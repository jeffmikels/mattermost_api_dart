//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class RegisterTermsOfServiceActionRequest {
  /// Returns a new [RegisterTermsOfServiceActionRequest] instance.
  RegisterTermsOfServiceActionRequest({
    required this.serviceTermsId,
    required this.accepted,
  });

  /// terms of service ID on which the user is acting on
  String serviceTermsId;

  /// true or false, indicates whether the user accepted or rejected the terms of service.
  String accepted;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RegisterTermsOfServiceActionRequest &&
     other.serviceTermsId == serviceTermsId &&
     other.accepted == accepted;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (serviceTermsId.hashCode) +
    (accepted.hashCode);

  @override
  String toString() => 'RegisterTermsOfServiceActionRequest[serviceTermsId=$serviceTermsId, accepted=$accepted]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'serviceTermsId'] = serviceTermsId;
      _json[r'accepted'] = accepted;
    return _json;
  }

  /// Returns a new [RegisterTermsOfServiceActionRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegisterTermsOfServiceActionRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RegisterTermsOfServiceActionRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RegisterTermsOfServiceActionRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RegisterTermsOfServiceActionRequest(
        serviceTermsId: mapValueOfType<String>(json, r'serviceTermsId')!,
        accepted: mapValueOfType<String>(json, r'accepted')!,
      );
    }
    return null;
  }

  static List<RegisterTermsOfServiceActionRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RegisterTermsOfServiceActionRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegisterTermsOfServiceActionRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RegisterTermsOfServiceActionRequest> mapFromJson(dynamic json) {
    final map = <String, RegisterTermsOfServiceActionRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegisterTermsOfServiceActionRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RegisterTermsOfServiceActionRequest-objects as value to a dart map
  static Map<String, List<RegisterTermsOfServiceActionRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RegisterTermsOfServiceActionRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegisterTermsOfServiceActionRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'serviceTermsId',
    'accepted',
  };
}

