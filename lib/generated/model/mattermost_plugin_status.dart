//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostPluginStatus {
  /// Returns a new [MattermostPluginStatus] instance.
  MattermostPluginStatus({
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
  MattermostPluginStatusStateEnum? state;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MattermostPluginStatus &&
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
      'MattermostPluginStatus[pluginId=$pluginId, name=$name, description=$description, version=$version, clusterId=$clusterId, pluginPath=$pluginPath, state=$state]';

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

  /// Returns a new [MattermostPluginStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostPluginStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostPluginStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostPluginStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostPluginStatus(
        pluginId: mapValueOfType<String>(json, r'plugin_id'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        version: mapValueOfType<String>(json, r'version'),
        clusterId: mapValueOfType<String>(json, r'cluster_id'),
        pluginPath: mapValueOfType<String>(json, r'plugin_path'),
        state: MattermostPluginStatusStateEnum.fromJson(json[r'state']),
      );
    }
    return null;
  }

  static List<MattermostPluginStatus>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MattermostPluginStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostPluginStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostPluginStatus> mapFromJson(dynamic json) {
    final map = <String, MattermostPluginStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostPluginStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostPluginStatus-objects as value to a dart map
  static Map<String, List<MattermostPluginStatus>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MattermostPluginStatus>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostPluginStatus.listFromJson(
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
class MattermostPluginStatusStateEnum {
  /// Instantiate a new enum with the provided [value].
  const MattermostPluginStatusStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const notRunning = MattermostPluginStatusStateEnum._(r'NotRunning');
  static const starting = MattermostPluginStatusStateEnum._(r'Starting');
  static const running = MattermostPluginStatusStateEnum._(r'Running');
  static const failedToStart = MattermostPluginStatusStateEnum._(r'FailedToStart');
  static const failedToStayRunning = MattermostPluginStatusStateEnum._(r'FailedToStayRunning');
  static const stopping = MattermostPluginStatusStateEnum._(r'Stopping');

  /// List of all possible values in this [enum][MattermostPluginStatusStateEnum].
  static const values = <MattermostPluginStatusStateEnum>[
    notRunning,
    starting,
    running,
    failedToStart,
    failedToStayRunning,
    stopping,
  ];

  static MattermostPluginStatusStateEnum? fromJson(dynamic value) =>
      MattermostPluginStatusStateEnumTypeTransformer().decode(value);

  static List<MattermostPluginStatusStateEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MattermostPluginStatusStateEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostPluginStatusStateEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MattermostPluginStatusStateEnum] to String,
/// and [decode] dynamic data back to [MattermostPluginStatusStateEnum].
class MattermostPluginStatusStateEnumTypeTransformer {
  factory MattermostPluginStatusStateEnumTypeTransformer() =>
      _instance ??= const MattermostPluginStatusStateEnumTypeTransformer._();

  const MattermostPluginStatusStateEnumTypeTransformer._();

  String encode(MattermostPluginStatusStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MattermostPluginStatusStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MattermostPluginStatusStateEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'NotRunning':
          return MattermostPluginStatusStateEnum.notRunning;
        case r'Starting':
          return MattermostPluginStatusStateEnum.starting;
        case r'Running':
          return MattermostPluginStatusStateEnum.running;
        case r'FailedToStart':
          return MattermostPluginStatusStateEnum.failedToStart;
        case r'FailedToStayRunning':
          return MattermostPluginStatusStateEnum.failedToStayRunning;
        case r'Stopping':
          return MattermostPluginStatusStateEnum.stopping;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MattermostPluginStatusStateEnumTypeTransformer] instance.
  static MattermostPluginStatusStateEnumTypeTransformer? _instance;
}
