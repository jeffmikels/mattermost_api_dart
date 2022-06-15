//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmSearchTeamsRequest {
  /// Returns a new [MmSearchTeamsRequest] instance.
  MmSearchTeamsRequest({
    this.term,
    this.page,
    this.perPage,
    this.allowOpenInvite,
    this.groupConstrained,
    this.excludePolicyConstrained = false,
  });

  /// The search term to match against the name or display name of teams
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? term;

  /// The page number to return, if paginated. If this parameter is not present with the `per_page` parameter then the results will be returned un-paged.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? page;

  /// The number of entries to return per page, if paginated. If this parameter is not present with the `page` parameter then the results will be returned un-paged.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? perPage;

  /// Filters results to teams where `allow_open_invite` is set to true or false, excludes group constrained channels if this filter option is passed. If this filter option is not passed then the query will remain unchanged. __Minimum server version__: 5.28
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? allowOpenInvite;

  /// Filters results to teams where `group_constrained` is set to true or false, returns the union of results when used with `allow_open_invite` If the filter option is not passed then the query will remain unchanged. __Minimum server version__: 5.28
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? groupConstrained;

  /// If set to true, only teams which do not have a granular retention policy assigned to them will be returned. The `sysconsole_read_compliance_data_retention` permission is required to use this parameter. __Minimum server version__: 5.35
  bool excludePolicyConstrained;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmSearchTeamsRequest &&
          other.term == term &&
          other.page == page &&
          other.perPage == perPage &&
          other.allowOpenInvite == allowOpenInvite &&
          other.groupConstrained == groupConstrained &&
          other.excludePolicyConstrained == excludePolicyConstrained;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (term == null ? 0 : term!.hashCode) +
      (page == null ? 0 : page!.hashCode) +
      (perPage == null ? 0 : perPage!.hashCode) +
      (allowOpenInvite == null ? 0 : allowOpenInvite!.hashCode) +
      (groupConstrained == null ? 0 : groupConstrained!.hashCode) +
      (excludePolicyConstrained.hashCode);

  @override
  String toString() =>
      'MmSearchTeamsRequest[term=$term, page=$page, perPage=$perPage, allowOpenInvite=$allowOpenInvite, groupConstrained=$groupConstrained, excludePolicyConstrained=$excludePolicyConstrained]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (term != null) {
      _json[r'term'] = term;
    }
    if (page != null) {
      _json[r'page'] = page;
    }
    if (perPage != null) {
      _json[r'per_page'] = perPage;
    }
    if (allowOpenInvite != null) {
      _json[r'allow_open_invite'] = allowOpenInvite;
    }
    if (groupConstrained != null) {
      _json[r'group_constrained'] = groupConstrained;
    }
    _json[r'exclude_policy_constrained'] = excludePolicyConstrained;
    return _json;
  }

  /// Returns a new [MmSearchTeamsRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmSearchTeamsRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmSearchTeamsRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmSearchTeamsRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmSearchTeamsRequest(
        term: mapValueOfType<String>(json, r'term'),
        page: mapValueOfType<String>(json, r'page'),
        perPage: mapValueOfType<String>(json, r'per_page'),
        allowOpenInvite: mapValueOfType<bool>(json, r'allow_open_invite'),
        groupConstrained: mapValueOfType<bool>(json, r'group_constrained'),
        excludePolicyConstrained: mapValueOfType<bool>(json, r'exclude_policy_constrained') ?? false,
      );
    }
    return null;
  }

  static List<MmSearchTeamsRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmSearchTeamsRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmSearchTeamsRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmSearchTeamsRequest> mapFromJson(dynamic json) {
    final map = <String, MmSearchTeamsRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSearchTeamsRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmSearchTeamsRequest-objects as value to a dart map
  static Map<String, List<MmSearchTeamsRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmSearchTeamsRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSearchTeamsRequest.listFromJson(
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
