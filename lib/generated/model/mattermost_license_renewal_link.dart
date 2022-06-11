//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostLicenseRenewalLink {
  /// Returns a new [MattermostLicenseRenewalLink] instance.
  MattermostLicenseRenewalLink({
    this.renewalLink,
  });

  /// License renewal link
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? renewalLink;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MattermostLicenseRenewalLink &&
     other.renewalLink == renewalLink;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (renewalLink == null ? 0 : renewalLink!.hashCode);

  @override
  String toString() => 'MattermostLicenseRenewalLink[renewalLink=$renewalLink]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (renewalLink != null) {
      _json[r'renewal_link'] = renewalLink;
    }
    return _json;
  }

  /// Returns a new [MattermostLicenseRenewalLink] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostLicenseRenewalLink? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostLicenseRenewalLink[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostLicenseRenewalLink[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostLicenseRenewalLink(
        renewalLink: mapValueOfType<String>(json, r'renewal_link'),
      );
    }
    return null;
  }

  static List<MattermostLicenseRenewalLink>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MattermostLicenseRenewalLink>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostLicenseRenewalLink.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostLicenseRenewalLink> mapFromJson(dynamic json) {
    final map = <String, MattermostLicenseRenewalLink>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostLicenseRenewalLink.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostLicenseRenewalLink-objects as value to a dart map
  static Map<String, List<MattermostLicenseRenewalLink>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MattermostLicenseRenewalLink>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostLicenseRenewalLink.listFromJson(entry.value, growable: growable,);
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

