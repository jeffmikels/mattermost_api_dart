//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class UserAutocompleteInChannel {
  /// Returns a new [UserAutocompleteInChannel] instance.
  UserAutocompleteInChannel({
    this.inChannel = const [],
    this.outOfChannel = const [],
  });

  /// A list of user objects in the channel
  List<User> inChannel;

  /// A list of user objects not in the channel
  List<User> outOfChannel;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserAutocompleteInChannel &&
     other.inChannel == inChannel &&
     other.outOfChannel == outOfChannel;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (inChannel.hashCode) +
    (outOfChannel.hashCode);

  @override
  String toString() => 'UserAutocompleteInChannel[inChannel=$inChannel, outOfChannel=$outOfChannel]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'in_channel'] = inChannel;
      _json[r'out_of_channel'] = outOfChannel;
    return _json;
  }

  /// Returns a new [UserAutocompleteInChannel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserAutocompleteInChannel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserAutocompleteInChannel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserAutocompleteInChannel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserAutocompleteInChannel(
        inChannel: User.listFromJson(json[r'in_channel']) ?? const [],
        outOfChannel: User.listFromJson(json[r'out_of_channel']) ?? const [],
      );
    }
    return null;
  }

  static List<UserAutocompleteInChannel>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserAutocompleteInChannel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserAutocompleteInChannel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserAutocompleteInChannel> mapFromJson(dynamic json) {
    final map = <String, UserAutocompleteInChannel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserAutocompleteInChannel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserAutocompleteInChannel-objects as value to a dart map
  static Map<String, List<UserAutocompleteInChannel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserAutocompleteInChannel>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserAutocompleteInChannel.listFromJson(entry.value, growable: growable,);
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

