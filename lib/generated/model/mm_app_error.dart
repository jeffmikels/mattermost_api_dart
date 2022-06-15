//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMAppError {
  /// Returns a new [MMAppError] instance.
  MMAppError({
    this.statusCode,
    this.id,
    this.message,
    this.requestId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? statusCode;

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
  String? message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requestId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMAppError &&
          other.statusCode == statusCode &&
          other.id == id &&
          other.message == message &&
          other.requestId == requestId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (statusCode == null ? 0 : statusCode!.hashCode) +
      (id == null ? 0 : id!.hashCode) +
      (message == null ? 0 : message!.hashCode) +
      (requestId == null ? 0 : requestId!.hashCode);

  @override
  String toString() => 'MMAppError[statusCode=$statusCode, id=$id, message=$message, requestId=$requestId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (statusCode != null) {
      _json[r'status_code'] = statusCode;
    }
    if (id != null) {
      _json[r'id'] = id;
    }
    if (message != null) {
      _json[r'message'] = message;
    }
    if (requestId != null) {
      _json[r'request_id'] = requestId;
    }
    return _json;
  }

  /// Returns a new [MMAppError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMAppError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMAppError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMAppError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMAppError(
        statusCode: mapValueOfType<int>(json, r'status_code'),
        id: mapValueOfType<String>(json, r'id'),
        message: mapValueOfType<String>(json, r'message'),
        requestId: mapValueOfType<String>(json, r'request_id'),
      );
    }
    return null;
  }

  static List<MMAppError>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMAppError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMAppError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMAppError> mapFromJson(dynamic json) {
    final map = <String, MMAppError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMAppError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMAppError-objects as value to a dart map
  static Map<String, List<MMAppError>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMAppError>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMAppError.listFromJson(
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
