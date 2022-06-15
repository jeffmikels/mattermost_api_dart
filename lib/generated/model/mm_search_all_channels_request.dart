//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmSearchAllChannelsRequest {
  /// Returns a new [MmSearchAllChannelsRequest] instance.
  MmSearchAllChannelsRequest({
    required this.term,
    this.notAssociatedToGroup,
    this.excludeDefaultChannels,
    this.teamIds = const [],
    this.groupConstrained,
    this.excludeGroupConstrained,
    this.public,
    this.private,
    this.deleted,
    this.page,
    this.perPage,
    this.excludePolicyConstrained = false,
  });

  /// The string to search in the channel name, display name, and purpose.
  String term;

  /// A group id to exclude channels that are associated to that group via GroupChannel records.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? notAssociatedToGroup;

  /// Exclude default channels from the results by setting this parameter to true.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? excludeDefaultChannels;

  /// Filters results to channels belonging to the given team ids  __Minimum server version__: 5.26
  List<String> teamIds;

  /// Filters results to only return channels constrained to a group  __Minimum server version__: 5.26
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? groupConstrained;

  /// Filters results to exclude channels constrained to a group  __Minimum server version__: 5.26
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? excludeGroupConstrained;

  /// Filters results to only return Public / Open channels, can be used in conjunction with `private` to return both `public` and `private` channels  __Minimum server version__: 5.26
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? public;

  /// Filters results to only return Private channels, can be used in conjunction with `public` to return both `private` and `public` channels  __Minimum server version__: 5.26
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? private;

  /// Filters results to only return deleted / archived channels  __Minimum server version__: 5.26
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deleted;

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

  /// If set to true, only channels which do not have a granular retention policy assigned to them will be returned. The `sysconsole_read_compliance_data_retention` permission is required to use this parameter. __Minimum server version__: 5.35
  bool excludePolicyConstrained;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmSearchAllChannelsRequest &&
          other.term == term &&
          other.notAssociatedToGroup == notAssociatedToGroup &&
          other.excludeDefaultChannels == excludeDefaultChannels &&
          other.teamIds == teamIds &&
          other.groupConstrained == groupConstrained &&
          other.excludeGroupConstrained == excludeGroupConstrained &&
          other.public == public &&
          other.private == private &&
          other.deleted == deleted &&
          other.page == page &&
          other.perPage == perPage &&
          other.excludePolicyConstrained == excludePolicyConstrained;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (term.hashCode) +
      (notAssociatedToGroup == null ? 0 : notAssociatedToGroup!.hashCode) +
      (excludeDefaultChannels == null ? 0 : excludeDefaultChannels!.hashCode) +
      (teamIds.hashCode) +
      (groupConstrained == null ? 0 : groupConstrained!.hashCode) +
      (excludeGroupConstrained == null ? 0 : excludeGroupConstrained!.hashCode) +
      (public == null ? 0 : public!.hashCode) +
      (private == null ? 0 : private!.hashCode) +
      (deleted == null ? 0 : deleted!.hashCode) +
      (page == null ? 0 : page!.hashCode) +
      (perPage == null ? 0 : perPage!.hashCode) +
      (excludePolicyConstrained.hashCode);

  @override
  String toString() =>
      'MmSearchAllChannelsRequest[term=$term, notAssociatedToGroup=$notAssociatedToGroup, excludeDefaultChannels=$excludeDefaultChannels, teamIds=$teamIds, groupConstrained=$groupConstrained, excludeGroupConstrained=$excludeGroupConstrained, public=$public, private=$private, deleted=$deleted, page=$page, perPage=$perPage, excludePolicyConstrained=$excludePolicyConstrained]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'term'] = term;
    if (notAssociatedToGroup != null) {
      _json[r'not_associated_to_group'] = notAssociatedToGroup;
    }
    if (excludeDefaultChannels != null) {
      _json[r'exclude_default_channels'] = excludeDefaultChannels;
    }
    _json[r'team_ids'] = teamIds;
    if (groupConstrained != null) {
      _json[r'group_constrained'] = groupConstrained;
    }
    if (excludeGroupConstrained != null) {
      _json[r'exclude_group_constrained'] = excludeGroupConstrained;
    }
    if (public != null) {
      _json[r'public'] = public;
    }
    if (private != null) {
      _json[r'private'] = private;
    }
    if (deleted != null) {
      _json[r'deleted'] = deleted;
    }
    if (page != null) {
      _json[r'page'] = page;
    }
    if (perPage != null) {
      _json[r'per_page'] = perPage;
    }
    _json[r'exclude_policy_constrained'] = excludePolicyConstrained;
    return _json;
  }

  /// Returns a new [MmSearchAllChannelsRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmSearchAllChannelsRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmSearchAllChannelsRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmSearchAllChannelsRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmSearchAllChannelsRequest(
        term: mapValueOfType<String>(json, r'term')!,
        notAssociatedToGroup: mapValueOfType<String>(json, r'not_associated_to_group'),
        excludeDefaultChannels: mapValueOfType<bool>(json, r'exclude_default_channels'),
        teamIds: json[r'team_ids'] is List ? (json[r'team_ids'] as List).cast<String>() : const [],
        groupConstrained: mapValueOfType<bool>(json, r'group_constrained'),
        excludeGroupConstrained: mapValueOfType<bool>(json, r'exclude_group_constrained'),
        public: mapValueOfType<bool>(json, r'public'),
        private: mapValueOfType<bool>(json, r'private'),
        deleted: mapValueOfType<bool>(json, r'deleted'),
        page: mapValueOfType<String>(json, r'page'),
        perPage: mapValueOfType<String>(json, r'per_page'),
        excludePolicyConstrained: mapValueOfType<bool>(json, r'exclude_policy_constrained') ?? false,
      );
    }
    return null;
  }

  static List<MmSearchAllChannelsRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmSearchAllChannelsRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmSearchAllChannelsRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmSearchAllChannelsRequest> mapFromJson(dynamic json) {
    final map = <String, MmSearchAllChannelsRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSearchAllChannelsRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmSearchAllChannelsRequest-objects as value to a dart map
  static Map<String, List<MmSearchAllChannelsRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmSearchAllChannelsRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmSearchAllChannelsRequest.listFromJson(
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
