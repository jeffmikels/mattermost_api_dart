//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class UserAccessToken {
  /// Returns a new [UserAccessToken] instance.
  UserAccessToken({
    this.id,
    this.token,
    this.userId,
    this.description,
  });

  /// Unique identifier for the token
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The token used for authentication
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  /// The user the token authenticates for
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  /// A description of the token usage
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserAccessToken &&
     other.id == id &&
     other.token == token &&
     other.userId == userId &&
     other.description == description;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (token == null ? 0 : token!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (description == null ? 0 : description!.hashCode);

  @override
  String toString() => 'UserAccessToken[id=$id, token=$token, userId=$userId, description=$description]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (token != null) {
      _json[r'token'] = token;
    }
    if (userId != null) {
      _json[r'user_id'] = userId;
    }
    if (description != null) {
      _json[r'description'] = description;
    }
    return _json;
  }

  /// Returns a new [UserAccessToken] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserAccessToken? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserAccessToken[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserAccessToken[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserAccessToken(
        id: mapValueOfType<String>(json, r'id'),
        token: mapValueOfType<String>(json, r'token'),
        userId: mapValueOfType<String>(json, r'user_id'),
        description: mapValueOfType<String>(json, r'description'),
      );
    }
    return null;
  }

  static List<UserAccessToken>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserAccessToken>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserAccessToken.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserAccessToken> mapFromJson(dynamic json) {
    final map = <String, UserAccessToken>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserAccessToken.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserAccessToken-objects as value to a dart map
  static Map<String, List<UserAccessToken>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserAccessToken>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserAccessToken.listFromJson(entry.value, growable: growable,);
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

