//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class SidebarCategory {
  /// Returns a new [SidebarCategory] instance.
  SidebarCategory({
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

  SidebarCategoryTypeEnum? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SidebarCategory &&
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
  String toString() => 'SidebarCategory[id=$id, userId=$userId, teamId=$teamId, displayName=$displayName, type=$type]';

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

  /// Returns a new [SidebarCategory] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SidebarCategory? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SidebarCategory[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SidebarCategory[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SidebarCategory(
        id: mapValueOfType<String>(json, r'id'),
        userId: mapValueOfType<String>(json, r'user_id'),
        teamId: mapValueOfType<String>(json, r'team_id'),
        displayName: mapValueOfType<String>(json, r'display_name'),
        type: SidebarCategoryTypeEnum.fromJson(json[r'type']),
      );
    }
    return null;
  }

  static List<SidebarCategory>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SidebarCategory>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SidebarCategory.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SidebarCategory> mapFromJson(dynamic json) {
    final map = <String, SidebarCategory>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SidebarCategory.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SidebarCategory-objects as value to a dart map
  static Map<String, List<SidebarCategory>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SidebarCategory>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SidebarCategory.listFromJson(entry.value, growable: growable,);
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


class SidebarCategoryTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const SidebarCategoryTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const channels = SidebarCategoryTypeEnum._(r'channels');
  static const custom = SidebarCategoryTypeEnum._(r'custom');
  static const directMessages = SidebarCategoryTypeEnum._(r'direct_messages');
  static const favorites = SidebarCategoryTypeEnum._(r'favorites');

  /// List of all possible values in this [enum][SidebarCategoryTypeEnum].
  static const values = <SidebarCategoryTypeEnum>[
    channels,
    custom,
    directMessages,
    favorites,
  ];

  static SidebarCategoryTypeEnum? fromJson(dynamic value) => SidebarCategoryTypeEnumTypeTransformer().decode(value);

  static List<SidebarCategoryTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SidebarCategoryTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SidebarCategoryTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SidebarCategoryTypeEnum] to String,
/// and [decode] dynamic data back to [SidebarCategoryTypeEnum].
class SidebarCategoryTypeEnumTypeTransformer {
  factory SidebarCategoryTypeEnumTypeTransformer() => _instance ??= const SidebarCategoryTypeEnumTypeTransformer._();

  const SidebarCategoryTypeEnumTypeTransformer._();

  String encode(SidebarCategoryTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SidebarCategoryTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SidebarCategoryTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'channels': return SidebarCategoryTypeEnum.channels;
        case r'custom': return SidebarCategoryTypeEnum.custom;
        case r'direct_messages': return SidebarCategoryTypeEnum.directMessages;
        case r'favorites': return SidebarCategoryTypeEnum.favorites;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SidebarCategoryTypeEnumTypeTransformer] instance.
  static SidebarCategoryTypeEnumTypeTransformer? _instance;
}


