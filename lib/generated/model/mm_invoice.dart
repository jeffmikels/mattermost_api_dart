//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmInvoice {
  /// Returns a new [MmInvoice] instance.
  MmInvoice({
    this.id,
    this.number,
    this.createAt,
    this.total,
    this.tax,
    this.status,
    this.periodStart,
    this.periodEnd,
    this.subscriptionId,
    this.item = const [],
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
  String? number;

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
  int? total;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tax;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? periodStart;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? periodEnd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subscriptionId;

  List<MmInvoiceLineItem> item;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmInvoice &&
          other.id == id &&
          other.number == number &&
          other.createAt == createAt &&
          other.total == total &&
          other.tax == tax &&
          other.status == status &&
          other.periodStart == periodStart &&
          other.periodEnd == periodEnd &&
          other.subscriptionId == subscriptionId &&
          other.item == item;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (number == null ? 0 : number!.hashCode) +
      (createAt == null ? 0 : createAt!.hashCode) +
      (total == null ? 0 : total!.hashCode) +
      (tax == null ? 0 : tax!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (periodStart == null ? 0 : periodStart!.hashCode) +
      (periodEnd == null ? 0 : periodEnd!.hashCode) +
      (subscriptionId == null ? 0 : subscriptionId!.hashCode) +
      (item.hashCode);

  @override
  String toString() =>
      'MmInvoice[id=$id, number=$number, createAt=$createAt, total=$total, tax=$tax, status=$status, periodStart=$periodStart, periodEnd=$periodEnd, subscriptionId=$subscriptionId, item=$item]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (number != null) {
      _json[r'number'] = number;
    }
    if (createAt != null) {
      _json[r'create_at'] = createAt;
    }
    if (total != null) {
      _json[r'total'] = total;
    }
    if (tax != null) {
      _json[r'tax'] = tax;
    }
    if (status != null) {
      _json[r'status'] = status;
    }
    if (periodStart != null) {
      _json[r'period_start'] = periodStart;
    }
    if (periodEnd != null) {
      _json[r'period_end'] = periodEnd;
    }
    if (subscriptionId != null) {
      _json[r'subscription_id'] = subscriptionId;
    }
    _json[r'item'] = item;
    return _json;
  }

  /// Returns a new [MmInvoice] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmInvoice? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmInvoice[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmInvoice[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmInvoice(
        id: mapValueOfType<String>(json, r'id'),
        number: mapValueOfType<String>(json, r'number'),
        createAt: mapValueOfType<int>(json, r'create_at'),
        total: mapValueOfType<int>(json, r'total'),
        tax: mapValueOfType<int>(json, r'tax'),
        status: mapValueOfType<String>(json, r'status'),
        periodStart: mapValueOfType<int>(json, r'period_start'),
        periodEnd: mapValueOfType<int>(json, r'period_end'),
        subscriptionId: mapValueOfType<String>(json, r'subscription_id'),
        item: MmInvoiceLineItem.listFromJson(json[r'item']) ?? const [],
      );
    }
    return null;
  }

  static List<MmInvoice>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmInvoice>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmInvoice.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmInvoice> mapFromJson(dynamic json) {
    final map = <String, MmInvoice>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmInvoice.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmInvoice-objects as value to a dart map
  static Map<String, List<MmInvoice>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmInvoice>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmInvoice.listFromJson(
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
