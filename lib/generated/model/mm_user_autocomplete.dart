//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMUserAutocomplete {
  /// Returns a new [MMUserAutocomplete] instance.
  MMUserAutocomplete({
    this.users = const [],
    this.outOfChannel = const [],
  });

  /// A list of users that are the main result of the query
  List<MMUser> users;

  /// A special case list of users returned when autocompleting in a specific channel. Omitted when empty or not relevant
  List<MMUser> outOfChannel;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMUserAutocomplete && other.users == users && other.outOfChannel == outOfChannel;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (users.hashCode) + (outOfChannel.hashCode);

  @override
  String toString() => 'MMUserAutocomplete[users=$users, outOfChannel=$outOfChannel]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'users'] = users;
    _json[r'out_of_channel'] = outOfChannel;
    return _json;
  }

  /// Returns a new [MMUserAutocomplete] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMUserAutocomplete? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMUserAutocomplete[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMUserAutocomplete[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMUserAutocomplete(
        users: MMUser.listFromJson(json[r'users']) ?? const [],
        outOfChannel: MMUser.listFromJson(json[r'out_of_channel']) ?? const [],
      );
    }
    return null;
  }

  static List<MMUserAutocomplete>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMUserAutocomplete>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMUserAutocomplete.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMUserAutocomplete> mapFromJson(dynamic json) {
    final map = <String, MMUserAutocomplete>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMUserAutocomplete.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMUserAutocomplete-objects as value to a dart map
  static Map<String, List<MMUserAutocomplete>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMUserAutocomplete>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMUserAutocomplete.listFromJson(
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
