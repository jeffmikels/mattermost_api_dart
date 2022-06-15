//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmRegisterTermsOfServiceActionRequest {
  /// Returns a new [MmRegisterTermsOfServiceActionRequest] instance.
  MmRegisterTermsOfServiceActionRequest({
    required this.serviceTermsId,
    required this.accepted,
  });

  /// terms of service ID on which the user is acting on
  String serviceTermsId;

  /// true or false, indicates whether the user accepted or rejected the terms of service.
  String accepted;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmRegisterTermsOfServiceActionRequest &&
          other.serviceTermsId == serviceTermsId &&
          other.accepted == accepted;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (serviceTermsId.hashCode) + (accepted.hashCode);

  @override
  String toString() => 'MmRegisterTermsOfServiceActionRequest[serviceTermsId=$serviceTermsId, accepted=$accepted]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'serviceTermsId'] = serviceTermsId;
    _json[r'accepted'] = accepted;
    return _json;
  }

  /// Returns a new [MmRegisterTermsOfServiceActionRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmRegisterTermsOfServiceActionRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MmRegisterTermsOfServiceActionRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MmRegisterTermsOfServiceActionRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmRegisterTermsOfServiceActionRequest(
        serviceTermsId: mapValueOfType<String>(json, r'serviceTermsId')!,
        accepted: mapValueOfType<String>(json, r'accepted')!,
      );
    }
    return null;
  }

  static List<MmRegisterTermsOfServiceActionRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmRegisterTermsOfServiceActionRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmRegisterTermsOfServiceActionRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmRegisterTermsOfServiceActionRequest> mapFromJson(dynamic json) {
    final map = <String, MmRegisterTermsOfServiceActionRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmRegisterTermsOfServiceActionRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmRegisterTermsOfServiceActionRequest-objects as value to a dart map
  static Map<String, List<MmRegisterTermsOfServiceActionRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmRegisterTermsOfServiceActionRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmRegisterTermsOfServiceActionRequest.listFromJson(
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
    'serviceTermsId',
    'accepted',
  };
}
