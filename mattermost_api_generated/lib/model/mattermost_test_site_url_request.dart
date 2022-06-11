//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostTestSiteURLRequest {
  /// Returns a new [MattermostTestSiteURLRequest] instance.
  MattermostTestSiteURLRequest({
    required this.siteUrl,
  });

  /// The Site URL to test
  String siteUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MattermostTestSiteURLRequest &&
     other.siteUrl == siteUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (siteUrl.hashCode);

  @override
  String toString() => 'MattermostTestSiteURLRequest[siteUrl=$siteUrl]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'site_url'] = siteUrl;
    return _json;
  }

  /// Returns a new [MattermostTestSiteURLRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostTestSiteURLRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostTestSiteURLRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostTestSiteURLRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostTestSiteURLRequest(
        siteUrl: mapValueOfType<String>(json, r'site_url')!,
      );
    }
    return null;
  }

  static List<MattermostTestSiteURLRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MattermostTestSiteURLRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostTestSiteURLRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostTestSiteURLRequest> mapFromJson(dynamic json) {
    final map = <String, MattermostTestSiteURLRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostTestSiteURLRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostTestSiteURLRequest-objects as value to a dart map
  static Map<String, List<MattermostTestSiteURLRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MattermostTestSiteURLRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostTestSiteURLRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'site_url',
  };
}

