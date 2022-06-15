//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMPluginStatus {
  /// Returns a new [MMPluginStatus] instance.
  MMPluginStatus({
    this.pluginId,
    this.name,
    this.description,
    this.version,
    this.clusterId,
    this.pluginPath,
    this.state,
  });

  /// Globally unique identifier that represents the plugin.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pluginId;

  /// Name of the plugin.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Description of what the plugin is and does.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Version number of the plugin.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  /// ID of the cluster in which plugin is running
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clusterId;

  /// Path to the plugin on the server
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pluginPath;

  /// State of the plugin
  MMPluginStatusStateEnum? state;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMPluginStatus &&
          other.pluginId == pluginId &&
          other.name == name &&
          other.description == description &&
          other.version == version &&
          other.clusterId == clusterId &&
          other.pluginPath == pluginPath &&
          other.state == state;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (pluginId == null ? 0 : pluginId!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (version == null ? 0 : version!.hashCode) +
      (clusterId == null ? 0 : clusterId!.hashCode) +
      (pluginPath == null ? 0 : pluginPath!.hashCode) +
      (state == null ? 0 : state!.hashCode);

  @override
  String toString() =>
      'MMPluginStatus[pluginId=$pluginId, name=$name, description=$description, version=$version, clusterId=$clusterId, pluginPath=$pluginPath, state=$state]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (pluginId != null) {
      _json[r'plugin_id'] = pluginId;
    }
    if (name != null) {
      _json[r'name'] = name;
    }
    if (description != null) {
      _json[r'description'] = description;
    }
    if (version != null) {
      _json[r'version'] = version;
    }
    if (clusterId != null) {
      _json[r'cluster_id'] = clusterId;
    }
    if (pluginPath != null) {
      _json[r'plugin_path'] = pluginPath;
    }
    if (state != null) {
      _json[r'state'] = state;
    }
    return _json;
  }

  /// Returns a new [MMPluginStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMPluginStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMPluginStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMPluginStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMPluginStatus(
        pluginId: mapValueOfType<String>(json, r'plugin_id'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        version: mapValueOfType<String>(json, r'version'),
        clusterId: mapValueOfType<String>(json, r'cluster_id'),
        pluginPath: mapValueOfType<String>(json, r'plugin_path'),
        state: MMPluginStatusStateEnum.fromJson(json[r'state']),
      );
    }
    return null;
  }

  static List<MMPluginStatus>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMPluginStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMPluginStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMPluginStatus> mapFromJson(dynamic json) {
    final map = <String, MMPluginStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMPluginStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMPluginStatus-objects as value to a dart map
  static Map<String, List<MMPluginStatus>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMPluginStatus>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMPluginStatus.listFromJson(
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

/// State of the plugin
class MMPluginStatusStateEnum {
  /// Instantiate a new enum with the provided [value].
  const MMPluginStatusStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const notRunning = MMPluginStatusStateEnum._(r'NotRunning');
  static const starting = MMPluginStatusStateEnum._(r'Starting');
  static const running = MMPluginStatusStateEnum._(r'Running');
  static const failedToStart = MMPluginStatusStateEnum._(r'FailedToStart');
  static const failedToStayRunning = MMPluginStatusStateEnum._(r'FailedToStayRunning');
  static const stopping = MMPluginStatusStateEnum._(r'Stopping');

  /// List of all possible values in this [enum][MMPluginStatusStateEnum].
  static const values = <MMPluginStatusStateEnum>[
    notRunning,
    starting,
    running,
    failedToStart,
    failedToStayRunning,
    stopping,
  ];

  static MMPluginStatusStateEnum? fromJson(dynamic value) => MMPluginStatusStateEnumTypeTransformer().decode(value);

  static List<MMPluginStatusStateEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMPluginStatusStateEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMPluginStatusStateEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MMPluginStatusStateEnum] to String,
/// and [decode] dynamic data back to [MMPluginStatusStateEnum].
class MMPluginStatusStateEnumTypeTransformer {
  factory MMPluginStatusStateEnumTypeTransformer() => _instance ??= const MMPluginStatusStateEnumTypeTransformer._();

  const MMPluginStatusStateEnumTypeTransformer._();

  String encode(MMPluginStatusStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MMPluginStatusStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MMPluginStatusStateEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'NotRunning':
          return MMPluginStatusStateEnum.notRunning;
        case r'Starting':
          return MMPluginStatusStateEnum.starting;
        case r'Running':
          return MMPluginStatusStateEnum.running;
        case r'FailedToStart':
          return MMPluginStatusStateEnum.failedToStart;
        case r'FailedToStayRunning':
          return MMPluginStatusStateEnum.failedToStayRunning;
        case r'Stopping':
          return MMPluginStatusStateEnum.stopping;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MMPluginStatusStateEnumTypeTransformer] instance.
  static MMPluginStatusStateEnumTypeTransformer? _instance;
}
