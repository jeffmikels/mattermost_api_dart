//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMGetGroupUsers200Response {
  /// Returns a new [MMGetGroupUsers200Response] instance.
  MMGetGroupUsers200Response({
    this.members = const [],
    this.totalMemberCount,
  });

  List<MMUser> members;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalMemberCount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMGetGroupUsers200Response && other.members == members && other.totalMemberCount == totalMemberCount;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (members.hashCode) + (totalMemberCount == null ? 0 : totalMemberCount!.hashCode);

  @override
  String toString() => 'MMGetGroupUsers200Response[members=$members, totalMemberCount=$totalMemberCount]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'members'] = members;
    if (totalMemberCount != null) {
      _json[r'total_member_count'] = totalMemberCount;
    }
    return _json;
  }

  /// Returns a new [MMGetGroupUsers200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMGetGroupUsers200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMGetGroupUsers200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMGetGroupUsers200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMGetGroupUsers200Response(
        members: MMUser.listFromJson(json[r'members']) ?? const [],
        totalMemberCount: mapValueOfType<int>(json, r'total_member_count'),
      );
    }
    return null;
  }

  static List<MMGetGroupUsers200Response>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMGetGroupUsers200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMGetGroupUsers200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMGetGroupUsers200Response> mapFromJson(dynamic json) {
    final map = <String, MMGetGroupUsers200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMGetGroupUsers200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMGetGroupUsers200Response-objects as value to a dart map
  static Map<String, List<MMGetGroupUsers200Response>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMGetGroupUsers200Response>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMGetGroupUsers200Response.listFromJson(
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