//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmSubscription {
  /// Returns a new [MmSubscription] instance.
  MmSubscription({
    this.id,
    this.customerId,
    this.productId,
    this.addOns = const [],
    this.startAt,
    this.endAt,
    this.createAt,
    this.seats,
    this.dns,
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
  String? customerId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? productId;

  List<String> addOns;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? seats;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dns;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmSubscription &&
          other.id == id &&
          other.customerId == customerId &&
          other.productId == productId &&
          other.addOns == addOns &&
          other.startAt == startAt &&
          other.endAt == endAt &&
          other.createAt == createAt &&
          other.seats == seats &&
          other.dns == dns;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (customerId == null ? 0 : customerId!.hashCode) +
      (productId == null ? 0 : productId!.hashCode) +
      (addOns.hashCode) +
      (startAt == null ? 0 : startAt!.hashCode) +
      (endAt == null ? 0 : endAt!.hashCode) +
      (createAt == null ? 0 : createAt!.hashCode) +
      (seats == null ? 0 : seats!.hashCode) +
      (dns == null ? 0 : dns!.hashCode);

  @override
  String toString() =>
      'MmSubscription[id=$id, customerId=$customerId, productId=$productId, addOns=$addOns, startAt=$startAt, endAt=$endAt, createAt=$createAt, seats=$seats, dns=$dns]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (customerId != null) {
      _json[r'customer_id'] = customerId;
    }
    if (productId != null) {
      _json[r'product_id'] = productId;
    }
    _json[r'add_ons'] = addOns;
    if (startAt != null) {
      _json[r'start_at'] = startAt;
    }
    if (endAt != null) {
      _json[r'end_at'] = endAt;
    }
    if (createAt != null) {
      _json[r'create_at'] = createAt;
    }
    if (seats != null) {
      _json[r'seats'] = seats;
    }
    if (dns != null) {
      _json[r'dns'] = dns;
    }
    return _json;
  }

  /// Returns a new [MmSubscription] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmSubscription? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmSubscription[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmSubscription[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmSubscription(
        id: mapValueOfType<String>(json, r'id'),
        customerId: mapValueOfType<String>(json, r'customer_id'),
        productId: mapValueOfType<String>(json, r'product_id'),
        addOns: json[r'add_ons'] is List ? (json[r'add_ons'] as List).cast<String>() : const [],
        startAt: mapValueOfType<int>(json, r'start_at'),
        endAt: mapValueOfType<int>(json, r'end_at'),
        createAt: mapValueOfType<int>(json, r'create_at'),
        seats: mapValueOfType<int>(json, r'seats'),
        dns: mapValueOfType<String>(json, r'dns'),
      );
    }
    return null;
  }

  static List<MmSubscription>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmSubscription>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmSubscription.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmSubscription> mapFromJson(dynamic json) {
    final map = <String, MmSubscription>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSubscription.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmSubscription-objects as value to a dart map
  static Map<String, List<MmSubscription>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmSubscription>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSubscription.listFromJson(
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
