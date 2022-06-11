//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostPostMetadataEmbedsInner {
  /// Returns a new [MattermostPostMetadataEmbedsInner] instance.
  MattermostPostMetadataEmbedsInner({
    this.type,
    this.url,
    this.data,
  });

  /// The type of content that is embedded in this point.
  MattermostPostMetadataEmbedsInnerTypeEnum? type;

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
  bool operator ==(Object other) => identical(this, other) || other is MattermostPostMetadataEmbedsInner &&
     other.type == type &&
     other.url == url &&
     other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (data == null ? 0 : data!.hashCode);

  @override
  String toString() => 'MattermostPostMetadataEmbedsInner[type=$type, url=$url, data=$data]';

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

  /// Returns a new [MattermostPostMetadataEmbedsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostPostMetadataEmbedsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostPostMetadataEmbedsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostPostMetadataEmbedsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostPostMetadataEmbedsInner(
        type: MattermostPostMetadataEmbedsInnerTypeEnum.fromJson(json[r'type']),
        url: mapValueOfType<String>(json, r'url'),
        data: mapValueOfType<Map>(json, r'data'),
      );
    }
    return null;
  }

  static List<MattermostPostMetadataEmbedsInner>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MattermostPostMetadataEmbedsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostPostMetadataEmbedsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostPostMetadataEmbedsInner> mapFromJson(dynamic json) {
    final map = <String, MattermostPostMetadataEmbedsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostPostMetadataEmbedsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostPostMetadataEmbedsInner-objects as value to a dart map
  static Map<String, List<MattermostPostMetadataEmbedsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MattermostPostMetadataEmbedsInner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostPostMetadataEmbedsInner.listFromJson(entry.value, growable: growable,);
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

/// The type of content that is embedded in this point.
class MattermostPostMetadataEmbedsInnerTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const MattermostPostMetadataEmbedsInnerTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const image = MattermostPostMetadataEmbedsInnerTypeEnum._(r'image');
  static const messageAttachment = MattermostPostMetadataEmbedsInnerTypeEnum._(r'message_attachment');
  static const opengraph = MattermostPostMetadataEmbedsInnerTypeEnum._(r'opengraph');
  static const link = MattermostPostMetadataEmbedsInnerTypeEnum._(r'link');

  /// List of all possible values in this [enum][MattermostPostMetadataEmbedsInnerTypeEnum].
  static const values = <MattermostPostMetadataEmbedsInnerTypeEnum>[
    image,
    messageAttachment,
    opengraph,
    link,
  ];

  static MattermostPostMetadataEmbedsInnerTypeEnum? fromJson(dynamic value) => MattermostPostMetadataEmbedsInnerTypeEnumTypeTransformer().decode(value);

  static List<MattermostPostMetadataEmbedsInnerTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MattermostPostMetadataEmbedsInnerTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostPostMetadataEmbedsInnerTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MattermostPostMetadataEmbedsInnerTypeEnum] to String,
/// and [decode] dynamic data back to [MattermostPostMetadataEmbedsInnerTypeEnum].
class MattermostPostMetadataEmbedsInnerTypeEnumTypeTransformer {
  factory MattermostPostMetadataEmbedsInnerTypeEnumTypeTransformer() => _instance ??= const MattermostPostMetadataEmbedsInnerTypeEnumTypeTransformer._();

  const MattermostPostMetadataEmbedsInnerTypeEnumTypeTransformer._();

  String encode(MattermostPostMetadataEmbedsInnerTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MattermostPostMetadataEmbedsInnerTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MattermostPostMetadataEmbedsInnerTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'image': return MattermostPostMetadataEmbedsInnerTypeEnum.image;
        case r'message_attachment': return MattermostPostMetadataEmbedsInnerTypeEnum.messageAttachment;
        case r'opengraph': return MattermostPostMetadataEmbedsInnerTypeEnum.opengraph;
        case r'link': return MattermostPostMetadataEmbedsInnerTypeEnum.link;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MattermostPostMetadataEmbedsInnerTypeEnumTypeTransformer] instance.
  static MattermostPostMetadataEmbedsInnerTypeEnumTypeTransformer? _instance;
}


