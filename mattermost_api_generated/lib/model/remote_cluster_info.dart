//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class RemoteClusterInfo {
  /// Returns a new [RemoteClusterInfo] instance.
  RemoteClusterInfo({
    this.displayName,
    this.createAt,
    this.lastPingAt,
  });

  /// The display name for the remote cluster
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  /// The time in milliseconds a remote cluster was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createAt;

  /// The time in milliseconds a remote cluster was last pinged successfully
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastPingAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RemoteClusterInfo &&
     other.displayName == displayName &&
     other.createAt == createAt &&
     other.lastPingAt == lastPingAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (displayName == null ? 0 : displayName!.hashCode) +
    (createAt == null ? 0 : createAt!.hashCode) +
    (lastPingAt == null ? 0 : lastPingAt!.hashCode);

  @override
  String toString() => 'RemoteClusterInfo[displayName=$displayName, createAt=$createAt, lastPingAt=$lastPingAt]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (displayName != null) {
      _json[r'display_name'] = displayName;
    }
    if (createAt != null) {
      _json[r'create_at'] = createAt;
    }
    if (lastPingAt != null) {
      _json[r'last_ping_at'] = lastPingAt;
    }
    return _json;
  }

  /// Returns a new [RemoteClusterInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RemoteClusterInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RemoteClusterInfo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RemoteClusterInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RemoteClusterInfo(
        displayName: mapValueOfType<String>(json, r'display_name'),
        createAt: mapValueOfType<int>(json, r'create_at'),
        lastPingAt: mapValueOfType<int>(json, r'last_ping_at'),
      );
    }
    return null;
  }

  static List<RemoteClusterInfo>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RemoteClusterInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RemoteClusterInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RemoteClusterInfo> mapFromJson(dynamic json) {
    final map = <String, RemoteClusterInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RemoteClusterInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RemoteClusterInfo-objects as value to a dart map
  static Map<String, List<RemoteClusterInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RemoteClusterInfo>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RemoteClusterInfo.listFromJson(entry.value, growable: growable,);
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

