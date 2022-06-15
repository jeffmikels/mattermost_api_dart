//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmJob {
  /// Returns a new [MmJob] instance.
  MmJob({
    this.id,
    this.type,
    this.createAt,
    this.startAt,
    this.lastActivityAt,
    this.status,
    this.progress,
    this.data,
  });

  /// The unique id of the job
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The type of job
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// The time at which the job was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createAt;

  /// The time at which the job was started
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startAt;

  /// The last time at which the job had activity
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastActivityAt;

  /// The status of the job
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// The progress (as a percentage) of the job
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? progress;

  /// A freeform data field containing additional information about the job
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Map? data;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmJob &&
          other.id == id &&
          other.type == type &&
          other.createAt == createAt &&
          other.startAt == startAt &&
          other.lastActivityAt == lastActivityAt &&
          other.status == status &&
          other.progress == progress &&
          other.data == data;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (type == null ? 0 : type!.hashCode) +
      (createAt == null ? 0 : createAt!.hashCode) +
      (startAt == null ? 0 : startAt!.hashCode) +
      (lastActivityAt == null ? 0 : lastActivityAt!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (progress == null ? 0 : progress!.hashCode) +
      (data == null ? 0 : data!.hashCode);

  @override
  String toString() =>
      'MmJob[id=$id, type=$type, createAt=$createAt, startAt=$startAt, lastActivityAt=$lastActivityAt, status=$status, progress=$progress, data=$data]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (type != null) {
      _json[r'type'] = type;
    }
    if (createAt != null) {
      _json[r'create_at'] = createAt;
    }
    if (startAt != null) {
      _json[r'start_at'] = startAt;
    }
    if (lastActivityAt != null) {
      _json[r'last_activity_at'] = lastActivityAt;
    }
    if (status != null) {
      _json[r'status'] = status;
    }
    if (progress != null) {
      _json[r'progress'] = progress;
    }
    if (data != null) {
      _json[r'data'] = data;
    }
    return _json;
  }

  /// Returns a new [MmJob] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmJob? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmJob[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmJob[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmJob(
        id: mapValueOfType<String>(json, r'id'),
        type: mapValueOfType<String>(json, r'type'),
        createAt: mapValueOfType<int>(json, r'create_at'),
        startAt: mapValueOfType<int>(json, r'start_at'),
        lastActivityAt: mapValueOfType<int>(json, r'last_activity_at'),
        status: mapValueOfType<String>(json, r'status'),
        progress: mapValueOfType<int>(json, r'progress'),
        data: mapValueOfType<Map>(json, r'data'),
      );
    }
    return null;
  }

  static List<MmJob>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmJob>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmJob.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmJob> mapFromJson(dynamic json) {
    final map = <String, MmJob>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmJob.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmJob-objects as value to a dart map
  static Map<String, List<MmJob>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmJob>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmJob.listFromJson(
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
