//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostSearchAllChannels200Response {
  /// Returns a new [MattermostSearchAllChannels200Response] instance.
  MattermostSearchAllChannels200Response({
    this.channels = const [],
    this.totalCount,
  });

  /// The channels that matched the query.
  List<MattermostChannel> channels;

  /// The total number of results, regardless of page and per_page requested.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? totalCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MattermostSearchAllChannels200Response &&
     other.channels == channels &&
     other.totalCount == totalCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (channels.hashCode) +
    (totalCount == null ? 0 : totalCount!.hashCode);

  @override
  String toString() => 'MattermostSearchAllChannels200Response[channels=$channels, totalCount=$totalCount]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'channels'] = channels;
    if (totalCount != null) {
      _json[r'total_count'] = totalCount;
    }
    return _json;
  }

  /// Returns a new [MattermostSearchAllChannels200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostSearchAllChannels200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostSearchAllChannels200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostSearchAllChannels200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostSearchAllChannels200Response(
        channels: MattermostChannel.listFromJson(json[r'channels']) ?? const [],
        totalCount: json[r'total_count'] == null
            ? null
            : num.parse(json[r'total_count'].toString()),
      );
    }
    return null;
  }

  static List<MattermostSearchAllChannels200Response>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MattermostSearchAllChannels200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostSearchAllChannels200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostSearchAllChannels200Response> mapFromJson(dynamic json) {
    final map = <String, MattermostSearchAllChannels200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostSearchAllChannels200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostSearchAllChannels200Response-objects as value to a dart map
  static Map<String, List<MattermostSearchAllChannels200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MattermostSearchAllChannels200Response>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostSearchAllChannels200Response.listFromJson(entry.value, growable: growable,);
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

