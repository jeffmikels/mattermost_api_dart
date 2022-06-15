//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmInvoiceLineItem {
  /// Returns a new [MmInvoiceLineItem] instance.
  MmInvoiceLineItem({
    this.priceId,
    this.total,
    this.quantity,
    this.pricePerUnit,
    this.description,
    this.metadata = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? priceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? quantity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pricePerUnit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  List<String> metadata;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmInvoiceLineItem &&
          other.priceId == priceId &&
          other.total == total &&
          other.quantity == quantity &&
          other.pricePerUnit == pricePerUnit &&
          other.description == description &&
          other.metadata == metadata;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (priceId == null ? 0 : priceId!.hashCode) +
      (total == null ? 0 : total!.hashCode) +
      (quantity == null ? 0 : quantity!.hashCode) +
      (pricePerUnit == null ? 0 : pricePerUnit!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (metadata.hashCode);

  @override
  String toString() =>
      'MmInvoiceLineItem[priceId=$priceId, total=$total, quantity=$quantity, pricePerUnit=$pricePerUnit, description=$description, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (priceId != null) {
      _json[r'price_id'] = priceId;
    }
    if (total != null) {
      _json[r'total'] = total;
    }
    if (quantity != null) {
      _json[r'quantity'] = quantity;
    }
    if (pricePerUnit != null) {
      _json[r'price_per_unit'] = pricePerUnit;
    }
    if (description != null) {
      _json[r'description'] = description;
    }
    _json[r'metadata'] = metadata;
    return _json;
  }

  /// Returns a new [MmInvoiceLineItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmInvoiceLineItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmInvoiceLineItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmInvoiceLineItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmInvoiceLineItem(
        priceId: mapValueOfType<String>(json, r'price_id'),
        total: mapValueOfType<int>(json, r'total'),
        quantity: mapValueOfType<int>(json, r'quantity'),
        pricePerUnit: mapValueOfType<int>(json, r'price_per_unit'),
        description: mapValueOfType<String>(json, r'description'),
        metadata: json[r'metadata'] is List ? (json[r'metadata'] as List).cast<String>() : const [],
      );
    }
    return null;
  }

  static List<MmInvoiceLineItem>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmInvoiceLineItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmInvoiceLineItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmInvoiceLineItem> mapFromJson(dynamic json) {
    final map = <String, MmInvoiceLineItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmInvoiceLineItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmInvoiceLineItem-objects as value to a dart map
  static Map<String, List<MmInvoiceLineItem>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmInvoiceLineItem>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmInvoiceLineItem.listFromJson(
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
