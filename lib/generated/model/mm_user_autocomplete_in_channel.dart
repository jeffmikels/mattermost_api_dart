//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMUserAutocompleteInChannel {
  /// Returns a new [MMUserAutocompleteInChannel] instance.
  MMUserAutocompleteInChannel({
    this.inChannel = const [],
    this.outOfChannel = const [],
  });

  /// A list of user objects in the channel
  List<MMUser> inChannel;

  /// A list of user objects not in the channel
  List<MMUser> outOfChannel;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMUserAutocompleteInChannel && other.inChannel == inChannel && other.outOfChannel == outOfChannel;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (inChannel.hashCode) + (outOfChannel.hashCode);

  @override
  String toString() => 'MMUserAutocompleteInChannel[inChannel=$inChannel, outOfChannel=$outOfChannel]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'in_channel'] = inChannel;
    _json[r'out_of_channel'] = outOfChannel;
    return _json;
  }

  /// Returns a new [MMUserAutocompleteInChannel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMUserAutocompleteInChannel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMUserAutocompleteInChannel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMUserAutocompleteInChannel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMUserAutocompleteInChannel(
        inChannel: MMUser.listFromJson(json[r'in_channel']) ?? const [],
        outOfChannel: MMUser.listFromJson(json[r'out_of_channel']) ?? const [],
      );
    }
    return null;
  }

  static List<MMUserAutocompleteInChannel>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMUserAutocompleteInChannel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMUserAutocompleteInChannel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMUserAutocompleteInChannel> mapFromJson(dynamic json) {
    final map = <String, MMUserAutocompleteInChannel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMUserAutocompleteInChannel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMUserAutocompleteInChannel-objects as value to a dart map
  static Map<String, List<MMUserAutocompleteInChannel>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMUserAutocompleteInChannel>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMUserAutocompleteInChannel.listFromJson(
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
