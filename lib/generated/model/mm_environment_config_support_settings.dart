//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmEnvironmentConfigSupportSettings {
  /// Returns a new [MmEnvironmentConfigSupportSettings] instance.
  MmEnvironmentConfigSupportSettings({
    this.termsOfServiceLink,
    this.privacyPolicyLink,
    this.aboutLink,
    this.helpLink,
    this.reportAProblemLink,
    this.supportEmail,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? termsOfServiceLink;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? privacyPolicyLink;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? aboutLink;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? helpLink;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? reportAProblemLink;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? supportEmail;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmEnvironmentConfigSupportSettings &&
          other.termsOfServiceLink == termsOfServiceLink &&
          other.privacyPolicyLink == privacyPolicyLink &&
          other.aboutLink == aboutLink &&
          other.helpLink == helpLink &&
          other.reportAProblemLink == reportAProblemLink &&
          other.supportEmail == supportEmail;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (termsOfServiceLink == null ? 0 : termsOfServiceLink!.hashCode) +
      (privacyPolicyLink == null ? 0 : privacyPolicyLink!.hashCode) +
      (aboutLink == null ? 0 : aboutLink!.hashCode) +
      (helpLink == null ? 0 : helpLink!.hashCode) +
      (reportAProblemLink == null ? 0 : reportAProblemLink!.hashCode) +
      (supportEmail == null ? 0 : supportEmail!.hashCode);

  @override
  String toString() =>
      'MmEnvironmentConfigSupportSettings[termsOfServiceLink=$termsOfServiceLink, privacyPolicyLink=$privacyPolicyLink, aboutLink=$aboutLink, helpLink=$helpLink, reportAProblemLink=$reportAProblemLink, supportEmail=$supportEmail]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (termsOfServiceLink != null) {
      _json[r'TermsOfServiceLink'] = termsOfServiceLink;
    }
    if (privacyPolicyLink != null) {
      _json[r'PrivacyPolicyLink'] = privacyPolicyLink;
    }
    if (aboutLink != null) {
      _json[r'AboutLink'] = aboutLink;
    }
    if (helpLink != null) {
      _json[r'HelpLink'] = helpLink;
    }
    if (reportAProblemLink != null) {
      _json[r'ReportAProblemLink'] = reportAProblemLink;
    }
    if (supportEmail != null) {
      _json[r'SupportEmail'] = supportEmail;
    }
    return _json;
  }

  /// Returns a new [MmEnvironmentConfigSupportSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmEnvironmentConfigSupportSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(
              json.containsKey(key), 'Required key "MmEnvironmentConfigSupportSettings[$key]" is missing from JSON.');
          assert(
              json[key] != null, 'Required key "MmEnvironmentConfigSupportSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmEnvironmentConfigSupportSettings(
        termsOfServiceLink: mapValueOfType<bool>(json, r'TermsOfServiceLink'),
        privacyPolicyLink: mapValueOfType<bool>(json, r'PrivacyPolicyLink'),
        aboutLink: mapValueOfType<bool>(json, r'AboutLink'),
        helpLink: mapValueOfType<bool>(json, r'HelpLink'),
        reportAProblemLink: mapValueOfType<bool>(json, r'ReportAProblemLink'),
        supportEmail: mapValueOfType<bool>(json, r'SupportEmail'),
      );
    }
    return null;
  }

  static List<MmEnvironmentConfigSupportSettings>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmEnvironmentConfigSupportSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmEnvironmentConfigSupportSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmEnvironmentConfigSupportSettings> mapFromJson(dynamic json) {
    final map = <String, MmEnvironmentConfigSupportSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmEnvironmentConfigSupportSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmEnvironmentConfigSupportSettings-objects as value to a dart map
  static Map<String, List<MmEnvironmentConfigSupportSettings>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmEnvironmentConfigSupportSettings>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmEnvironmentConfigSupportSettings.listFromJson(
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
