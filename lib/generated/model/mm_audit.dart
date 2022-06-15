//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmAudit {
  /// Returns a new [MmAudit] instance.
  MmAudit({
    this.id,
    this.createAt,
    this.userId,
    this.action,
    this.extraInfo,
    this.ipAddress,
    this.sessionId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The time in milliseconds a audit was created
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
  String? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? action;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? extraInfo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ipAddress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sessionId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmAudit &&
          other.id == id &&
          other.createAt == createAt &&
          other.userId == userId &&
          other.action == action &&
          other.extraInfo == extraInfo &&
          other.ipAddress == ipAddress &&
          other.sessionId == sessionId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (createAt == null ? 0 : createAt!.hashCode) +
      (userId == null ? 0 : userId!.hashCode) +
      (action == null ? 0 : action!.hashCode) +
      (extraInfo == null ? 0 : extraInfo!.hashCode) +
      (ipAddress == null ? 0 : ipAddress!.hashCode) +
      (sessionId == null ? 0 : sessionId!.hashCode);

  @override
  String toString() =>
      'MmAudit[id=$id, createAt=$createAt, userId=$userId, action=$action, extraInfo=$extraInfo, ipAddress=$ipAddress, sessionId=$sessionId]';

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
    if (action != null) {
      _json[r'action'] = action;
    }
    if (extraInfo != null) {
      _json[r'extra_info'] = extraInfo;
    }
    if (ipAddress != null) {
      _json[r'ip_address'] = ipAddress;
    }
    if (sessionId != null) {
      _json[r'session_id'] = sessionId;
    }
    return _json;
  }

  /// Returns a new [MmAudit] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmAudit? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmAudit[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmAudit[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmAudit(
        id: mapValueOfType<String>(json, r'id'),
        createAt: mapValueOfType<int>(json, r'create_at'),
        userId: mapValueOfType<String>(json, r'user_id'),
        action: mapValueOfType<String>(json, r'action'),
        extraInfo: mapValueOfType<String>(json, r'extra_info'),
        ipAddress: mapValueOfType<String>(json, r'ip_address'),
        sessionId: mapValueOfType<String>(json, r'session_id'),
      );
    }
    return null;
  }

  static List<MmAudit>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmAudit>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmAudit.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmAudit> mapFromJson(dynamic json) {
    final map = <String, MmAudit>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmAudit.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmAudit-objects as value to a dart map
  static Map<String, List<MmAudit>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmAudit>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmAudit.listFromJson(
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
