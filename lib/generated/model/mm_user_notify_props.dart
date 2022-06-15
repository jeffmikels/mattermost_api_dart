//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmUserNotifyProps {
  /// Returns a new [MmUserNotifyProps] instance.
  MmUserNotifyProps({
    this.email,
    this.push,
    this.desktop,
    this.desktopSound,
    this.mentionKeys,
    this.channel,
    this.firstName,
  });

  /// Set to \"true\" to enable email notifications, \"false\" to disable. Defaults to \"true\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? email;

  /// Set to \"all\" to receive push notifications for all activity, \"mention\" for mentions and direct messages only, and \"none\" to disable. Defaults to \"mention\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? push;

  /// Set to \"all\" to receive desktop notifications for all activity, \"mention\" for mentions and direct messages only, and \"none\" to disable. Defaults to \"all\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? desktop;

  /// Set to \"true\" to enable sound on desktop notifications, \"false\" to disable. Defaults to \"true\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? desktopSound;

  /// A comma-separated list of words to count as mentions. Defaults to username and @username.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mentionKeys;

  /// Set to \"true\" to enable channel-wide notifications (@channel, @all, etc.), \"false\" to disable. Defaults to \"true\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? channel;

  /// Set to \"true\" to enable mentions for first name. Defaults to \"true\" if a first name is set, \"false\" otherwise.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? firstName;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmUserNotifyProps &&
          other.email == email &&
          other.push == push &&
          other.desktop == desktop &&
          other.desktopSound == desktopSound &&
          other.mentionKeys == mentionKeys &&
          other.channel == channel &&
          other.firstName == firstName;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (email == null ? 0 : email!.hashCode) +
      (push == null ? 0 : push!.hashCode) +
      (desktop == null ? 0 : desktop!.hashCode) +
      (desktopSound == null ? 0 : desktopSound!.hashCode) +
      (mentionKeys == null ? 0 : mentionKeys!.hashCode) +
      (channel == null ? 0 : channel!.hashCode) +
      (firstName == null ? 0 : firstName!.hashCode);

  @override
  String toString() =>
      'MmUserNotifyProps[email=$email, push=$push, desktop=$desktop, desktopSound=$desktopSound, mentionKeys=$mentionKeys, channel=$channel, firstName=$firstName]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (email != null) {
      _json[r'email'] = email;
    }
    if (push != null) {
      _json[r'push'] = push;
    }
    if (desktop != null) {
      _json[r'desktop'] = desktop;
    }
    if (desktopSound != null) {
      _json[r'desktop_sound'] = desktopSound;
    }
    if (mentionKeys != null) {
      _json[r'mention_keys'] = mentionKeys;
    }
    if (channel != null) {
      _json[r'channel'] = channel;
    }
    if (firstName != null) {
      _json[r'first_name'] = firstName;
    }
    return _json;
  }

  /// Returns a new [MmUserNotifyProps] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmUserNotifyProps? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmUserNotifyProps[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmUserNotifyProps[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmUserNotifyProps(
        email: mapValueOfType<bool>(json, r'email'),
        push: mapValueOfType<String>(json, r'push'),
        desktop: mapValueOfType<String>(json, r'desktop'),
        desktopSound: mapValueOfType<bool>(json, r'desktop_sound'),
        mentionKeys: mapValueOfType<String>(json, r'mention_keys'),
        channel: mapValueOfType<bool>(json, r'channel'),
        firstName: mapValueOfType<bool>(json, r'first_name'),
      );
    }
    return null;
  }

  static List<MmUserNotifyProps>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmUserNotifyProps>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmUserNotifyProps.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmUserNotifyProps> mapFromJson(dynamic json) {
    final map = <String, MmUserNotifyProps>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUserNotifyProps.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmUserNotifyProps-objects as value to a dart map
  static Map<String, List<MmUserNotifyProps>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmUserNotifyProps>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUserNotifyProps.listFromJson(
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
