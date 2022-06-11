//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostGenerateMfaSecret200Response {
  /// Returns a new [MattermostGenerateMfaSecret200Response] instance.
  MattermostGenerateMfaSecret200Response({
    this.secret,
    this.qrCode,
  });

  /// The MFA secret as a string
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? secret;

  /// A base64 encoded QR code image
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? qrCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MattermostGenerateMfaSecret200Response &&
     other.secret == secret &&
     other.qrCode == qrCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (secret == null ? 0 : secret!.hashCode) +
    (qrCode == null ? 0 : qrCode!.hashCode);

  @override
  String toString() => 'MattermostGenerateMfaSecret200Response[secret=$secret, qrCode=$qrCode]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (secret != null) {
      _json[r'secret'] = secret;
    }
    if (qrCode != null) {
      _json[r'qr_code'] = qrCode;
    }
    return _json;
  }

  /// Returns a new [MattermostGenerateMfaSecret200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostGenerateMfaSecret200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostGenerateMfaSecret200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostGenerateMfaSecret200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostGenerateMfaSecret200Response(
        secret: mapValueOfType<String>(json, r'secret'),
        qrCode: mapValueOfType<String>(json, r'qr_code'),
      );
    }
    return null;
  }

  static List<MattermostGenerateMfaSecret200Response>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MattermostGenerateMfaSecret200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostGenerateMfaSecret200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostGenerateMfaSecret200Response> mapFromJson(dynamic json) {
    final map = <String, MattermostGenerateMfaSecret200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostGenerateMfaSecret200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostGenerateMfaSecret200Response-objects as value to a dart map
  static Map<String, List<MattermostGenerateMfaSecret200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MattermostGenerateMfaSecret200Response>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostGenerateMfaSecret200Response.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

