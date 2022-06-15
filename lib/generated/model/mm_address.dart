//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmAddress {
  /// Returns a new [MmAddress] instance.
  MmAddress({
    this.city,
    this.country,
    this.line1,
    this.line2,
    this.postalCode,
    this.state,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? city;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? country;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? line1;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? line2;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? postalCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmAddress &&
          other.city == city &&
          other.country == country &&
          other.line1 == line1 &&
          other.line2 == line2 &&
          other.postalCode == postalCode &&
          other.state == state;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (city == null ? 0 : city!.hashCode) +
      (country == null ? 0 : country!.hashCode) +
      (line1 == null ? 0 : line1!.hashCode) +
      (line2 == null ? 0 : line2!.hashCode) +
      (postalCode == null ? 0 : postalCode!.hashCode) +
      (state == null ? 0 : state!.hashCode);

  @override
  String toString() =>
      'MmAddress[city=$city, country=$country, line1=$line1, line2=$line2, postalCode=$postalCode, state=$state]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (city != null) {
      _json[r'city'] = city;
    }
    if (country != null) {
      _json[r'country'] = country;
    }
    if (line1 != null) {
      _json[r'line1'] = line1;
    }
    if (line2 != null) {
      _json[r'line2'] = line2;
    }
    if (postalCode != null) {
      _json[r'postal_code'] = postalCode;
    }
    if (state != null) {
      _json[r'state'] = state;
    }
    return _json;
  }

  /// Returns a new [MmAddress] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmAddress? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmAddress[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmAddress[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmAddress(
        city: mapValueOfType<String>(json, r'city'),
        country: mapValueOfType<String>(json, r'country'),
        line1: mapValueOfType<String>(json, r'line1'),
        line2: mapValueOfType<String>(json, r'line2'),
        postalCode: mapValueOfType<String>(json, r'postal_code'),
        state: mapValueOfType<String>(json, r'state'),
      );
    }
    return null;
  }

  static List<MmAddress>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmAddress>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmAddress.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmAddress> mapFromJson(dynamic json) {
    final map = <String, MmAddress>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmAddress.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmAddress-objects as value to a dart map
  static Map<String, List<MmAddress>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmAddress>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmAddress.listFromJson(
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
