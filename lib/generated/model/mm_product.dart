//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMProduct {
  /// Returns a new [MMProduct] instance.
  MMProduct({
    this.id,
    this.name,
    this.description,
    this.pricePerSeat,
    this.addOns = const [],
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
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pricePerSeat;

  List<MMAddOn> addOns;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMProduct &&
          other.id == id &&
          other.name == name &&
          other.description == description &&
          other.pricePerSeat == pricePerSeat &&
          other.addOns == addOns;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (pricePerSeat == null ? 0 : pricePerSeat!.hashCode) +
      (addOns.hashCode);

  @override
  String toString() =>
      'MMProduct[id=$id, name=$name, description=$description, pricePerSeat=$pricePerSeat, addOns=$addOns]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (name != null) {
      _json[r'name'] = name;
    }
    if (description != null) {
      _json[r'description'] = description;
    }
    if (pricePerSeat != null) {
      _json[r'price_per_seat'] = pricePerSeat;
    }
    _json[r'add_ons'] = addOns;
    return _json;
  }

  /// Returns a new [MMProduct] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMProduct? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMProduct[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMProduct[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMProduct(
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        pricePerSeat: mapValueOfType<String>(json, r'price_per_seat'),
        addOns: MMAddOn.listFromJson(json[r'add_ons']) ?? const [],
      );
    }
    return null;
  }

  static List<MMProduct>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMProduct>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMProduct.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMProduct> mapFromJson(dynamic json) {
    final map = <String, MMProduct>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMProduct.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMProduct-objects as value to a dart map
  static Map<String, List<MMProduct>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMProduct>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMProduct.listFromJson(
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