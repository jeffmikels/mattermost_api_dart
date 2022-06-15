//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmClusterInfo {
  /// Returns a new [MmClusterInfo] instance.
  MmClusterInfo({
    this.id,
    this.version,
    this.configHash,
    this.internodeUrl,
    this.hostname,
    this.lastPing,
    this.isAlive,
  });

  /// The unique ID for the node
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The server version the node is on
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  /// The hash of the configuartion file the node is using
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? configHash;

  /// The URL used to communicate with those node from other nodes
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? internodeUrl;

  /// The hostname for this node
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hostname;

  /// The time of the last ping to this node
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastPing;

  /// Whether or not the node is alive and well
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAlive;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmClusterInfo &&
          other.id == id &&
          other.version == version &&
          other.configHash == configHash &&
          other.internodeUrl == internodeUrl &&
          other.hostname == hostname &&
          other.lastPing == lastPing &&
          other.isAlive == isAlive;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (version == null ? 0 : version!.hashCode) +
      (configHash == null ? 0 : configHash!.hashCode) +
      (internodeUrl == null ? 0 : internodeUrl!.hashCode) +
      (hostname == null ? 0 : hostname!.hashCode) +
      (lastPing == null ? 0 : lastPing!.hashCode) +
      (isAlive == null ? 0 : isAlive!.hashCode);

  @override
  String toString() =>
      'MmClusterInfo[id=$id, version=$version, configHash=$configHash, internodeUrl=$internodeUrl, hostname=$hostname, lastPing=$lastPing, isAlive=$isAlive]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (version != null) {
      _json[r'version'] = version;
    }
    if (configHash != null) {
      _json[r'config_hash'] = configHash;
    }
    if (internodeUrl != null) {
      _json[r'internode_url'] = internodeUrl;
    }
    if (hostname != null) {
      _json[r'hostname'] = hostname;
    }
    if (lastPing != null) {
      _json[r'last_ping'] = lastPing;
    }
    if (isAlive != null) {
      _json[r'is_alive'] = isAlive;
    }
    return _json;
  }

  /// Returns a new [MmClusterInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmClusterInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmClusterInfo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmClusterInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmClusterInfo(
        id: mapValueOfType<String>(json, r'id'),
        version: mapValueOfType<String>(json, r'version'),
        configHash: mapValueOfType<String>(json, r'config_hash'),
        internodeUrl: mapValueOfType<String>(json, r'internode_url'),
        hostname: mapValueOfType<String>(json, r'hostname'),
        lastPing: mapValueOfType<int>(json, r'last_ping'),
        isAlive: mapValueOfType<bool>(json, r'is_alive'),
      );
    }
    return null;
  }

  static List<MmClusterInfo>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmClusterInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmClusterInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmClusterInfo> mapFromJson(dynamic json) {
    final map = <String, MmClusterInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmClusterInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmClusterInfo-objects as value to a dart map
  static Map<String, List<MmClusterInfo>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmClusterInfo>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmClusterInfo.listFromJson(
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
