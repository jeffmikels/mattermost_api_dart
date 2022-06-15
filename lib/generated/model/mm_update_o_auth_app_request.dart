//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmUpdateOAuthAppRequest {
  /// Returns a new [MmUpdateOAuthAppRequest] instance.
  MmUpdateOAuthAppRequest({
    required this.id,
    required this.name,
    required this.description,
    this.iconUrl,
    this.callbackUrls = const [],
    required this.homepage,
    this.isTrusted,
  });

  /// The id of the client application
  String id;

  /// The name of the client application
  String name;

  /// A short description of the application
  String description;

  /// A URL to an icon to display with the application
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iconUrl;

  /// A list of callback URLs for the appliation
  List<String> callbackUrls;

  /// A link to the website of the application
  String homepage;

  /// Set this to `true` to skip asking users for permission. It will be set to false if value is not provided.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isTrusted;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmUpdateOAuthAppRequest &&
          other.id == id &&
          other.name == name &&
          other.description == description &&
          other.iconUrl == iconUrl &&
          other.callbackUrls == callbackUrls &&
          other.homepage == homepage &&
          other.isTrusted == isTrusted;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (name.hashCode) +
      (description.hashCode) +
      (iconUrl == null ? 0 : iconUrl!.hashCode) +
      (callbackUrls.hashCode) +
      (homepage.hashCode) +
      (isTrusted == null ? 0 : isTrusted!.hashCode);

  @override
  String toString() =>
      'MmUpdateOAuthAppRequest[id=$id, name=$name, description=$description, iconUrl=$iconUrl, callbackUrls=$callbackUrls, homepage=$homepage, isTrusted=$isTrusted]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'id'] = id;
    _json[r'name'] = name;
    _json[r'description'] = description;
    if (iconUrl != null) {
      _json[r'icon_url'] = iconUrl;
    }
    _json[r'callback_urls'] = callbackUrls;
    _json[r'homepage'] = homepage;
    if (isTrusted != null) {
      _json[r'is_trusted'] = isTrusted;
    }
    return _json;
  }

  /// Returns a new [MmUpdateOAuthAppRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmUpdateOAuthAppRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmUpdateOAuthAppRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmUpdateOAuthAppRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmUpdateOAuthAppRequest(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description')!,
        iconUrl: mapValueOfType<String>(json, r'icon_url'),
        callbackUrls: json[r'callback_urls'] is List ? (json[r'callback_urls'] as List).cast<String>() : const [],
        homepage: mapValueOfType<String>(json, r'homepage')!,
        isTrusted: mapValueOfType<bool>(json, r'is_trusted'),
      );
    }
    return null;
  }

  static List<MmUpdateOAuthAppRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmUpdateOAuthAppRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmUpdateOAuthAppRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmUpdateOAuthAppRequest> mapFromJson(dynamic json) {
    final map = <String, MmUpdateOAuthAppRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUpdateOAuthAppRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmUpdateOAuthAppRequest-objects as value to a dart map
  static Map<String, List<MmUpdateOAuthAppRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmUpdateOAuthAppRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUpdateOAuthAppRequest.listFromJson(
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
  static const requiredKeys = <String>{
    'id',
    'name',
    'description',
    'callback_urls',
    'homepage',
  };
}
