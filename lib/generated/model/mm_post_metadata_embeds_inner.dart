//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmPostMetadataEmbedsInner {
  /// Returns a new [MmPostMetadataEmbedsInner] instance.
  MmPostMetadataEmbedsInner({
    this.type,
    this.url,
    this.data,
  });

  /// The type of content that is embedded in this point.
  MmPostMetadataEmbedsInnerTypeEnum? type;

  /// The URL of the embedded content, if one exists.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  /// Any additional information about the embedded content. Only used at this time to store OpenGraph metadata. This field will be null for non-OpenGraph embeds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Map? data;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmPostMetadataEmbedsInner && other.type == type && other.url == url && other.data == data;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (type == null ? 0 : type!.hashCode) + (url == null ? 0 : url!.hashCode) + (data == null ? 0 : data!.hashCode);

  @override
  String toString() => 'MmPostMetadataEmbedsInner[type=$type, url=$url, data=$data]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (type != null) {
      _json[r'type'] = type;
    }
    if (url != null) {
      _json[r'url'] = url;
    }
    if (data != null) {
      _json[r'data'] = data;
    }
    return _json;
  }

  /// Returns a new [MmPostMetadataEmbedsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmPostMetadataEmbedsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmPostMetadataEmbedsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmPostMetadataEmbedsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmPostMetadataEmbedsInner(
        type: MmPostMetadataEmbedsInnerTypeEnum.fromJson(json[r'type']),
        url: mapValueOfType<String>(json, r'url'),
        data: mapValueOfType<Map>(json, r'data'),
      );
    }
    return null;
  }

  static List<MmPostMetadataEmbedsInner>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmPostMetadataEmbedsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmPostMetadataEmbedsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmPostMetadataEmbedsInner> mapFromJson(dynamic json) {
    final map = <String, MmPostMetadataEmbedsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmPostMetadataEmbedsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmPostMetadataEmbedsInner-objects as value to a dart map
  static Map<String, List<MmPostMetadataEmbedsInner>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmPostMetadataEmbedsInner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmPostMetadataEmbedsInner.listFromJson(
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

/// The type of content that is embedded in this point.
class MmPostMetadataEmbedsInnerTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const MmPostMetadataEmbedsInnerTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const image = MmPostMetadataEmbedsInnerTypeEnum._(r'image');
  static const messageAttachment = MmPostMetadataEmbedsInnerTypeEnum._(r'message_attachment');
  static const opengraph = MmPostMetadataEmbedsInnerTypeEnum._(r'opengraph');
  static const link = MmPostMetadataEmbedsInnerTypeEnum._(r'link');

  /// List of all possible values in this [enum][MmPostMetadataEmbedsInnerTypeEnum].
  static const values = <MmPostMetadataEmbedsInnerTypeEnum>[
    image,
    messageAttachment,
    opengraph,
    link,
  ];

  static MmPostMetadataEmbedsInnerTypeEnum? fromJson(dynamic value) =>
      MmPostMetadataEmbedsInnerTypeEnumTypeTransformer().decode(value);

  static List<MmPostMetadataEmbedsInnerTypeEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmPostMetadataEmbedsInnerTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmPostMetadataEmbedsInnerTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MmPostMetadataEmbedsInnerTypeEnum] to String,
/// and [decode] dynamic data back to [MmPostMetadataEmbedsInnerTypeEnum].
class MmPostMetadataEmbedsInnerTypeEnumTypeTransformer {
  factory MmPostMetadataEmbedsInnerTypeEnumTypeTransformer() =>
      _instance ??= const MmPostMetadataEmbedsInnerTypeEnumTypeTransformer._();

  const MmPostMetadataEmbedsInnerTypeEnumTypeTransformer._();

  String encode(MmPostMetadataEmbedsInnerTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MmPostMetadataEmbedsInnerTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MmPostMetadataEmbedsInnerTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'image':
          return MmPostMetadataEmbedsInnerTypeEnum.image;
        case r'message_attachment':
          return MmPostMetadataEmbedsInnerTypeEnum.messageAttachment;
        case r'opengraph':
          return MmPostMetadataEmbedsInnerTypeEnum.opengraph;
        case r'link':
          return MmPostMetadataEmbedsInnerTypeEnum.link;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MmPostMetadataEmbedsInnerTypeEnumTypeTransformer] instance.
  static MmPostMetadataEmbedsInnerTypeEnumTypeTransformer? _instance;
}
