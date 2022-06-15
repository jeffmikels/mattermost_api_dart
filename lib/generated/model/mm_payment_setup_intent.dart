//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmPaymentSetupIntent {
  /// Returns a new [MmPaymentSetupIntent] instance.
  MmPaymentSetupIntent({
    this.id,
    this.clientSecret,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientSecret;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MmPaymentSetupIntent && other.id == id && other.clientSecret == clientSecret;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) + (clientSecret == null ? 0 : clientSecret!.hashCode);

  @override
  String toString() => 'MmPaymentSetupIntent[id=$id, clientSecret=$clientSecret]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (clientSecret != null) {
      _json[r'client_secret'] = clientSecret;
    }
    return _json;
  }

  /// Returns a new [MmPaymentSetupIntent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmPaymentSetupIntent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmPaymentSetupIntent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmPaymentSetupIntent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmPaymentSetupIntent(
        id: mapValueOfType<String>(json, r'id'),
        clientSecret: mapValueOfType<String>(json, r'client_secret'),
      );
    }
    return null;
  }

  static List<MmPaymentSetupIntent>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmPaymentSetupIntent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmPaymentSetupIntent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmPaymentSetupIntent> mapFromJson(dynamic json) {
    final map = <String, MmPaymentSetupIntent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmPaymentSetupIntent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmPaymentSetupIntent-objects as value to a dart map
  static Map<String, List<MmPaymentSetupIntent>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmPaymentSetupIntent>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmPaymentSetupIntent.listFromJson(
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
