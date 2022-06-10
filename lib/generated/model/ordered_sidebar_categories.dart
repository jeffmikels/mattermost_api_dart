//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class OrderedSidebarCategories {
  /// Returns a new [OrderedSidebarCategories] instance.
  OrderedSidebarCategories({
    this.order = const [],
    this.categories = const [],
  });

  List<String> order;

  List<SidebarCategoryWithChannels> categories;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderedSidebarCategories &&
     other.order == order &&
     other.categories == categories;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (order.hashCode) +
    (categories.hashCode);

  @override
  String toString() => 'OrderedSidebarCategories[order=$order, categories=$categories]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'order'] = order;
      _json[r'categories'] = categories;
    return _json;
  }

  /// Returns a new [OrderedSidebarCategories] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderedSidebarCategories? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderedSidebarCategories[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderedSidebarCategories[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderedSidebarCategories(
        order: json[r'order'] is List
            ? (json[r'order'] as List).cast<String>()
            : const [],
        categories: SidebarCategoryWithChannels.listFromJson(json[r'categories']) ?? const [],
      );
    }
    return null;
  }

  static List<OrderedSidebarCategories>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderedSidebarCategories>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderedSidebarCategories.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderedSidebarCategories> mapFromJson(dynamic json) {
    final map = <String, OrderedSidebarCategories>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderedSidebarCategories.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderedSidebarCategories-objects as value to a dart map
  static Map<String, List<OrderedSidebarCategories>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderedSidebarCategories>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderedSidebarCategories.listFromJson(entry.value, growable: growable,);
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

