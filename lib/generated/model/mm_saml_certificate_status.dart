//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmSamlCertificateStatus {
  /// Returns a new [MmSamlCertificateStatus] instance.
  MmSamlCertificateStatus({
    this.idpCertificateFile,
    this.publicCertificateFile,
    this.privateKeyFile,
  });

  /// Status is good when `true`
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? idpCertificateFile;

  /// Status is good when `true`
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? publicCertificateFile;

  /// Status is good when `true`
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? privateKeyFile;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmSamlCertificateStatus &&
          other.idpCertificateFile == idpCertificateFile &&
          other.publicCertificateFile == publicCertificateFile &&
          other.privateKeyFile == privateKeyFile;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (idpCertificateFile == null ? 0 : idpCertificateFile!.hashCode) +
      (publicCertificateFile == null ? 0 : publicCertificateFile!.hashCode) +
      (privateKeyFile == null ? 0 : privateKeyFile!.hashCode);

  @override
  String toString() =>
      'MmSamlCertificateStatus[idpCertificateFile=$idpCertificateFile, publicCertificateFile=$publicCertificateFile, privateKeyFile=$privateKeyFile]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (idpCertificateFile != null) {
      _json[r'idp_certificate_file'] = idpCertificateFile;
    }
    if (publicCertificateFile != null) {
      _json[r'public_certificate_file'] = publicCertificateFile;
    }
    if (privateKeyFile != null) {
      _json[r'private_key_file'] = privateKeyFile;
    }
    return _json;
  }

  /// Returns a new [MmSamlCertificateStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmSamlCertificateStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmSamlCertificateStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmSamlCertificateStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmSamlCertificateStatus(
        idpCertificateFile: mapValueOfType<bool>(json, r'idp_certificate_file'),
        publicCertificateFile: mapValueOfType<bool>(json, r'public_certificate_file'),
        privateKeyFile: mapValueOfType<bool>(json, r'private_key_file'),
      );
    }
    return null;
  }

  static List<MmSamlCertificateStatus>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmSamlCertificateStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmSamlCertificateStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmSamlCertificateStatus> mapFromJson(dynamic json) {
    final map = <String, MmSamlCertificateStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSamlCertificateStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmSamlCertificateStatus-objects as value to a dart map
  static Map<String, List<MmSamlCertificateStatus>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmSamlCertificateStatus>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSamlCertificateStatus.listFromJson(
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
