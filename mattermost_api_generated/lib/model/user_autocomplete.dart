//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class UserAutocomplete {
  /// Returns a new [UserAutocomplete] instance.
  UserAutocomplete({
    this.users = const [],
    this.outOfChannel = const [],
  });

  /// A list of users that are the main result of the query
  List<User> users;

  /// A special case list of users returned when autocompleting in a specific channel. Omitted when empty or not relevant
  List<User> outOfChannel;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserAutocomplete &&
     other.users == users &&
     other.outOfChannel == outOfChannel;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (users.hashCode) +
    (outOfChannel.hashCode);

  @override
  String toString() => 'UserAutocomplete[users=$users, outOfChannel=$outOfChannel]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'users'] = users;
      _json[r'out_of_channel'] = outOfChannel;
    return _json;
  }

  /// Returns a new [UserAutocomplete] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserAutocomplete? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserAutocomplete[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserAutocomplete[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserAutocomplete(
        users: User.listFromJson(json[r'users']) ?? const [],
        outOfChannel: User.listFromJson(json[r'out_of_channel']) ?? const [],
      );
    }
    return null;
  }

  static List<UserAutocomplete>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserAutocomplete>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserAutocomplete.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserAutocomplete> mapFromJson(dynamic json) {
    final map = <String, UserAutocomplete>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserAutocomplete.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserAutocomplete-objects as value to a dart map
  static Map<String, List<UserAutocomplete>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserAutocomplete>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserAutocomplete.listFromJson(entry.value, growable: growable,);
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

