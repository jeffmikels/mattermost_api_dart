//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmUpdatePostRequest {
  /// Returns a new [MmUpdatePostRequest] instance.
  MmUpdatePostRequest({
    required this.id,
    this.isPinned,
    this.message,
    this.hasReactions,
    this.props,
  });

  /// ID of the post to update
  String id;

  /// Set to `true` to pin the post to the channel it is in
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPinned;

  /// The message text of the post
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// Set to `true` if the post has reactions to it
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasReactions;

  /// A general JSON property bag to attach to the post
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? props;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmUpdatePostRequest &&
          other.id == id &&
          other.isPinned == isPinned &&
          other.message == message &&
          other.hasReactions == hasReactions &&
          other.props == props;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (isPinned == null ? 0 : isPinned!.hashCode) +
      (message == null ? 0 : message!.hashCode) +
      (hasReactions == null ? 0 : hasReactions!.hashCode) +
      (props == null ? 0 : props!.hashCode);

  @override
  String toString() =>
      'MmUpdatePostRequest[id=$id, isPinned=$isPinned, message=$message, hasReactions=$hasReactions, props=$props]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'id'] = id;
    if (isPinned != null) {
      _json[r'is_pinned'] = isPinned;
    }
    if (message != null) {
      _json[r'message'] = message;
    }
    if (hasReactions != null) {
      _json[r'has_reactions'] = hasReactions;
    }
    if (props != null) {
      _json[r'props'] = props;
    }
    return _json;
  }

  /// Returns a new [MmUpdatePostRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmUpdatePostRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmUpdatePostRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmUpdatePostRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmUpdatePostRequest(
        id: mapValueOfType<String>(json, r'id')!,
        isPinned: mapValueOfType<bool>(json, r'is_pinned'),
        message: mapValueOfType<String>(json, r'message'),
        hasReactions: mapValueOfType<bool>(json, r'has_reactions'),
        props: mapValueOfType<String>(json, r'props'),
      );
    }
    return null;
  }

  static List<MmUpdatePostRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmUpdatePostRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmUpdatePostRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmUpdatePostRequest> mapFromJson(dynamic json) {
    final map = <String, MmUpdatePostRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUpdatePostRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmUpdatePostRequest-objects as value to a dart map
  static Map<String, List<MmUpdatePostRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmUpdatePostRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUpdatePostRequest.listFromJson(
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
    'id',
  };
}
