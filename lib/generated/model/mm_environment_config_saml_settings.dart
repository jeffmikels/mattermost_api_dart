//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmEnvironmentConfigSamlSettings {
  /// Returns a new [MmEnvironmentConfigSamlSettings] instance.
  MmEnvironmentConfigSamlSettings({
    this.enable,
    this.verify,
    this.encrypt,
    this.idpUrl,
    this.idpDescriptorUrl,
    this.assertionConsumerServiceURL,
    this.idpCertificateFile,
    this.publicCertificateFile,
    this.privateKeyFile,
    this.firstNameAttribute,
    this.lastNameAttribute,
    this.emailAttribute,
    this.usernameAttribute,
    this.nicknameAttribute,
    this.localeAttribute,
    this.positionAttribute,
    this.loginButtonText,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? verify;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? encrypt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? idpUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? idpDescriptorUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? assertionConsumerServiceURL;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? idpCertificateFile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? publicCertificateFile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? privateKeyFile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? firstNameAttribute;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? lastNameAttribute;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? emailAttribute;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? usernameAttribute;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? nicknameAttribute;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? localeAttribute;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? positionAttribute;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? loginButtonText;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmEnvironmentConfigSamlSettings &&
          other.enable == enable &&
          other.verify == verify &&
          other.encrypt == encrypt &&
          other.idpUrl == idpUrl &&
          other.idpDescriptorUrl == idpDescriptorUrl &&
          other.assertionConsumerServiceURL == assertionConsumerServiceURL &&
          other.idpCertificateFile == idpCertificateFile &&
          other.publicCertificateFile == publicCertificateFile &&
          other.privateKeyFile == privateKeyFile &&
          other.firstNameAttribute == firstNameAttribute &&
          other.lastNameAttribute == lastNameAttribute &&
          other.emailAttribute == emailAttribute &&
          other.usernameAttribute == usernameAttribute &&
          other.nicknameAttribute == nicknameAttribute &&
          other.localeAttribute == localeAttribute &&
          other.positionAttribute == positionAttribute &&
          other.loginButtonText == loginButtonText;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (enable == null ? 0 : enable!.hashCode) +
      (verify == null ? 0 : verify!.hashCode) +
      (encrypt == null ? 0 : encrypt!.hashCode) +
      (idpUrl == null ? 0 : idpUrl!.hashCode) +
      (idpDescriptorUrl == null ? 0 : idpDescriptorUrl!.hashCode) +
      (assertionConsumerServiceURL == null ? 0 : assertionConsumerServiceURL!.hashCode) +
      (idpCertificateFile == null ? 0 : idpCertificateFile!.hashCode) +
      (publicCertificateFile == null ? 0 : publicCertificateFile!.hashCode) +
      (privateKeyFile == null ? 0 : privateKeyFile!.hashCode) +
      (firstNameAttribute == null ? 0 : firstNameAttribute!.hashCode) +
      (lastNameAttribute == null ? 0 : lastNameAttribute!.hashCode) +
      (emailAttribute == null ? 0 : emailAttribute!.hashCode) +
      (usernameAttribute == null ? 0 : usernameAttribute!.hashCode) +
      (nicknameAttribute == null ? 0 : nicknameAttribute!.hashCode) +
      (localeAttribute == null ? 0 : localeAttribute!.hashCode) +
      (positionAttribute == null ? 0 : positionAttribute!.hashCode) +
      (loginButtonText == null ? 0 : loginButtonText!.hashCode);

  @override
  String toString() =>
      'MmEnvironmentConfigSamlSettings[enable=$enable, verify=$verify, encrypt=$encrypt, idpUrl=$idpUrl, idpDescriptorUrl=$idpDescriptorUrl, assertionConsumerServiceURL=$assertionConsumerServiceURL, idpCertificateFile=$idpCertificateFile, publicCertificateFile=$publicCertificateFile, privateKeyFile=$privateKeyFile, firstNameAttribute=$firstNameAttribute, lastNameAttribute=$lastNameAttribute, emailAttribute=$emailAttribute, usernameAttribute=$usernameAttribute, nicknameAttribute=$nicknameAttribute, localeAttribute=$localeAttribute, positionAttribute=$positionAttribute, loginButtonText=$loginButtonText]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (enable != null) {
      _json[r'Enable'] = enable;
    }
    if (verify != null) {
      _json[r'Verify'] = verify;
    }
    if (encrypt != null) {
      _json[r'Encrypt'] = encrypt;
    }
    if (idpUrl != null) {
      _json[r'IdpUrl'] = idpUrl;
    }
    if (idpDescriptorUrl != null) {
      _json[r'IdpDescriptorUrl'] = idpDescriptorUrl;
    }
    if (assertionConsumerServiceURL != null) {
      _json[r'AssertionConsumerServiceURL'] = assertionConsumerServiceURL;
    }
    if (idpCertificateFile != null) {
      _json[r'IdpCertificateFile'] = idpCertificateFile;
    }
    if (publicCertificateFile != null) {
      _json[r'PublicCertificateFile'] = publicCertificateFile;
    }
    if (privateKeyFile != null) {
      _json[r'PrivateKeyFile'] = privateKeyFile;
    }
    if (firstNameAttribute != null) {
      _json[r'FirstNameAttribute'] = firstNameAttribute;
    }
    if (lastNameAttribute != null) {
      _json[r'LastNameAttribute'] = lastNameAttribute;
    }
    if (emailAttribute != null) {
      _json[r'EmailAttribute'] = emailAttribute;
    }
    if (usernameAttribute != null) {
      _json[r'UsernameAttribute'] = usernameAttribute;
    }
    if (nicknameAttribute != null) {
      _json[r'NicknameAttribute'] = nicknameAttribute;
    }
    if (localeAttribute != null) {
      _json[r'LocaleAttribute'] = localeAttribute;
    }
    if (positionAttribute != null) {
      _json[r'PositionAttribute'] = positionAttribute;
    }
    if (loginButtonText != null) {
      _json[r'LoginButtonText'] = loginButtonText;
    }
    return _json;
  }

  /// Returns a new [MmEnvironmentConfigSamlSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmEnvironmentConfigSamlSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmEnvironmentConfigSamlSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmEnvironmentConfigSamlSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmEnvironmentConfigSamlSettings(
        enable: mapValueOfType<bool>(json, r'Enable'),
        verify: mapValueOfType<bool>(json, r'Verify'),
        encrypt: mapValueOfType<bool>(json, r'Encrypt'),
        idpUrl: mapValueOfType<bool>(json, r'IdpUrl'),
        idpDescriptorUrl: mapValueOfType<bool>(json, r'IdpDescriptorUrl'),
        assertionConsumerServiceURL: mapValueOfType<bool>(json, r'AssertionConsumerServiceURL'),
        idpCertificateFile: mapValueOfType<bool>(json, r'IdpCertificateFile'),
        publicCertificateFile: mapValueOfType<bool>(json, r'PublicCertificateFile'),
        privateKeyFile: mapValueOfType<bool>(json, r'PrivateKeyFile'),
        firstNameAttribute: mapValueOfType<bool>(json, r'FirstNameAttribute'),
        lastNameAttribute: mapValueOfType<bool>(json, r'LastNameAttribute'),
        emailAttribute: mapValueOfType<bool>(json, r'EmailAttribute'),
        usernameAttribute: mapValueOfType<bool>(json, r'UsernameAttribute'),
        nicknameAttribute: mapValueOfType<bool>(json, r'NicknameAttribute'),
        localeAttribute: mapValueOfType<bool>(json, r'LocaleAttribute'),
        positionAttribute: mapValueOfType<bool>(json, r'PositionAttribute'),
        loginButtonText: mapValueOfType<bool>(json, r'LoginButtonText'),
      );
    }
    return null;
  }

  static List<MmEnvironmentConfigSamlSettings>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmEnvironmentConfigSamlSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmEnvironmentConfigSamlSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmEnvironmentConfigSamlSettings> mapFromJson(dynamic json) {
    final map = <String, MmEnvironmentConfigSamlSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmEnvironmentConfigSamlSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmEnvironmentConfigSamlSettings-objects as value to a dart map
  static Map<String, List<MmEnvironmentConfigSamlSettings>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmEnvironmentConfigSamlSettings>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmEnvironmentConfigSamlSettings.listFromJson(
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
