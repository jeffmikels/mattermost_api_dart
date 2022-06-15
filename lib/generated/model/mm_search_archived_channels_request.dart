//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmSearchArchivedChannelsRequest {
  /// Returns a new [MmSearchArchivedChannelsRequest] instance.
  MmSearchArchivedChannelsRequest({
    required this.term,
  });

  /// The search term to match against the name or display name of archived channels
  String term;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MmSearchArchivedChannelsRequest && other.term == term;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (term.hashCode);

  @override
  String toString() => 'MmSearchArchivedChannelsRequest[term=$term]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'term'] = term;
    return _json;
  }

  /// Returns a new [MmSearchArchivedChannelsRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmSearchArchivedChannelsRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmSearchArchivedChannelsRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmSearchArchivedChannelsRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmSearchArchivedChannelsRequest(
        term: mapValueOfType<String>(json, r'term')!,
      );
    }
    return null;
  }

  static List<MmSearchArchivedChannelsRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmSearchArchivedChannelsRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmSearchArchivedChannelsRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmSearchArchivedChannelsRequest> mapFromJson(dynamic json) {
    final map = <String, MmSearchArchivedChannelsRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSearchArchivedChannelsRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmSearchArchivedChannelsRequest-objects as value to a dart map
  static Map<String, List<MmSearchArchivedChannelsRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmSearchArchivedChannelsRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSearchArchivedChannelsRequest.listFromJson(
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
    'term',
  };
}
