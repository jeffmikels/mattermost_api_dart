//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostSidebarCategoryWithChannels {
  /// Returns a new [MattermostSidebarCategoryWithChannels] instance.
  MattermostSidebarCategoryWithChannels({
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

  MattermostSidebarCategoryWithChannelsTypeEnum? type;

  List<String> channelIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MattermostSidebarCategoryWithChannels &&
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
  String toString() => 'MattermostSidebarCategoryWithChannels[id=$id, userId=$userId, teamId=$teamId, displayName=$displayName, type=$type, channelIds=$channelIds]';

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

  /// Returns a new [MattermostSidebarCategoryWithChannels] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostSidebarCategoryWithChannels? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostSidebarCategoryWithChannels[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostSidebarCategoryWithChannels[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostSidebarCategoryWithChannels(
        id: mapValueOfType<String>(json, r'id'),
        userId: mapValueOfType<String>(json, r'user_id'),
        teamId: mapValueOfType<String>(json, r'team_id'),
        displayName: mapValueOfType<String>(json, r'display_name'),
        type: MattermostSidebarCategoryWithChannelsTypeEnum.fromJson(json[r'type']),
        channelIds: json[r'channel_ids'] is List
            ? (json[r'channel_ids'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<MattermostSidebarCategoryWithChannels>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MattermostSidebarCategoryWithChannels>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostSidebarCategoryWithChannels.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostSidebarCategoryWithChannels> mapFromJson(dynamic json) {
    final map = <String, MattermostSidebarCategoryWithChannels>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostSidebarCategoryWithChannels.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostSidebarCategoryWithChannels-objects as value to a dart map
  static Map<String, List<MattermostSidebarCategoryWithChannels>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MattermostSidebarCategoryWithChannels>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostSidebarCategoryWithChannels.listFromJson(entry.value, growable: growable,);
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


class MattermostSidebarCategoryWithChannelsTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const MattermostSidebarCategoryWithChannelsTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const channels = MattermostSidebarCategoryWithChannelsTypeEnum._(r'channels');
  static const custom = MattermostSidebarCategoryWithChannelsTypeEnum._(r'custom');
  static const directMessages = MattermostSidebarCategoryWithChannelsTypeEnum._(r'direct_messages');
  static const favorites = MattermostSidebarCategoryWithChannelsTypeEnum._(r'favorites');

  /// List of all possible values in this [enum][MattermostSidebarCategoryWithChannelsTypeEnum].
  static const values = <MattermostSidebarCategoryWithChannelsTypeEnum>[
    channels,
    custom,
    directMessages,
    favorites,
  ];

  static MattermostSidebarCategoryWithChannelsTypeEnum? fromJson(dynamic value) => MattermostSidebarCategoryWithChannelsTypeEnumTypeTransformer().decode(value);

  static List<MattermostSidebarCategoryWithChannelsTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MattermostSidebarCategoryWithChannelsTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostSidebarCategoryWithChannelsTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MattermostSidebarCategoryWithChannelsTypeEnum] to String,
/// and [decode] dynamic data back to [MattermostSidebarCategoryWithChannelsTypeEnum].
class MattermostSidebarCategoryWithChannelsTypeEnumTypeTransformer {
  factory MattermostSidebarCategoryWithChannelsTypeEnumTypeTransformer() => _instance ??= const MattermostSidebarCategoryWithChannelsTypeEnumTypeTransformer._();

  const MattermostSidebarCategoryWithChannelsTypeEnumTypeTransformer._();

  String encode(MattermostSidebarCategoryWithChannelsTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MattermostSidebarCategoryWithChannelsTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MattermostSidebarCategoryWithChannelsTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'channels': return MattermostSidebarCategoryWithChannelsTypeEnum.channels;
        case r'custom': return MattermostSidebarCategoryWithChannelsTypeEnum.custom;
        case r'direct_messages': return MattermostSidebarCategoryWithChannelsTypeEnum.directMessages;
        case r'favorites': return MattermostSidebarCategoryWithChannelsTypeEnum.favorites;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MattermostSidebarCategoryWithChannelsTypeEnumTypeTransformer] instance.
  static MattermostSidebarCategoryWithChannelsTypeEnumTypeTransformer? _instance;
}


