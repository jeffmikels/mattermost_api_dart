//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmOrderedSidebarCategories {
  /// Returns a new [MmOrderedSidebarCategories] instance.
  MmOrderedSidebarCategories({
    this.order = const [],
    this.categories = const [],
  });

  List<String> order;

  List<MmSidebarCategoryWithChannels> categories;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmOrderedSidebarCategories && other.order == order && other.categories == categories;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (order.hashCode) + (categories.hashCode);

  @override
  String toString() => 'MmOrderedSidebarCategories[order=$order, categories=$categories]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'order'] = order;
    _json[r'categories'] = categories;
    return _json;
  }

  /// Returns a new [MmOrderedSidebarCategories] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmOrderedSidebarCategories? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmOrderedSidebarCategories[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmOrderedSidebarCategories[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmOrderedSidebarCategories(
        order: json[r'order'] is List ? (json[r'order'] as List).cast<String>() : const [],
        categories: MmSidebarCategoryWithChannels.listFromJson(json[r'categories']) ?? const [],
      );
    }
    return null;
  }

  static List<MmOrderedSidebarCategories>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmOrderedSidebarCategories>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmOrderedSidebarCategories.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmOrderedSidebarCategories> mapFromJson(dynamic json) {
    final map = <String, MmOrderedSidebarCategories>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmOrderedSidebarCategories.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmOrderedSidebarCategories-objects as value to a dart map
  static Map<String, List<MmOrderedSidebarCategories>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmOrderedSidebarCategories>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmOrderedSidebarCategories.listFromJson(
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
