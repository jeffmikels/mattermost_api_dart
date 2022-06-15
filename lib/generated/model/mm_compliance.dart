//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmCompliance {
  /// Returns a new [MmCompliance] instance.
  MmCompliance({
    this.id,
    this.createAt,
    this.userId,
    this.status,
    this.count,
    this.desc,
    this.type,
    this.startAt,
    this.endAt,
    this.keywords,
    this.emails,
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
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? desc;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

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
  String? keywords;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? emails;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmCompliance &&
          other.id == id &&
          other.createAt == createAt &&
          other.userId == userId &&
          other.status == status &&
          other.count == count &&
          other.desc == desc &&
          other.type == type &&
          other.startAt == startAt &&
          other.endAt == endAt &&
          other.keywords == keywords &&
          other.emails == emails;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (createAt == null ? 0 : createAt!.hashCode) +
      (userId == null ? 0 : userId!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (count == null ? 0 : count!.hashCode) +
      (desc == null ? 0 : desc!.hashCode) +
      (type == null ? 0 : type!.hashCode) +
      (startAt == null ? 0 : startAt!.hashCode) +
      (endAt == null ? 0 : endAt!.hashCode) +
      (keywords == null ? 0 : keywords!.hashCode) +
      (emails == null ? 0 : emails!.hashCode);

  @override
  String toString() =>
      'MmCompliance[id=$id, createAt=$createAt, userId=$userId, status=$status, count=$count, desc=$desc, type=$type, startAt=$startAt, endAt=$endAt, keywords=$keywords, emails=$emails]';

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
    if (status != null) {
      _json[r'status'] = status;
    }
    if (count != null) {
      _json[r'count'] = count;
    }
    if (desc != null) {
      _json[r'desc'] = desc;
    }
    if (type != null) {
      _json[r'type'] = type;
    }
    if (startAt != null) {
      _json[r'start_at'] = startAt;
    }
    if (endAt != null) {
      _json[r'end_at'] = endAt;
    }
    if (keywords != null) {
      _json[r'keywords'] = keywords;
    }
    if (emails != null) {
      _json[r'emails'] = emails;
    }
    return _json;
  }

  /// Returns a new [MmCompliance] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmCompliance? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmCompliance[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmCompliance[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmCompliance(
        id: mapValueOfType<String>(json, r'id'),
        createAt: mapValueOfType<int>(json, r'create_at'),
        userId: mapValueOfType<String>(json, r'user_id'),
        status: mapValueOfType<String>(json, r'status'),
        count: mapValueOfType<int>(json, r'count'),
        desc: mapValueOfType<String>(json, r'desc'),
        type: mapValueOfType<String>(json, r'type'),
        startAt: mapValueOfType<int>(json, r'start_at'),
        endAt: mapValueOfType<int>(json, r'end_at'),
        keywords: mapValueOfType<String>(json, r'keywords'),
        emails: mapValueOfType<String>(json, r'emails'),
      );
    }
    return null;
  }

  static List<MmCompliance>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmCompliance>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmCompliance.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmCompliance> mapFromJson(dynamic json) {
    final map = <String, MmCompliance>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmCompliance.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmCompliance-objects as value to a dart map
  static Map<String, List<MmCompliance>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmCompliance>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmCompliance.listFromJson(
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
