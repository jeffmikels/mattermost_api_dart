//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class UpdateChannelPrivacyRequest {
  /// Returns a new [UpdateChannelPrivacyRequest] instance.
  UpdateChannelPrivacyRequest({
    required this.privacy,
  });

  /// Channel privacy setting: 'O' for a public channel, 'P' for a private channel
  String privacy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateChannelPrivacyRequest &&
     other.privacy == privacy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (privacy.hashCode);

  @override
  String toString() => 'UpdateChannelPrivacyRequest[privacy=$privacy]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'privacy'] = privacy;
    return _json;
  }

  /// Returns a new [UpdateChannelPrivacyRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateChannelPrivacyRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateChannelPrivacyRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateChannelPrivacyRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateChannelPrivacyRequest(
        privacy: mapValueOfType<String>(json, r'privacy')!,
      );
    }
    return null;
  }

  static List<UpdateChannelPrivacyRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateChannelPrivacyRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateChannelPrivacyRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateChannelPrivacyRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateChannelPrivacyRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateChannelPrivacyRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateChannelPrivacyRequest-objects as value to a dart map
  static Map<String, List<UpdateChannelPrivacyRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateChannelPrivacyRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateChannelPrivacyRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'privacy',
  };
}

