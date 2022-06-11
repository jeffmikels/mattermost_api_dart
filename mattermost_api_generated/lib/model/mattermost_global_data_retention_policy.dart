//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostGlobalDataRetentionPolicy {
  /// Returns a new [MattermostGlobalDataRetentionPolicy] instance.
  MattermostGlobalDataRetentionPolicy({
    this.messageDeletionEnabled,
    this.fileDeletionEnabled,
    this.messageRetentionCutoff,
    this.fileRetentionCutoff,
  });

  /// Indicates whether data retention policy deletion of messages is enabled globally.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? messageDeletionEnabled;

  /// Indicates whether data retention policy deletion of file attachments is enabled globally.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? fileDeletionEnabled;

  /// The current server timestamp before which messages should be deleted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? messageRetentionCutoff;

  /// The current server timestamp before which files should be deleted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? fileRetentionCutoff;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MattermostGlobalDataRetentionPolicy &&
     other.messageDeletionEnabled == messageDeletionEnabled &&
     other.fileDeletionEnabled == fileDeletionEnabled &&
     other.messageRetentionCutoff == messageRetentionCutoff &&
     other.fileRetentionCutoff == fileRetentionCutoff;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (messageDeletionEnabled == null ? 0 : messageDeletionEnabled!.hashCode) +
    (fileDeletionEnabled == null ? 0 : fileDeletionEnabled!.hashCode) +
    (messageRetentionCutoff == null ? 0 : messageRetentionCutoff!.hashCode) +
    (fileRetentionCutoff == null ? 0 : fileRetentionCutoff!.hashCode);

  @override
  String toString() => 'MattermostGlobalDataRetentionPolicy[messageDeletionEnabled=$messageDeletionEnabled, fileDeletionEnabled=$fileDeletionEnabled, messageRetentionCutoff=$messageRetentionCutoff, fileRetentionCutoff=$fileRetentionCutoff]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (messageDeletionEnabled != null) {
      _json[r'message_deletion_enabled'] = messageDeletionEnabled;
    }
    if (fileDeletionEnabled != null) {
      _json[r'file_deletion_enabled'] = fileDeletionEnabled;
    }
    if (messageRetentionCutoff != null) {
      _json[r'message_retention_cutoff'] = messageRetentionCutoff;
    }
    if (fileRetentionCutoff != null) {
      _json[r'file_retention_cutoff'] = fileRetentionCutoff;
    }
    return _json;
  }

  /// Returns a new [MattermostGlobalDataRetentionPolicy] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostGlobalDataRetentionPolicy? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostGlobalDataRetentionPolicy[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostGlobalDataRetentionPolicy[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostGlobalDataRetentionPolicy(
        messageDeletionEnabled: mapValueOfType<bool>(json, r'message_deletion_enabled'),
        fileDeletionEnabled: mapValueOfType<bool>(json, r'file_deletion_enabled'),
        messageRetentionCutoff: mapValueOfType<int>(json, r'message_retention_cutoff'),
        fileRetentionCutoff: mapValueOfType<int>(json, r'file_retention_cutoff'),
      );
    }
    return null;
  }

  static List<MattermostGlobalDataRetentionPolicy>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MattermostGlobalDataRetentionPolicy>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostGlobalDataRetentionPolicy.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostGlobalDataRetentionPolicy> mapFromJson(dynamic json) {
    final map = <String, MattermostGlobalDataRetentionPolicy>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostGlobalDataRetentionPolicy.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostGlobalDataRetentionPolicy-objects as value to a dart map
  static Map<String, List<MattermostGlobalDataRetentionPolicy>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MattermostGlobalDataRetentionPolicy>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostGlobalDataRetentionPolicy.listFromJson(entry.value, growable: growable,);
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

