//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmOAuthApp {
  /// Returns a new [MmOAuthApp] instance.
  MmOAuthApp({
    this.id,
    this.clientSecret,
    this.name,
    this.description,
    this.iconUrl,
    this.callbackUrls = const [],
    this.homepage,
    this.isTrusted,
    this.createAt,
    this.updateAt,
  });

  /// The client id of the application
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The client secret of the application
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientSecret;

  /// The name of the client application
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// A short description of the application
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

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
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? homepage;

  /// Set this to `true` to skip asking users for permission
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isTrusted;

  /// The time of registration for the application
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createAt;

  /// The last time of update for the application
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updateAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmOAuthApp &&
          other.id == id &&
          other.clientSecret == clientSecret &&
          other.name == name &&
          other.description == description &&
          other.iconUrl == iconUrl &&
          other.callbackUrls == callbackUrls &&
          other.homepage == homepage &&
          other.isTrusted == isTrusted &&
          other.createAt == createAt &&
          other.updateAt == updateAt;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (clientSecret == null ? 0 : clientSecret!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (iconUrl == null ? 0 : iconUrl!.hashCode) +
      (callbackUrls.hashCode) +
      (homepage == null ? 0 : homepage!.hashCode) +
      (isTrusted == null ? 0 : isTrusted!.hashCode) +
      (createAt == null ? 0 : createAt!.hashCode) +
      (updateAt == null ? 0 : updateAt!.hashCode);

  @override
  String toString() =>
      'MmOAuthApp[id=$id, clientSecret=$clientSecret, name=$name, description=$description, iconUrl=$iconUrl, callbackUrls=$callbackUrls, homepage=$homepage, isTrusted=$isTrusted, createAt=$createAt, updateAt=$updateAt]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (clientSecret != null) {
      _json[r'client_secret'] = clientSecret;
    }
    if (name != null) {
      _json[r'name'] = name;
    }
    if (description != null) {
      _json[r'description'] = description;
    }
    if (iconUrl != null) {
      _json[r'icon_url'] = iconUrl;
    }
    _json[r'callback_urls'] = callbackUrls;
    if (homepage != null) {
      _json[r'homepage'] = homepage;
    }
    if (isTrusted != null) {
      _json[r'is_trusted'] = isTrusted;
    }
    if (createAt != null) {
      _json[r'create_at'] = createAt;
    }
    if (updateAt != null) {
      _json[r'update_at'] = updateAt;
    }
    return _json;
  }

  /// Returns a new [MmOAuthApp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmOAuthApp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmOAuthApp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmOAuthApp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmOAuthApp(
        id: mapValueOfType<String>(json, r'id'),
        clientSecret: mapValueOfType<String>(json, r'client_secret'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        iconUrl: mapValueOfType<String>(json, r'icon_url'),
        callbackUrls: json[r'callback_urls'] is List ? (json[r'callback_urls'] as List).cast<String>() : const [],
        homepage: mapValueOfType<String>(json, r'homepage'),
        isTrusted: mapValueOfType<bool>(json, r'is_trusted'),
        createAt: mapValueOfType<int>(json, r'create_at'),
        updateAt: mapValueOfType<int>(json, r'update_at'),
      );
    }
    return null;
  }

  static List<MmOAuthApp>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmOAuthApp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmOAuthApp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmOAuthApp> mapFromJson(dynamic json) {
    final map = <String, MmOAuthApp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmOAuthApp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmOAuthApp-objects as value to a dart map
  static Map<String, List<MmOAuthApp>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmOAuthApp>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmOAuthApp.listFromJson(
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
