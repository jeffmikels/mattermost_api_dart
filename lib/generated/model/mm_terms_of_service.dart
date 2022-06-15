//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMTermsOfService {
  /// Returns a new [MMTermsOfService] instance.
  MMTermsOfService({
    this.id,
    this.createAt,
    this.userId,
    this.text,
  });

  /// The unique identifier of the terms of service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The time at which the terms of service was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createAt;

  /// The unique identifier of the user who created these terms of service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  /// The text of terms of service. Supports Markdown.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMTermsOfService &&
          other.id == id &&
          other.createAt == createAt &&
          other.userId == userId &&
          other.text == text;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (createAt == null ? 0 : createAt!.hashCode) +
      (userId == null ? 0 : userId!.hashCode) +
      (text == null ? 0 : text!.hashCode);

  @override
  String toString() => 'MMTermsOfService[id=$id, createAt=$createAt, userId=$userId, text=$text]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (createAt != null) {
      _json[r'create_at'] = createAt;
    }
    if (userId != null) {
      _json[r'user_id'] = userId;
    }
    if (text != null) {
      _json[r'text'] = text;
    }
    return _json;
  }

  /// Returns a new [MMTermsOfService] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMTermsOfService? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMTermsOfService[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMTermsOfService[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMTermsOfService(
        id: mapValueOfType<String>(json, r'id'),
        createAt: mapValueOfType<int>(json, r'create_at'),
        userId: mapValueOfType<String>(json, r'user_id'),
        text: mapValueOfType<String>(json, r'text'),
      );
    }
    return null;
  }

  static List<MMTermsOfService>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMTermsOfService>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMTermsOfService.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMTermsOfService> mapFromJson(dynamic json) {
    final map = <String, MMTermsOfService>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMTermsOfService.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMTermsOfService-objects as value to a dart map
  static Map<String, List<MMTermsOfService>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMTermsOfService>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMTermsOfService.listFromJson(
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
