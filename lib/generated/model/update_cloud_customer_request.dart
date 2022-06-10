//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class UpdateCloudCustomerRequest {
  /// Returns a new [UpdateCloudCustomerRequest] instance.
  UpdateCloudCustomerRequest({
    this.name,
    this.email,
    this.contactFirstName,
    this.contactLastName,
    this.numEmployees,
  });

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
  String? email;

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
  String? numEmployees;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateCloudCustomerRequest &&
     other.name == name &&
     other.email == email &&
     other.contactFirstName == contactFirstName &&
     other.contactLastName == contactLastName &&
     other.numEmployees == numEmployees;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (contactFirstName == null ? 0 : contactFirstName!.hashCode) +
    (contactLastName == null ? 0 : contactLastName!.hashCode) +
    (numEmployees == null ? 0 : numEmployees!.hashCode);

  @override
  String toString() => 'UpdateCloudCustomerRequest[name=$name, email=$email, contactFirstName=$contactFirstName, contactLastName=$contactLastName, numEmployees=$numEmployees]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (name != null) {
      _json[r'name'] = name;
    }
    if (email != null) {
      _json[r'email'] = email;
    }
    if (contactFirstName != null) {
      _json[r'contact_first_name'] = contactFirstName;
    }
    if (contactLastName != null) {
      _json[r'contact_last_name'] = contactLastName;
    }
    if (numEmployees != null) {
      _json[r'num_employees'] = numEmployees;
    }
    return _json;
  }

  /// Returns a new [UpdateCloudCustomerRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateCloudCustomerRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateCloudCustomerRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateCloudCustomerRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateCloudCustomerRequest(
        name: mapValueOfType<String>(json, r'name'),
        email: mapValueOfType<String>(json, r'email'),
        contactFirstName: mapValueOfType<String>(json, r'contact_first_name'),
        contactLastName: mapValueOfType<String>(json, r'contact_last_name'),
        numEmployees: mapValueOfType<String>(json, r'num_employees'),
      );
    }
    return null;
  }

  static List<UpdateCloudCustomerRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateCloudCustomerRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateCloudCustomerRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateCloudCustomerRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateCloudCustomerRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateCloudCustomerRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateCloudCustomerRequest-objects as value to a dart map
  static Map<String, List<UpdateCloudCustomerRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateCloudCustomerRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateCloudCustomerRequest.listFromJson(entry.value, growable: growable,);
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

