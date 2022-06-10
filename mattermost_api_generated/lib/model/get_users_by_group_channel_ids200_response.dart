//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class GetUsersByGroupChannelIds200Response {
  /// Returns a new [GetUsersByGroupChannelIds200Response] instance.
  GetUsersByGroupChannelIds200Response({
    this.lessThanCHANNELIDGreaterThan = const [],
  });

  List<User> lessThanCHANNELIDGreaterThan;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetUsersByGroupChannelIds200Response &&
     other.lessThanCHANNELIDGreaterThan == lessThanCHANNELIDGreaterThan;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (lessThanCHANNELIDGreaterThan.hashCode);

  @override
  String toString() => 'GetUsersByGroupChannelIds200Response[lessThanCHANNELIDGreaterThan=$lessThanCHANNELIDGreaterThan]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'<CHANNEL_ID>'] = lessThanCHANNELIDGreaterThan;
    return _json;
  }

  /// Returns a new [GetUsersByGroupChannelIds200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetUsersByGroupChannelIds200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetUsersByGroupChannelIds200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetUsersByGroupChannelIds200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetUsersByGroupChannelIds200Response(
        lessThanCHANNELIDGreaterThan: User.listFromJson(json[r'<CHANNEL_ID>']) ?? const [],
      );
    }
    return null;
  }

  static List<GetUsersByGroupChannelIds200Response>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetUsersByGroupChannelIds200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetUsersByGroupChannelIds200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetUsersByGroupChannelIds200Response> mapFromJson(dynamic json) {
    final map = <String, GetUsersByGroupChannelIds200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetUsersByGroupChannelIds200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetUsersByGroupChannelIds200Response-objects as value to a dart map
  static Map<String, List<GetUsersByGroupChannelIds200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetUsersByGroupChannelIds200Response>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetUsersByGroupChannelIds200Response.listFromJson(entry.value, growable: growable,);
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

