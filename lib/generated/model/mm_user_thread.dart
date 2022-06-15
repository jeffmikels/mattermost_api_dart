//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMUserThread {
  /// Returns a new [MMUserThread] instance.
  MMUserThread({
    this.id,
    this.replyCount,
    this.lastReplyAt,
    this.lastViewedAt,
    this.participants = const [],
    this.post,
  });

  /// ID of the post that is this thread's root
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// number of replies in this thread
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? replyCount;

  /// timestamp of the last post to this thread
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastReplyAt;

  /// timestamp of the last time the user viewed this thread
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastViewedAt;

  /// list of users participating in this thread. only includes IDs unless 'extended' was set to 'true'
  List<MMPost> participants;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MMPost? post;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMUserThread &&
          other.id == id &&
          other.replyCount == replyCount &&
          other.lastReplyAt == lastReplyAt &&
          other.lastViewedAt == lastViewedAt &&
          other.participants == participants &&
          other.post == post;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (replyCount == null ? 0 : replyCount!.hashCode) +
      (lastReplyAt == null ? 0 : lastReplyAt!.hashCode) +
      (lastViewedAt == null ? 0 : lastViewedAt!.hashCode) +
      (participants.hashCode) +
      (post == null ? 0 : post!.hashCode);

  @override
  String toString() =>
      'MMUserThread[id=$id, replyCount=$replyCount, lastReplyAt=$lastReplyAt, lastViewedAt=$lastViewedAt, participants=$participants, post=$post]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (replyCount != null) {
      _json[r'reply_count'] = replyCount;
    }
    if (lastReplyAt != null) {
      _json[r'last_reply_at'] = lastReplyAt;
    }
    if (lastViewedAt != null) {
      _json[r'last_viewed_at'] = lastViewedAt;
    }
    _json[r'participants'] = participants;
    if (post != null) {
      _json[r'post'] = post;
    }
    return _json;
  }

  /// Returns a new [MMUserThread] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMUserThread? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMUserThread[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMUserThread[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMUserThread(
        id: mapValueOfType<String>(json, r'id'),
        replyCount: mapValueOfType<int>(json, r'reply_count'),
        lastReplyAt: mapValueOfType<int>(json, r'last_reply_at'),
        lastViewedAt: mapValueOfType<int>(json, r'last_viewed_at'),
        participants: MMPost.listFromJson(json[r'participants']) ?? const [],
        post: MMPost.fromJson(json[r'post']),
      );
    }
    return null;
  }

  static List<MMUserThread>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMUserThread>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMUserThread.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMUserThread> mapFromJson(dynamic json) {
    final map = <String, MMUserThread>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMUserThread.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMUserThread-objects as value to a dart map
  static Map<String, List<MMUserThread>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMUserThread>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMUserThread.listFromJson(
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
