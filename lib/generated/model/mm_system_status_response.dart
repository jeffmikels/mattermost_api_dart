//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmSystemStatusResponse {
  /// Returns a new [MmSystemStatusResponse] instance.
  MmSystemStatusResponse({
    this.androidLatestVersion,
    this.androidMinVersion,
    this.desktopLatestVersion,
    this.desktopMinVersion,
    this.iosLatestVersion,
    this.iosMinVersion,
    this.databaseStatus,
    this.filestoreStatus,
    this.status,
    this.canReceiveNotifications,
  });

  /// Latest Android version supported
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? androidLatestVersion;

  /// Minimum Android version supported
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? androidMinVersion;

  /// Latest desktop version supported
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? desktopLatestVersion;

  /// Minimum desktop version supported
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? desktopMinVersion;

  /// Latest iOS version supported
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iosLatestVersion;

  /// Minimum iOS version supported
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iosMinVersion;

  /// Status of database (\"OK\" or \"UNHEALTHY\"). Included when get_server_status parameter set.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? databaseStatus;

  /// Status of filestore (\"OK\" or \"UNHEALTHY\"). Included when get_server_status parameter set.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filestoreStatus;

  /// Status of server (\"OK\" or \"UNHEALTHY\"). Included when get_server_status parameter set.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Whether the device id provided can receive notifications (\"true\", \"false\" or \"unknown\"). Included when device_id parameter set.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? canReceiveNotifications;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmSystemStatusResponse &&
          other.androidLatestVersion == androidLatestVersion &&
          other.androidMinVersion == androidMinVersion &&
          other.desktopLatestVersion == desktopLatestVersion &&
          other.desktopMinVersion == desktopMinVersion &&
          other.iosLatestVersion == iosLatestVersion &&
          other.iosMinVersion == iosMinVersion &&
          other.databaseStatus == databaseStatus &&
          other.filestoreStatus == filestoreStatus &&
          other.status == status &&
          other.canReceiveNotifications == canReceiveNotifications;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (androidLatestVersion == null ? 0 : androidLatestVersion!.hashCode) +
      (androidMinVersion == null ? 0 : androidMinVersion!.hashCode) +
      (desktopLatestVersion == null ? 0 : desktopLatestVersion!.hashCode) +
      (desktopMinVersion == null ? 0 : desktopMinVersion!.hashCode) +
      (iosLatestVersion == null ? 0 : iosLatestVersion!.hashCode) +
      (iosMinVersion == null ? 0 : iosMinVersion!.hashCode) +
      (databaseStatus == null ? 0 : databaseStatus!.hashCode) +
      (filestoreStatus == null ? 0 : filestoreStatus!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (canReceiveNotifications == null ? 0 : canReceiveNotifications!.hashCode);

  @override
  String toString() =>
      'MmSystemStatusResponse[androidLatestVersion=$androidLatestVersion, androidMinVersion=$androidMinVersion, desktopLatestVersion=$desktopLatestVersion, desktopMinVersion=$desktopMinVersion, iosLatestVersion=$iosLatestVersion, iosMinVersion=$iosMinVersion, databaseStatus=$databaseStatus, filestoreStatus=$filestoreStatus, status=$status, canReceiveNotifications=$canReceiveNotifications]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (androidLatestVersion != null) {
      _json[r'AndroidLatestVersion'] = androidLatestVersion;
    }
    if (androidMinVersion != null) {
      _json[r'AndroidMinVersion'] = androidMinVersion;
    }
    if (desktopLatestVersion != null) {
      _json[r'DesktopLatestVersion'] = desktopLatestVersion;
    }
    if (desktopMinVersion != null) {
      _json[r'DesktopMinVersion'] = desktopMinVersion;
    }
    if (iosLatestVersion != null) {
      _json[r'IosLatestVersion'] = iosLatestVersion;
    }
    if (iosMinVersion != null) {
      _json[r'IosMinVersion'] = iosMinVersion;
    }
    if (databaseStatus != null) {
      _json[r'database_status'] = databaseStatus;
    }
    if (filestoreStatus != null) {
      _json[r'filestore_status'] = filestoreStatus;
    }
    if (status != null) {
      _json[r'status'] = status;
    }
    if (canReceiveNotifications != null) {
      _json[r'CanReceiveNotifications'] = canReceiveNotifications;
    }
    return _json;
  }

  /// Returns a new [MmSystemStatusResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmSystemStatusResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmSystemStatusResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmSystemStatusResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmSystemStatusResponse(
        androidLatestVersion: mapValueOfType<String>(json, r'AndroidLatestVersion'),
        androidMinVersion: mapValueOfType<String>(json, r'AndroidMinVersion'),
        desktopLatestVersion: mapValueOfType<String>(json, r'DesktopLatestVersion'),
        desktopMinVersion: mapValueOfType<String>(json, r'DesktopMinVersion'),
        iosLatestVersion: mapValueOfType<String>(json, r'IosLatestVersion'),
        iosMinVersion: mapValueOfType<String>(json, r'IosMinVersion'),
        databaseStatus: mapValueOfType<String>(json, r'database_status'),
        filestoreStatus: mapValueOfType<String>(json, r'filestore_status'),
        status: mapValueOfType<String>(json, r'status'),
        canReceiveNotifications: mapValueOfType<String>(json, r'CanReceiveNotifications'),
      );
    }
    return null;
  }

  static List<MmSystemStatusResponse>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmSystemStatusResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmSystemStatusResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmSystemStatusResponse> mapFromJson(dynamic json) {
    final map = <String, MmSystemStatusResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSystemStatusResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmSystemStatusResponse-objects as value to a dart map
  static Map<String, List<MmSystemStatusResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmSystemStatusResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSystemStatusResponse.listFromJson(
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
