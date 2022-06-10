//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class BoardsLimits {
  /// Returns a new [BoardsLimits] instance.
  BoardsLimits({
    this.cards,
    this.views,
  });

  int? cards;

  int? views;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BoardsLimits &&
     other.cards == cards &&
     other.views == views;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cards == null ? 0 : cards!.hashCode) +
    (views == null ? 0 : views!.hashCode);

  @override
  String toString() => 'BoardsLimits[cards=$cards, views=$views]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (cards != null) {
      _json[r'cards'] = cards;
    }
    if (views != null) {
      _json[r'views'] = views;
    }
    return _json;
  }

  /// Returns a new [BoardsLimits] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BoardsLimits? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BoardsLimits[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BoardsLimits[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BoardsLimits(
        cards: mapValueOfType<int>(json, r'cards'),
        views: mapValueOfType<int>(json, r'views'),
      );
    }
    return null;
  }

  static List<BoardsLimits>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BoardsLimits>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BoardsLimits.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BoardsLimits> mapFromJson(dynamic json) {
    final map = <String, BoardsLimits>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BoardsLimits.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BoardsLimits-objects as value to a dart map
  static Map<String, List<BoardsLimits>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BoardsLimits>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BoardsLimits.listFromJson(entry.value, growable: growable,);
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

