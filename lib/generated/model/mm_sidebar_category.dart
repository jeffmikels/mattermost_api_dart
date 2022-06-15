//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMSidebarCategory {
  /// Returns a new [MMSidebarCategory] instance.
  MMSidebarCategory({
    this.id,
    this.userId,
    this.teamId,
    this.displayName,
    this.type,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? teamId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  MMSidebarCategoryTypeEnum? type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMSidebarCategory &&
          other.id == id &&
          other.userId == userId &&
          other.teamId == teamId &&
          other.displayName == displayName &&
          other.type == type;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (userId == null ? 0 : userId!.hashCode) +
      (teamId == null ? 0 : teamId!.hashCode) +
      (displayName == null ? 0 : displayName!.hashCode) +
      (type == null ? 0 : type!.hashCode);

  @override
  String toString() =>
      'MMSidebarCategory[id=$id, userId=$userId, teamId=$teamId, displayName=$displayName, type=$type]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (userId != null) {
      _json[r'user_id'] = userId;
    }
    if (teamId != null) {
      _json[r'team_id'] = teamId;
    }
    if (displayName != null) {
      _json[r'display_name'] = displayName;
    }
    if (type != null) {
      _json[r'type'] = type;
    }
    return _json;
  }

  /// Returns a new [MMSidebarCategory] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMSidebarCategory? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMSidebarCategory[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMSidebarCategory[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMSidebarCategory(
        id: mapValueOfType<String>(json, r'id'),
        userId: mapValueOfType<String>(json, r'user_id'),
        teamId: mapValueOfType<String>(json, r'team_id'),
        displayName: mapValueOfType<String>(json, r'display_name'),
        type: MMSidebarCategoryTypeEnum.fromJson(json[r'type']),
      );
    }
    return null;
  }

  static List<MMSidebarCategory>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMSidebarCategory>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMSidebarCategory.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMSidebarCategory> mapFromJson(dynamic json) {
    final map = <String, MMSidebarCategory>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMSidebarCategory.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMSidebarCategory-objects as value to a dart map
  static Map<String, List<MMSidebarCategory>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMSidebarCategory>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMSidebarCategory.listFromJson(
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

class MMSidebarCategoryTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const MMSidebarCategoryTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const channels = MMSidebarCategoryTypeEnum._(r'channels');
  static const custom = MMSidebarCategoryTypeEnum._(r'custom');
  static const directMessages = MMSidebarCategoryTypeEnum._(r'direct_messages');
  static const favorites = MMSidebarCategoryTypeEnum._(r'favorites');

  /// List of all possible values in this [enum][MMSidebarCategoryTypeEnum].
  static const values = <MMSidebarCategoryTypeEnum>[
    channels,
    custom,
    directMessages,
    favorites,
  ];

  static MMSidebarCategoryTypeEnum? fromJson(dynamic value) => MMSidebarCategoryTypeEnumTypeTransformer().decode(value);

  static List<MMSidebarCategoryTypeEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMSidebarCategoryTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMSidebarCategoryTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MMSidebarCategoryTypeEnum] to String,
/// and [decode] dynamic data back to [MMSidebarCategoryTypeEnum].
class MMSidebarCategoryTypeEnumTypeTransformer {
  factory MMSidebarCategoryTypeEnumTypeTransformer() =>
      _instance ??= const MMSidebarCategoryTypeEnumTypeTransformer._();

  const MMSidebarCategoryTypeEnumTypeTransformer._();

  String encode(MMSidebarCategoryTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MMSidebarCategoryTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MMSidebarCategoryTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'channels':
          return MMSidebarCategoryTypeEnum.channels;
        case r'custom':
          return MMSidebarCategoryTypeEnum.custom;
        case r'direct_messages':
          return MMSidebarCategoryTypeEnum.directMessages;
        case r'favorites':
          return MMSidebarCategoryTypeEnum.favorites;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MMSidebarCategoryTypeEnumTypeTransformer] instance.
  static MMSidebarCategoryTypeEnumTypeTransformer? _instance;
}
