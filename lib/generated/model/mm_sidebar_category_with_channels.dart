//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMSidebarCategoryWithChannels {
  /// Returns a new [MMSidebarCategoryWithChannels] instance.
  MMSidebarCategoryWithChannels({
    this.id,
    this.userId,
    this.teamId,
    this.displayName,
    this.type,
    this.channelIds = const [],
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

  MMSidebarCategoryWithChannelsTypeEnum? type;

  List<String> channelIds;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMSidebarCategoryWithChannels &&
          other.id == id &&
          other.userId == userId &&
          other.teamId == teamId &&
          other.displayName == displayName &&
          other.type == type &&
          other.channelIds == channelIds;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (userId == null ? 0 : userId!.hashCode) +
      (teamId == null ? 0 : teamId!.hashCode) +
      (displayName == null ? 0 : displayName!.hashCode) +
      (type == null ? 0 : type!.hashCode) +
      (channelIds.hashCode);

  @override
  String toString() =>
      'MMSidebarCategoryWithChannels[id=$id, userId=$userId, teamId=$teamId, displayName=$displayName, type=$type, channelIds=$channelIds]';

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
    _json[r'channel_ids'] = channelIds;
    return _json;
  }

  /// Returns a new [MMSidebarCategoryWithChannels] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMSidebarCategoryWithChannels? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMSidebarCategoryWithChannels[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMSidebarCategoryWithChannels[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMSidebarCategoryWithChannels(
        id: mapValueOfType<String>(json, r'id'),
        userId: mapValueOfType<String>(json, r'user_id'),
        teamId: mapValueOfType<String>(json, r'team_id'),
        displayName: mapValueOfType<String>(json, r'display_name'),
        type: MMSidebarCategoryWithChannelsTypeEnum.fromJson(json[r'type']),
        channelIds: json[r'channel_ids'] is List ? (json[r'channel_ids'] as List).cast<String>() : const [],
      );
    }
    return null;
  }

  static List<MMSidebarCategoryWithChannels>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMSidebarCategoryWithChannels>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMSidebarCategoryWithChannels.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMSidebarCategoryWithChannels> mapFromJson(dynamic json) {
    final map = <String, MMSidebarCategoryWithChannels>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMSidebarCategoryWithChannels.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMSidebarCategoryWithChannels-objects as value to a dart map
  static Map<String, List<MMSidebarCategoryWithChannels>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMSidebarCategoryWithChannels>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMSidebarCategoryWithChannels.listFromJson(
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

class MMSidebarCategoryWithChannelsTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const MMSidebarCategoryWithChannelsTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const channels = MMSidebarCategoryWithChannelsTypeEnum._(r'channels');
  static const custom = MMSidebarCategoryWithChannelsTypeEnum._(r'custom');
  static const directMessages = MMSidebarCategoryWithChannelsTypeEnum._(r'direct_messages');
  static const favorites = MMSidebarCategoryWithChannelsTypeEnum._(r'favorites');

  /// List of all possible values in this [enum][MMSidebarCategoryWithChannelsTypeEnum].
  static const values = <MMSidebarCategoryWithChannelsTypeEnum>[
    channels,
    custom,
    directMessages,
    favorites,
  ];

  static MMSidebarCategoryWithChannelsTypeEnum? fromJson(dynamic value) =>
      MMSidebarCategoryWithChannelsTypeEnumTypeTransformer().decode(value);

  static List<MMSidebarCategoryWithChannelsTypeEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMSidebarCategoryWithChannelsTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMSidebarCategoryWithChannelsTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MMSidebarCategoryWithChannelsTypeEnum] to String,
/// and [decode] dynamic data back to [MMSidebarCategoryWithChannelsTypeEnum].
class MMSidebarCategoryWithChannelsTypeEnumTypeTransformer {
  factory MMSidebarCategoryWithChannelsTypeEnumTypeTransformer() =>
      _instance ??= const MMSidebarCategoryWithChannelsTypeEnumTypeTransformer._();

  const MMSidebarCategoryWithChannelsTypeEnumTypeTransformer._();

  String encode(MMSidebarCategoryWithChannelsTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MMSidebarCategoryWithChannelsTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MMSidebarCategoryWithChannelsTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'channels':
          return MMSidebarCategoryWithChannelsTypeEnum.channels;
        case r'custom':
          return MMSidebarCategoryWithChannelsTypeEnum.custom;
        case r'direct_messages':
          return MMSidebarCategoryWithChannelsTypeEnum.directMessages;
        case r'favorites':
          return MMSidebarCategoryWithChannelsTypeEnum.favorites;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MMSidebarCategoryWithChannelsTypeEnumTypeTransformer] instance.
  static MMSidebarCategoryWithChannelsTypeEnumTypeTransformer? _instance;
}
