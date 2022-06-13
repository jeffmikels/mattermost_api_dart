//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostUserAutocompleteInChannel {
  /// Returns a new [MattermostUserAutocompleteInChannel] instance.
  MattermostUserAutocompleteInChannel({
    this.inChannel = const [],
    this.outOfChannel = const [],
  });

  /// A list of user objects in the channel
  List<MattermostUser> inChannel;

  /// A list of user objects not in the channel
  List<MattermostUser> outOfChannel;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MattermostUserAutocompleteInChannel &&
          other.inChannel == inChannel &&
          other.outOfChannel == outOfChannel;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (inChannel.hashCode) + (outOfChannel.hashCode);

  @override
  String toString() => 'MattermostUserAutocompleteInChannel[inChannel=$inChannel, outOfChannel=$outOfChannel]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'in_channel'] = inChannel;
    _json[r'out_of_channel'] = outOfChannel;
    return _json;
  }

  /// Returns a new [MattermostUserAutocompleteInChannel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostUserAutocompleteInChannel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(
              json.containsKey(key), 'Required key "MattermostUserAutocompleteInChannel[$key]" is missing from JSON.');
          assert(
              json[key] != null, 'Required key "MattermostUserAutocompleteInChannel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostUserAutocompleteInChannel(
        inChannel: MattermostUser.listFromJson(json[r'in_channel']) ?? const [],
        outOfChannel: MattermostUser.listFromJson(json[r'out_of_channel']) ?? const [],
      );
    }
    return null;
  }

  static List<MattermostUserAutocompleteInChannel>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MattermostUserAutocompleteInChannel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostUserAutocompleteInChannel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostUserAutocompleteInChannel> mapFromJson(dynamic json) {
    final map = <String, MattermostUserAutocompleteInChannel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostUserAutocompleteInChannel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostUserAutocompleteInChannel-objects as value to a dart map
  static Map<String, List<MattermostUserAutocompleteInChannel>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MattermostUserAutocompleteInChannel>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostUserAutocompleteInChannel.listFromJson(
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
