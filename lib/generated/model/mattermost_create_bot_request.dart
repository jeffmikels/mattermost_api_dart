//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostCreateBotRequest {
  /// Returns a new [MattermostCreateBotRequest] instance.
  MattermostCreateBotRequest({
    required this.username,
    this.displayName,
    this.description,
  });

  String username;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MattermostCreateBotRequest &&
          other.username == username &&
          other.displayName == displayName &&
          other.description == description;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (username.hashCode) +
      (displayName == null ? 0 : displayName!.hashCode) +
      (description == null ? 0 : description!.hashCode);

  @override
  String toString() =>
      'MattermostCreateBotRequest[username=$username, displayName=$displayName, description=$description]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'username'] = username;
    if (displayName != null) {
      _json[r'display_name'] = displayName;
    }
    if (description != null) {
      _json[r'description'] = description;
    }
    return _json;
  }

  /// Returns a new [MattermostCreateBotRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostCreateBotRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostCreateBotRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostCreateBotRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostCreateBotRequest(
        username: mapValueOfType<String>(json, r'username')!,
        displayName: mapValueOfType<String>(json, r'display_name'),
        description: mapValueOfType<String>(json, r'description'),
      );
    }
    return null;
  }

  static List<MattermostCreateBotRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MattermostCreateBotRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostCreateBotRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostCreateBotRequest> mapFromJson(dynamic json) {
    final map = <String, MattermostCreateBotRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostCreateBotRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostCreateBotRequest-objects as value to a dart map
  static Map<String, List<MattermostCreateBotRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MattermostCreateBotRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostCreateBotRequest.listFromJson(
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
  static const requiredKeys = <String>{
    'username',
  };
}
