//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmSubscriptionStats {
  /// Returns a new [MmSubscriptionStats] instance.
  MmSubscriptionStats({
    this.remainingSeats,
    this.isPaidTier,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? remainingSeats;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? isPaidTier;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmSubscriptionStats && other.remainingSeats == remainingSeats && other.isPaidTier == isPaidTier;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (remainingSeats == null ? 0 : remainingSeats!.hashCode) + (isPaidTier == null ? 0 : isPaidTier!.hashCode);

  @override
  String toString() => 'MmSubscriptionStats[remainingSeats=$remainingSeats, isPaidTier=$isPaidTier]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (remainingSeats != null) {
      _json[r'remaining_seats'] = remainingSeats;
    }
    if (isPaidTier != null) {
      _json[r'is_paid_tier'] = isPaidTier;
    }
    return _json;
  }

  /// Returns a new [MmSubscriptionStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmSubscriptionStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmSubscriptionStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmSubscriptionStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmSubscriptionStats(
        remainingSeats: mapValueOfType<int>(json, r'remaining_seats'),
        isPaidTier: mapValueOfType<String>(json, r'is_paid_tier'),
      );
    }
    return null;
  }

  static List<MmSubscriptionStats>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmSubscriptionStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmSubscriptionStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmSubscriptionStats> mapFromJson(dynamic json) {
    final map = <String, MmSubscriptionStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSubscriptionStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmSubscriptionStats-objects as value to a dart map
  static Map<String, List<MmSubscriptionStats>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmSubscriptionStats>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSubscriptionStats.listFromJson(
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
