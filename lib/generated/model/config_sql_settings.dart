//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class ConfigSqlSettings {
  /// Returns a new [ConfigSqlSettings] instance.
  ConfigSqlSettings({
    this.driverName,
    this.dataSource,
    this.dataSourceReplicas = const [],
    this.maxIdleConns,
    this.maxOpenConns,
    this.trace,
    this.atRestEncryptKey,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? driverName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataSource;

  List<String> dataSourceReplicas;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxIdleConns;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxOpenConns;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? trace;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? atRestEncryptKey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConfigSqlSettings &&
     other.driverName == driverName &&
     other.dataSource == dataSource &&
     other.dataSourceReplicas == dataSourceReplicas &&
     other.maxIdleConns == maxIdleConns &&
     other.maxOpenConns == maxOpenConns &&
     other.trace == trace &&
     other.atRestEncryptKey == atRestEncryptKey;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (driverName == null ? 0 : driverName!.hashCode) +
    (dataSource == null ? 0 : dataSource!.hashCode) +
    (dataSourceReplicas.hashCode) +
    (maxIdleConns == null ? 0 : maxIdleConns!.hashCode) +
    (maxOpenConns == null ? 0 : maxOpenConns!.hashCode) +
    (trace == null ? 0 : trace!.hashCode) +
    (atRestEncryptKey == null ? 0 : atRestEncryptKey!.hashCode);

  @override
  String toString() => 'ConfigSqlSettings[driverName=$driverName, dataSource=$dataSource, dataSourceReplicas=$dataSourceReplicas, maxIdleConns=$maxIdleConns, maxOpenConns=$maxOpenConns, trace=$trace, atRestEncryptKey=$atRestEncryptKey]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (driverName != null) {
      _json[r'DriverName'] = driverName;
    }
    if (dataSource != null) {
      _json[r'DataSource'] = dataSource;
    }
      _json[r'DataSourceReplicas'] = dataSourceReplicas;
    if (maxIdleConns != null) {
      _json[r'MaxIdleConns'] = maxIdleConns;
    }
    if (maxOpenConns != null) {
      _json[r'MaxOpenConns'] = maxOpenConns;
    }
    if (trace != null) {
      _json[r'Trace'] = trace;
    }
    if (atRestEncryptKey != null) {
      _json[r'AtRestEncryptKey'] = atRestEncryptKey;
    }
    return _json;
  }

  /// Returns a new [ConfigSqlSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConfigSqlSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConfigSqlSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConfigSqlSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConfigSqlSettings(
        driverName: mapValueOfType<String>(json, r'DriverName'),
        dataSource: mapValueOfType<String>(json, r'DataSource'),
        dataSourceReplicas: json[r'DataSourceReplicas'] is List
            ? (json[r'DataSourceReplicas'] as List).cast<String>()
            : const [],
        maxIdleConns: mapValueOfType<int>(json, r'MaxIdleConns'),
        maxOpenConns: mapValueOfType<int>(json, r'MaxOpenConns'),
        trace: mapValueOfType<bool>(json, r'Trace'),
        atRestEncryptKey: mapValueOfType<String>(json, r'AtRestEncryptKey'),
      );
    }
    return null;
  }

  static List<ConfigSqlSettings>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConfigSqlSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConfigSqlSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConfigSqlSettings> mapFromJson(dynamic json) {
    final map = <String, ConfigSqlSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConfigSqlSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConfigSqlSettings-objects as value to a dart map
  static Map<String, List<ConfigSqlSettings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConfigSqlSettings>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConfigSqlSettings.listFromJson(entry.value, growable: growable,);
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

