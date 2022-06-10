//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class TeamUnread {
  /// Returns a new [TeamUnread] instance.
  TeamUnread({
    this.teamId,
    this.msgCount,
    this.mentionCount,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? teamId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? msgCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mentionCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TeamUnread &&
     other.teamId == teamId &&
     other.msgCount == msgCount &&
     other.mentionCount == mentionCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (teamId == null ? 0 : teamId!.hashCode) +
    (msgCount == null ? 0 : msgCount!.hashCode) +
    (mentionCount == null ? 0 : mentionCount!.hashCode);

  @override
  String toString() => 'TeamUnread[teamId=$teamId, msgCount=$msgCount, mentionCount=$mentionCount]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (teamId != null) {
      _json[r'team_id'] = teamId;
    }
    if (msgCount != null) {
      _json[r'msg_count'] = msgCount;
    }
    if (mentionCount != null) {
      _json[r'mention_count'] = mentionCount;
    }
    return _json;
  }

  /// Returns a new [TeamUnread] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TeamUnread? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TeamUnread[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TeamUnread[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TeamUnread(
        teamId: mapValueOfType<String>(json, r'team_id'),
        msgCount: mapValueOfType<int>(json, r'msg_count'),
        mentionCount: mapValueOfType<int>(json, r'mention_count'),
      );
    }
    return null;
  }

  static List<TeamUnread>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TeamUnread>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TeamUnread.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TeamUnread> mapFromJson(dynamic json) {
    final map = <String, TeamUnread>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TeamUnread.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TeamUnread-objects as value to a dart map
  static Map<String, List<TeamUnread>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TeamUnread>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TeamUnread.listFromJson(entry.value, growable: growable,);
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

