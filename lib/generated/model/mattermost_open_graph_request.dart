//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostOpenGraphRequest {
  /// Returns a new [MattermostOpenGraphRequest] instance.
  MattermostOpenGraphRequest({
    required this.url,
  });

  /// The URL to get Open Graph Metadata.
  String url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MattermostOpenGraphRequest &&
     other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (url.hashCode);

  @override
  String toString() => 'MattermostOpenGraphRequest[url=$url]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'url'] = url;
    return _json;
  }

  /// Returns a new [MattermostOpenGraphRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostOpenGraphRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostOpenGraphRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostOpenGraphRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostOpenGraphRequest(
        url: mapValueOfType<String>(json, r'url')!,
      );
    }
    return null;
  }

  static List<MattermostOpenGraphRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MattermostOpenGraphRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostOpenGraphRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostOpenGraphRequest> mapFromJson(dynamic json) {
    final map = <String, MattermostOpenGraphRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostOpenGraphRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostOpenGraphRequest-objects as value to a dart map
  static Map<String, List<MattermostOpenGraphRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MattermostOpenGraphRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostOpenGraphRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'url',
  };
}

