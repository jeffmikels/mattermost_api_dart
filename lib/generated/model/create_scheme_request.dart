//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class CreateSchemeRequest {
  /// Returns a new [CreateSchemeRequest] instance.
  CreateSchemeRequest({
    required this.name,
    this.description,
    required this.scope,
  });

  /// The name of the scheme
  String name;

  /// The description of the scheme
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// The scope of the scheme (\"team\" or \"channel\")
  String scope;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateSchemeRequest &&
     other.name == name &&
     other.description == description &&
     other.scope == scope;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (scope.hashCode);

  @override
  String toString() => 'CreateSchemeRequest[name=$name, description=$description, scope=$scope]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'name'] = name;
    if (description != null) {
      _json[r'description'] = description;
    }
      _json[r'scope'] = scope;
    return _json;
  }

  /// Returns a new [CreateSchemeRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateSchemeRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateSchemeRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateSchemeRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateSchemeRequest(
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description'),
        scope: mapValueOfType<String>(json, r'scope')!,
      );
    }
    return null;
  }

  static List<CreateSchemeRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateSchemeRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateSchemeRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateSchemeRequest> mapFromJson(dynamic json) {
    final map = <String, CreateSchemeRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateSchemeRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateSchemeRequest-objects as value to a dart map
  static Map<String, List<CreateSchemeRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateSchemeRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateSchemeRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'scope',
  };
}

