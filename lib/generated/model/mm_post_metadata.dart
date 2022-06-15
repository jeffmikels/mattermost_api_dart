//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmPostMetadata {
  /// Returns a new [MmPostMetadata] instance.
  MmPostMetadata({
    this.embeds = const [],
    this.emojis = const [],
    this.files = const [],
    this.images = const [],
    this.reactions = const [],
  });

  /// Information about content embedded in the post including OpenGraph previews, image link previews, and message attachments. This field will be null if the post does not contain embedded content.
  List<MmPostMetadataEmbedsInner> embeds;

  /// The custom emojis that appear in this point or have been used in reactions to this post. This field will be null if the post does not contain custom emojis.
  List<MmEmoji> emojis;

  /// The FileInfo objects for any files attached to the post. This field will be null if the post does not have any file attachments.
  List<MmFileInfo> files;

  /// An object mapping the URL of an external image to an object containing the dimensions of that image. This field will be null if the post or its embedded content does not reference any external images.
  List<MmPostMetadataImagesInner> images;

  /// Any reactions made to this point. This field will be null if no reactions have been made to this post.
  List<MmReaction> reactions;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmPostMetadata &&
          other.embeds == embeds &&
          other.emojis == emojis &&
          other.files == files &&
          other.images == images &&
          other.reactions == reactions;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (embeds.hashCode) + (emojis.hashCode) + (files.hashCode) + (images.hashCode) + (reactions.hashCode);

  @override
  String toString() =>
      'MmPostMetadata[embeds=$embeds, emojis=$emojis, files=$files, images=$images, reactions=$reactions]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'embeds'] = embeds;
    _json[r'emojis'] = emojis;
    _json[r'files'] = files;
    _json[r'images'] = images;
    _json[r'reactions'] = reactions;
    return _json;
  }

  /// Returns a new [MmPostMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmPostMetadata? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmPostMetadata[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmPostMetadata[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmPostMetadata(
        embeds: MmPostMetadataEmbedsInner.listFromJson(json[r'embeds']) ?? const [],
        emojis: MmEmoji.listFromJson(json[r'emojis']) ?? const [],
        files: MmFileInfo.listFromJson(json[r'files']) ?? const [],
        images: MmPostMetadataImagesInner.listFromJson(json[r'images']) ?? const [],
        reactions: MmReaction.listFromJson(json[r'reactions']) ?? const [],
      );
    }
    return null;
  }

  static List<MmPostMetadata>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmPostMetadata>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmPostMetadata.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmPostMetadata> mapFromJson(dynamic json) {
    final map = <String, MmPostMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmPostMetadata.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmPostMetadata-objects as value to a dart map
  static Map<String, List<MmPostMetadata>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmPostMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmPostMetadata.listFromJson(
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
