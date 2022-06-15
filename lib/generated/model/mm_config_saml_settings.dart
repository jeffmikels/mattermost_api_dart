//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmConfigSamlSettings {
  /// Returns a new [MmConfigSamlSettings] instance.
  MmConfigSamlSettings({
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
  String? idpUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? idpDescriptorUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? assertionConsumerServiceURL;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? idpCertificateFile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publicCertificateFile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? privateKeyFile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstNameAttribute;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastNameAttribute;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? emailAttribute;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? usernameAttribute;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nicknameAttribute;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? localeAttribute;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? positionAttribute;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? loginButtonText;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmConfigSamlSettings &&
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
      'MmConfigSamlSettings[enable=$enable, verify=$verify, encrypt=$encrypt, idpUrl=$idpUrl, idpDescriptorUrl=$idpDescriptorUrl, assertionConsumerServiceURL=$assertionConsumerServiceURL, idpCertificateFile=$idpCertificateFile, publicCertificateFile=$publicCertificateFile, privateKeyFile=$privateKeyFile, firstNameAttribute=$firstNameAttribute, lastNameAttribute=$lastNameAttribute, emailAttribute=$emailAttribute, usernameAttribute=$usernameAttribute, nicknameAttribute=$nicknameAttribute, localeAttribute=$localeAttribute, positionAttribute=$positionAttribute, loginButtonText=$loginButtonText]';

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

  /// Returns a new [MmConfigSamlSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmConfigSamlSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmConfigSamlSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmConfigSamlSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmConfigSamlSettings(
        enable: mapValueOfType<bool>(json, r'Enable'),
        verify: mapValueOfType<bool>(json, r'Verify'),
        encrypt: mapValueOfType<bool>(json, r'Encrypt'),
        idpUrl: mapValueOfType<String>(json, r'IdpUrl'),
        idpDescriptorUrl: mapValueOfType<String>(json, r'IdpDescriptorUrl'),
        assertionConsumerServiceURL: mapValueOfType<String>(json, r'AssertionConsumerServiceURL'),
        idpCertificateFile: mapValueOfType<String>(json, r'IdpCertificateFile'),
        publicCertificateFile: mapValueOfType<String>(json, r'PublicCertificateFile'),
        privateKeyFile: mapValueOfType<String>(json, r'PrivateKeyFile'),
        firstNameAttribute: mapValueOfType<String>(json, r'FirstNameAttribute'),
        lastNameAttribute: mapValueOfType<String>(json, r'LastNameAttribute'),
        emailAttribute: mapValueOfType<String>(json, r'EmailAttribute'),
        usernameAttribute: mapValueOfType<String>(json, r'UsernameAttribute'),
        nicknameAttribute: mapValueOfType<String>(json, r'NicknameAttribute'),
        localeAttribute: mapValueOfType<String>(json, r'LocaleAttribute'),
        positionAttribute: mapValueOfType<String>(json, r'PositionAttribute'),
        loginButtonText: mapValueOfType<String>(json, r'LoginButtonText'),
      );
    }
    return null;
  }

  static List<MmConfigSamlSettings>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmConfigSamlSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmConfigSamlSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmConfigSamlSettings> mapFromJson(dynamic json) {
    final map = <String, MmConfigSamlSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmConfigSamlSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmConfigSamlSettings-objects as value to a dart map
  static Map<String, List<MmConfigSamlSettings>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmConfigSamlSettings>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmConfigSamlSettings.listFromJson(
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
