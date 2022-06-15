//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmUserTermsOfService {
  /// Returns a new [MmUserTermsOfService] instance.
  MmUserTermsOfService({
    this.userId,
    this.termsOfServiceId,
    this.createAt,
  });

  /// The unique identifier of the user who performed this terms of service action.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  /// The unique identifier of the terms of service the action was performed on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? termsOfServiceId;

  /// The time in milliseconds that this action was performed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmUserTermsOfService &&
          other.userId == userId &&
          other.termsOfServiceId == termsOfServiceId &&
          other.createAt == createAt;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (userId == null ? 0 : userId!.hashCode) +
      (termsOfServiceId == null ? 0 : termsOfServiceId!.hashCode) +
      (createAt == null ? 0 : createAt!.hashCode);

  @override
  String toString() => 'MmUserTermsOfService[userId=$userId, termsOfServiceId=$termsOfServiceId, createAt=$createAt]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (userId != null) {
      _json[r'user_id'] = userId;
    }
    if (termsOfServiceId != null) {
      _json[r'terms_of_service_id'] = termsOfServiceId;
    }
    if (createAt != null) {
      _json[r'create_at'] = createAt;
    }
    return _json;
  }

  /// Returns a new [MmUserTermsOfService] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmUserTermsOfService? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmUserTermsOfService[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmUserTermsOfService[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmUserTermsOfService(
        userId: mapValueOfType<String>(json, r'user_id'),
        termsOfServiceId: mapValueOfType<String>(json, r'terms_of_service_id'),
        createAt: mapValueOfType<int>(json, r'create_at'),
      );
    }
    return null;
  }

  static List<MmUserTermsOfService>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmUserTermsOfService>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmUserTermsOfService.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmUserTermsOfService> mapFromJson(dynamic json) {
    final map = <String, MmUserTermsOfService>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUserTermsOfService.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmUserTermsOfService-objects as value to a dart map
  static Map<String, List<MmUserTermsOfService>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmUserTermsOfService>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUserTermsOfService.listFromJson(
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
