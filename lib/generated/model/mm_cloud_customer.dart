//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmCloudCustomer {
  /// Returns a new [MmCloudCustomer] instance.
  MmCloudCustomer({
    this.id,
    this.creatorId,
    this.createAt,
    this.email,
    this.name,
    this.numEmployees,
    this.contactFirstName,
    this.contactLastName,
    this.billingAddress,
    this.companyAddress,
    this.paymentMethod,
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
  String? creatorId;

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
  String? email;

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
  String? numEmployees;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contactFirstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contactLastName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MmAddress? billingAddress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MmAddress? companyAddress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MmPaymentMethod? paymentMethod;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmCloudCustomer &&
          other.id == id &&
          other.creatorId == creatorId &&
          other.createAt == createAt &&
          other.email == email &&
          other.name == name &&
          other.numEmployees == numEmployees &&
          other.contactFirstName == contactFirstName &&
          other.contactLastName == contactLastName &&
          other.billingAddress == billingAddress &&
          other.companyAddress == companyAddress &&
          other.paymentMethod == paymentMethod;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (creatorId == null ? 0 : creatorId!.hashCode) +
      (createAt == null ? 0 : createAt!.hashCode) +
      (email == null ? 0 : email!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (numEmployees == null ? 0 : numEmployees!.hashCode) +
      (contactFirstName == null ? 0 : contactFirstName!.hashCode) +
      (contactLastName == null ? 0 : contactLastName!.hashCode) +
      (billingAddress == null ? 0 : billingAddress!.hashCode) +
      (companyAddress == null ? 0 : companyAddress!.hashCode) +
      (paymentMethod == null ? 0 : paymentMethod!.hashCode);

  @override
  String toString() =>
      'MmCloudCustomer[id=$id, creatorId=$creatorId, createAt=$createAt, email=$email, name=$name, numEmployees=$numEmployees, contactFirstName=$contactFirstName, contactLastName=$contactLastName, billingAddress=$billingAddress, companyAddress=$companyAddress, paymentMethod=$paymentMethod]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (creatorId != null) {
      _json[r'creator_id'] = creatorId;
    }
    if (createAt != null) {
      _json[r'create_at'] = createAt;
    }
    if (email != null) {
      _json[r'email'] = email;
    }
    if (name != null) {
      _json[r'name'] = name;
    }
    if (numEmployees != null) {
      _json[r'num_employees'] = numEmployees;
    }
    if (contactFirstName != null) {
      _json[r'contact_first_name'] = contactFirstName;
    }
    if (contactLastName != null) {
      _json[r'contact_last_name'] = contactLastName;
    }
    if (billingAddress != null) {
      _json[r'billing_address'] = billingAddress;
    }
    if (companyAddress != null) {
      _json[r'company_address'] = companyAddress;
    }
    if (paymentMethod != null) {
      _json[r'payment_method'] = paymentMethod;
    }
    return _json;
  }

  /// Returns a new [MmCloudCustomer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmCloudCustomer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmCloudCustomer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmCloudCustomer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmCloudCustomer(
        id: mapValueOfType<String>(json, r'id'),
        creatorId: mapValueOfType<String>(json, r'creator_id'),
        createAt: mapValueOfType<int>(json, r'create_at'),
        email: mapValueOfType<String>(json, r'email'),
        name: mapValueOfType<String>(json, r'name'),
        numEmployees: mapValueOfType<String>(json, r'num_employees'),
        contactFirstName: mapValueOfType<String>(json, r'contact_first_name'),
        contactLastName: mapValueOfType<String>(json, r'contact_last_name'),
        billingAddress: MmAddress.fromJson(json[r'billing_address']),
        companyAddress: MmAddress.fromJson(json[r'company_address']),
        paymentMethod: MmPaymentMethod.fromJson(json[r'payment_method']),
      );
    }
    return null;
  }

  static List<MmCloudCustomer>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmCloudCustomer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmCloudCustomer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmCloudCustomer> mapFromJson(dynamic json) {
    final map = <String, MmCloudCustomer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmCloudCustomer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmCloudCustomer-objects as value to a dart map
  static Map<String, List<MmCloudCustomer>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmCloudCustomer>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmCloudCustomer.listFromJson(
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
