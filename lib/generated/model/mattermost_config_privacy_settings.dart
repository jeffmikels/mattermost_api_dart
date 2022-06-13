//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostConfigPrivacySettings {
  /// Returns a new [MattermostConfigPrivacySettings] instance.
  MattermostConfigPrivacySettings({
    this.showEmailAddress,
    this.showFullName,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? showEmailAddress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? showFullName;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MattermostConfigPrivacySettings &&
          other.showEmailAddress == showEmailAddress &&
          other.showFullName == showFullName;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (showEmailAddress == null ? 0 : showEmailAddress!.hashCode) + (showFullName == null ? 0 : showFullName!.hashCode);

  @override
  String toString() =>
      'MattermostConfigPrivacySettings[showEmailAddress=$showEmailAddress, showFullName=$showFullName]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (showEmailAddress != null) {
      _json[r'ShowEmailAddress'] = showEmailAddress;
    }
    if (showFullName != null) {
      _json[r'ShowFullName'] = showFullName;
    }
    return _json;
  }

  /// Returns a new [MattermostConfigPrivacySettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostConfigPrivacySettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostConfigPrivacySettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostConfigPrivacySettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostConfigPrivacySettings(
        showEmailAddress: mapValueOfType<bool>(json, r'ShowEmailAddress'),
        showFullName: mapValueOfType<bool>(json, r'ShowFullName'),
      );
    }
    return null;
  }

  static List<MattermostConfigPrivacySettings>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MattermostConfigPrivacySettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostConfigPrivacySettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostConfigPrivacySettings> mapFromJson(dynamic json) {
    final map = <String, MattermostConfigPrivacySettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostConfigPrivacySettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostConfigPrivacySettings-objects as value to a dart map
  static Map<String, List<MattermostConfigPrivacySettings>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MattermostConfigPrivacySettings>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostConfigPrivacySettings.listFromJson(
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
