//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostGroupsApi {
  final MattermostApiClient apiClient;

  MattermostGroupsApi(this.apiClient);

  /// Adds members to a custom group
  ///
  /// Adds members to a custom group.  ##### Permissions Must have `custom_group_manage_members` permission for the given group.  __Minimum server version__: 6.3
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   The ID of the group.
  ///
  /// * [MMAddGroupMembersRequest] mMAddGroupMembersRequest (required):
  Future<Response> addGroupMembersWithHttpInfo(
    String groupId,
    MMAddGroupMembersRequest mMAddGroupMembersRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/groups/{group_id}/members'.replaceAll('{group_id}', groupId);

    // ignore: prefer_final_locals
    Object? postBody = mMAddGroupMembersRequest;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Adds members to a custom group
  ///
  /// Adds members to a custom group.  ##### Permissions Must have `custom_group_manage_members` permission for the given group.  __Minimum server version__: 6.3
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   The ID of the group.
  ///
  /// * [MMAddGroupMembersRequest] mMAddGroupMembersRequest (required):
  Future<MMStatusOK?> addGroupMembers(
    String groupId,
    MMAddGroupMembersRequest mMAddGroupMembersRequest,
  ) async {
    final response = await addGroupMembersWithHttpInfo(
      groupId,
      mMAddGroupMembersRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MMStatusOK',
      ) as MMStatusOK;
    }
    return null;
  }

  /// Create a custom group
  ///
  /// Create a `custom` type group.  #### Permission Must have `create_custom_group` permission.  __Minimum server version__: 6.3
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MMCreateGroupRequest] mMCreateGroupRequest (required):
  ///   Group object and initial members.
  Future<Response> createGroupWithHttpInfo(
    MMCreateGroupRequest mMCreateGroupRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/groups';

    // ignore: prefer_final_locals
    Object? postBody = mMCreateGroupRequest;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create a custom group
  ///
  /// Create a `custom` type group.  #### Permission Must have `create_custom_group` permission.  __Minimum server version__: 6.3
  ///
  /// Parameters:
  ///
  /// * [MMCreateGroupRequest] mMCreateGroupRequest (required):
  ///   Group object and initial members.
  Future<void> createGroup(
    MMCreateGroupRequest mMCreateGroupRequest,
  ) async {
    final response = await createGroupWithHttpInfo(
      mMCreateGroupRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deletes a custom group
  ///
  /// Soft deletes a custom group.  ##### Permissions Must have `custom_group_delete` permission for the given group.  __Minimum server version__: 6.3
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   The ID of the group.
  Future<Response> deleteGroupWithHttpInfo(
    String groupId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/groups/{group_id}'.replaceAll('{group_id}', groupId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Deletes a custom group
  ///
  /// Soft deletes a custom group.  ##### Permissions Must have `custom_group_delete` permission for the given group.  __Minimum server version__: 6.3
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   The ID of the group.
  Future<MMStatusOK?> deleteGroup(
    String groupId,
  ) async {
    final response = await deleteGroupWithHttpInfo(
      groupId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MMStatusOK',
      ) as MMStatusOK;
    }
    return null;
  }

  /// Removes members from a custom group
  ///
  /// Soft deletes a custom group members.  ##### Permissions Must have `custom_group_manage_members` permission for the given group.  __Minimum server version__: 6.3
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   The ID of the group to delete.
  ///
  /// * [MMDeleteGroupMembersRequest] mMDeleteGroupMembersRequest (required):
  Future<Response> deleteGroupMembersWithHttpInfo(
    String groupId,
    MMDeleteGroupMembersRequest mMDeleteGroupMembersRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/groups/{group_id}/members'.replaceAll('{group_id}', groupId);

    // ignore: prefer_final_locals
    Object? postBody = mMDeleteGroupMembersRequest;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Removes members from a custom group
  ///
  /// Soft deletes a custom group members.  ##### Permissions Must have `custom_group_manage_members` permission for the given group.  __Minimum server version__: 6.3
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   The ID of the group to delete.
  ///
  /// * [MMDeleteGroupMembersRequest] mMDeleteGroupMembersRequest (required):
  Future<MMStatusOK?> deleteGroupMembers(
    String groupId,
    MMDeleteGroupMembersRequest mMDeleteGroupMembersRequest,
  ) async {
    final response = await deleteGroupMembersWithHttpInfo(
      groupId,
      mMDeleteGroupMembersRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MMStatusOK',
      ) as MMStatusOK;
    }
    return null;
  }

  /// Get a group
  ///
  /// Get group from the provided group id string  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  Future<Response> getGroupWithHttpInfo(
    String groupId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/groups/{group_id}'.replaceAll('{group_id}', groupId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a group
  ///
  /// Get group from the provided group id string  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  Future<MMGroup?> getGroup(
    String groupId,
  ) async {
    final response = await getGroupWithHttpInfo(
      groupId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MMGroup',
      ) as MMGroup;
    }
    return null;
  }

  /// Get group stats
  ///
  /// Retrieve the stats of a given group.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.26
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  Future<Response> getGroupStatsWithHttpInfo(
    String groupId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/groups/{group_id}/stats'.replaceAll('{group_id}', groupId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get group stats
  ///
  /// Retrieve the stats of a given group.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.26
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  Future<MMGetGroupStats200Response?> getGroupStats(
    String groupId,
  ) async {
    final response = await getGroupStatsWithHttpInfo(
      groupId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MMGetGroupStats200Response',
      ) as MMGetGroupStats200Response;
    }
    return null;
  }

  /// Get GroupSyncable from channel ID
  ///
  /// Get the GroupSyncable object with group_id and channel_id from params ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  Future<Response> getGroupSyncableForChannelIdWithHttpInfo(
    String groupId,
    String channelId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/groups/{group_id}/channels/{channel_id}'
        .replaceAll('{group_id}', groupId)
        .replaceAll('{channel_id}', channelId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get GroupSyncable from channel ID
  ///
  /// Get the GroupSyncable object with group_id and channel_id from params ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  Future<MMGroupSyncableChannel?> getGroupSyncableForChannelId(
    String groupId,
    String channelId,
  ) async {
    final response = await getGroupSyncableForChannelIdWithHttpInfo(
      groupId,
      channelId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MMGroupSyncableChannel',
      ) as MMGroupSyncableChannel;
    }
    return null;
  }

  /// Get GroupSyncable from Team ID
  ///
  /// Get the GroupSyncable object with group_id and team_id from params ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  Future<Response> getGroupSyncableForTeamIdWithHttpInfo(
    String groupId,
    String teamId,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/groups/{group_id}/teams/{team_id}'.replaceAll('{group_id}', groupId).replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get GroupSyncable from Team ID
  ///
  /// Get the GroupSyncable object with group_id and team_id from params ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  Future<MMGroupSyncableTeam?> getGroupSyncableForTeamId(
    String groupId,
    String teamId,
  ) async {
    final response = await getGroupSyncableForTeamIdWithHttpInfo(
      groupId,
      teamId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MMGroupSyncableTeam',
      ) as MMGroupSyncableTeam;
    }
    return null;
  }

  /// Get group channels
  ///
  /// Retrieve the list of channels associated to the group ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  Future<Response> getGroupSyncablesChannelsWithHttpInfo(
    String groupId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/groups/{group_id}/channels'.replaceAll('{group_id}', groupId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get group channels
  ///
  /// Retrieve the list of channels associated to the group ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  Future<List<MMGroupSyncableChannels>?> getGroupSyncablesChannels(
    String groupId,
  ) async {
    final response = await getGroupSyncablesChannelsWithHttpInfo(
      groupId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MMGroupSyncableChannels>') as List)
          .cast<MMGroupSyncableChannels>()
          .toList();
    }
    return null;
  }

  /// Get group teams
  ///
  /// Retrieve the list of teams associated to the group ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  Future<Response> getGroupSyncablesTeamsWithHttpInfo(
    String groupId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/groups/{group_id}/teams'.replaceAll('{group_id}', groupId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get group teams
  ///
  /// Retrieve the list of teams associated to the group ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  Future<List<MMGroupSyncableTeams>?> getGroupSyncablesTeams(
    String groupId,
  ) async {
    final response = await getGroupSyncablesTeamsWithHttpInfo(
      groupId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MMGroupSyncableTeams>') as List)
          .cast<MMGroupSyncableTeams>()
          .toList();
    }
    return null;
  }

  /// Get group users
  ///
  /// Retrieve the list of users associated with a given group.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of groups per page.
  Future<Response> getGroupUsersWithHttpInfo(
    String groupId, {
    int? page,
    int? perPage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/groups/{group_id}/members'.replaceAll('{group_id}', groupId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get group users
  ///
  /// Retrieve the list of users associated with a given group.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of groups per page.
  Future<MMGetGroupUsers200Response?> getGroupUsers(
    String groupId, {
    int? page,
    int? perPage,
  }) async {
    final response = await getGroupUsersWithHttpInfo(
      groupId,
      page: page,
      perPage: perPage,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MMGetGroupUsers200Response',
      ) as MMGetGroupUsers200Response;
    }
    return null;
  }

  /// Get groups
  ///
  /// Retrieve a list of all groups not associated to a particular channel or team.  `not_associated_to_team` **OR** `not_associated_to_channel` is required.  If you use `not_associated_to_team`, you must be a team admin for that particular team (permission to manage that team).  If you use `not_associated_to_channel`, you must be a channel admin for that particular channel (permission to manage that channel).  __Minimum server version__: 5.11
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] notAssociatedToTeam (required):
  ///   Team GUID which is used to return all the groups not associated to this team
  ///
  /// * [String] notAssociatedToChannel (required):
  ///   Group GUID which is used to return all the groups not associated to this channel
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of groups per page.
  ///
  /// * [String] q:
  ///   String to pattern match the `name` and `display_name` field. Will return all groups whose `name` and `display_name` field match any of the text.
  ///
  /// * [bool] includeMemberCount:
  ///   Boolean which adds the `member_count` attribute to each group JSON object
  ///
  /// * [int] since:
  ///   Only return groups that have been modified since the given Unix timestamp (in milliseconds). All modified groups, including deleted and created groups, will be returned. __Minimum server version__: 5.24
  ///
  /// * [bool] filterAllowReference:
  ///   Boolean which filters the group entries with the `allow_reference` attribute set.
  Future<Response> getGroupsWithHttpInfo(
    String notAssociatedToTeam,
    String notAssociatedToChannel, {
    int? page,
    int? perPage,
    String? q,
    bool? includeMemberCount,
    int? since,
    bool? filterAllowReference,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/groups';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (includeMemberCount != null) {
      queryParams.addAll(_queryParams('', 'include_member_count', includeMemberCount));
    }
    queryParams.addAll(_queryParams('', 'not_associated_to_team', notAssociatedToTeam));
    queryParams.addAll(_queryParams('', 'not_associated_to_channel', notAssociatedToChannel));
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (filterAllowReference != null) {
      queryParams.addAll(_queryParams('', 'filter_allow_reference', filterAllowReference));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get groups
  ///
  /// Retrieve a list of all groups not associated to a particular channel or team.  `not_associated_to_team` **OR** `not_associated_to_channel` is required.  If you use `not_associated_to_team`, you must be a team admin for that particular team (permission to manage that team).  If you use `not_associated_to_channel`, you must be a channel admin for that particular channel (permission to manage that channel).  __Minimum server version__: 5.11
  ///
  /// Parameters:
  ///
  /// * [String] notAssociatedToTeam (required):
  ///   Team GUID which is used to return all the groups not associated to this team
  ///
  /// * [String] notAssociatedToChannel (required):
  ///   Group GUID which is used to return all the groups not associated to this channel
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of groups per page.
  ///
  /// * [String] q:
  ///   String to pattern match the `name` and `display_name` field. Will return all groups whose `name` and `display_name` field match any of the text.
  ///
  /// * [bool] includeMemberCount:
  ///   Boolean which adds the `member_count` attribute to each group JSON object
  ///
  /// * [int] since:
  ///   Only return groups that have been modified since the given Unix timestamp (in milliseconds). All modified groups, including deleted and created groups, will be returned. __Minimum server version__: 5.24
  ///
  /// * [bool] filterAllowReference:
  ///   Boolean which filters the group entries with the `allow_reference` attribute set.
  Future<List<MMGroup>?> getGroups(
    String notAssociatedToTeam,
    String notAssociatedToChannel, {
    int? page,
    int? perPage,
    String? q,
    bool? includeMemberCount,
    int? since,
    bool? filterAllowReference,
  }) async {
    final response = await getGroupsWithHttpInfo(
      notAssociatedToTeam,
      notAssociatedToChannel,
      page: page,
      perPage: perPage,
      q: q,
      includeMemberCount: includeMemberCount,
      since: since,
      filterAllowReference: filterAllowReference,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MMGroup>') as List).cast<MMGroup>().toList();
    }
    return null;
  }

  /// Get team groups by channels
  ///
  /// Retrieve the set of groups associated with the channels in the given team grouped by channel.  ##### Permissions Must have `manage_system` permission or can access only for current user  __Minimum server version__: 5.11
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of groups per page.
  ///
  /// * [bool] filterAllowReference:
  ///   Boolean which filters in the group entries with the `allow_reference` attribute set.
  ///
  /// * [bool] paginate:
  ///   Boolean to determine whether the pagination should be applied or not
  Future<Response> getGroupsAssociatedToChannelsByTeamWithHttpInfo(
    String teamId, {
    int? page,
    int? perPage,
    bool? filterAllowReference,
    bool? paginate,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/groups_by_channels'.replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (filterAllowReference != null) {
      queryParams.addAll(_queryParams('', 'filter_allow_reference', filterAllowReference));
    }
    if (paginate != null) {
      queryParams.addAll(_queryParams('', 'paginate', paginate));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get team groups by channels
  ///
  /// Retrieve the set of groups associated with the channels in the given team grouped by channel.  ##### Permissions Must have `manage_system` permission or can access only for current user  __Minimum server version__: 5.11
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of groups per page.
  ///
  /// * [bool] filterAllowReference:
  ///   Boolean which filters in the group entries with the `allow_reference` attribute set.
  ///
  /// * [bool] paginate:
  ///   Boolean to determine whether the pagination should be applied or not
  Future<List<Map<String, List<MMGroupWithSchemeAdmin>>>?> getGroupsAssociatedToChannelsByTeam(
    String teamId, {
    int? page,
    int? perPage,
    bool? filterAllowReference,
    bool? paginate,
  }) async {
    final response = await getGroupsAssociatedToChannelsByTeamWithHttpInfo(
      teamId,
      page: page,
      perPage: perPage,
      filterAllowReference: filterAllowReference,
      paginate: paginate,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Map<String, List<MMGroupWithSchemeAdmin>>>') as List)
          .cast<Map<String, List<MMGroupWithSchemeAdmin>>>()
          .toList();
    }
    return null;
  }

  /// Get channel groups
  ///
  /// Retrieve the list of groups associated with a given channel.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of groups per page.
  ///
  /// * [bool] filterAllowReference:
  ///   Boolean which filters the group entries with the `allow_reference` attribute set.
  Future<Response> getGroupsByChannelWithHttpInfo(
    String channelId, {
    int? page,
    int? perPage,
    bool? filterAllowReference,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/{channel_id}/groups'.replaceAll('{channel_id}', channelId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (filterAllowReference != null) {
      queryParams.addAll(_queryParams('', 'filter_allow_reference', filterAllowReference));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get channel groups
  ///
  /// Retrieve the list of groups associated with a given channel.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of groups per page.
  ///
  /// * [bool] filterAllowReference:
  ///   Boolean which filters the group entries with the `allow_reference` attribute set.
  Future<List<MMGroup>?> getGroupsByChannel(
    String channelId, {
    int? page,
    int? perPage,
    bool? filterAllowReference,
  }) async {
    final response = await getGroupsByChannelWithHttpInfo(
      channelId,
      page: page,
      perPage: perPage,
      filterAllowReference: filterAllowReference,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MMGroup>') as List).cast<MMGroup>().toList();
    }
    return null;
  }

  /// Get team groups
  ///
  /// Retrieve the list of groups associated with a given team.  __Minimum server version__: 5.11
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of groups per page.
  ///
  /// * [bool] filterAllowReference:
  ///   Boolean which filters in the group entries with the `allow_reference` attribute set.
  Future<Response> getGroupsByTeamWithHttpInfo(
    String teamId, {
    int? page,
    int? perPage,
    bool? filterAllowReference,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/groups'.replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (filterAllowReference != null) {
      queryParams.addAll(_queryParams('', 'filter_allow_reference', filterAllowReference));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get team groups
  ///
  /// Retrieve the list of groups associated with a given team.  __Minimum server version__: 5.11
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of groups per page.
  ///
  /// * [bool] filterAllowReference:
  ///   Boolean which filters in the group entries with the `allow_reference` attribute set.
  Future<List<MMGroup>?> getGroupsByTeam(
    String teamId, {
    int? page,
    int? perPage,
    bool? filterAllowReference,
  }) async {
    final response = await getGroupsByTeamWithHttpInfo(
      teamId,
      page: page,
      perPage: perPage,
      filterAllowReference: filterAllowReference,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MMGroup>') as List).cast<MMGroup>().toList();
    }
    return null;
  }

  /// Get groups for a userId
  ///
  /// Retrieve the list of groups associated to the user  __Minimum server version__: 5.24
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<Response> getGroupsByUserIdWithHttpInfo(
    String userId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/groups'.replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get groups for a userId
  ///
  /// Retrieve the list of groups associated to the user  __Minimum server version__: 5.24
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<List<MMGroup>?> getGroupsByUserId(
    String userId,
  ) async {
    final response = await getGroupsByUserIdWithHttpInfo(
      userId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MMGroup>') as List).cast<MMGroup>().toList();
    }
    return null;
  }

  /// Link a channel to a group
  ///
  /// Link a channel to a group ##### Permissions If the channel is private, you must have `manage_private_channel_members` permission. Otherwise, you must have the `manage_public_channel_members` permission.  __Minimum server version__: 5.11
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  Future<Response> linkGroupSyncableForChannelWithHttpInfo(
    String groupId,
    String channelId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/groups/{group_id}/channels/{channel_id}/link'
        .replaceAll('{group_id}', groupId)
        .replaceAll('{channel_id}', channelId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Link a channel to a group
  ///
  /// Link a channel to a group ##### Permissions If the channel is private, you must have `manage_private_channel_members` permission. Otherwise, you must have the `manage_public_channel_members` permission.  __Minimum server version__: 5.11
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  Future<MMGroupSyncableChannel?> linkGroupSyncableForChannel(
    String groupId,
    String channelId,
  ) async {
    final response = await linkGroupSyncableForChannelWithHttpInfo(
      groupId,
      channelId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MMGroupSyncableChannel',
      ) as MMGroupSyncableChannel;
    }
    return null;
  }

  /// Link a team to a group
  ///
  /// Link a team to a group ##### Permissions Must have `manage_team` permission.  __Minimum server version__: 5.11
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  Future<Response> linkGroupSyncableForTeamWithHttpInfo(
    String groupId,
    String teamId,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/groups/{group_id}/teams/{team_id}/link'.replaceAll('{group_id}', groupId).replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Link a team to a group
  ///
  /// Link a team to a group ##### Permissions Must have `manage_team` permission.  __Minimum server version__: 5.11
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  Future<MMGroupSyncableTeam?> linkGroupSyncableForTeam(
    String groupId,
    String teamId,
  ) async {
    final response = await linkGroupSyncableForTeamWithHttpInfo(
      groupId,
      teamId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MMGroupSyncableTeam',
      ) as MMGroupSyncableTeam;
    }
    return null;
  }

  /// Patch a group
  ///
  /// Partially update a group by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  ///
  /// * [MMPatchGroupRequest] mMPatchGroupRequest (required):
  ///   Group object that is to be updated
  Future<Response> patchGroupWithHttpInfo(
    String groupId,
    MMPatchGroupRequest mMPatchGroupRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/groups/{group_id}/patch'.replaceAll('{group_id}', groupId);

    // ignore: prefer_final_locals
    Object? postBody = mMPatchGroupRequest;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Patch a group
  ///
  /// Partially update a group by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  ///
  /// * [MMPatchGroupRequest] mMPatchGroupRequest (required):
  ///   Group object that is to be updated
  Future<MMGroup?> patchGroup(
    String groupId,
    MMPatchGroupRequest mMPatchGroupRequest,
  ) async {
    final response = await patchGroupWithHttpInfo(
      groupId,
      mMPatchGroupRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MMGroup',
      ) as MMGroup;
    }
    return null;
  }

  /// Patch a GroupSyncable associated to Channel
  ///
  /// Partially update a GroupSyncable by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [MMPatchGroupSyncableForTeamRequest] mMPatchGroupSyncableForTeamRequest (required):
  ///   GroupSyncable object that is to be updated
  Future<Response> patchGroupSyncableForChannelWithHttpInfo(
    String groupId,
    String channelId,
    MMPatchGroupSyncableForTeamRequest mMPatchGroupSyncableForTeamRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/groups/{group_id}/channels/{channel_id}/patch'
        .replaceAll('{group_id}', groupId)
        .replaceAll('{channel_id}', channelId);

    // ignore: prefer_final_locals
    Object? postBody = mMPatchGroupSyncableForTeamRequest;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Patch a GroupSyncable associated to Channel
  ///
  /// Partially update a GroupSyncable by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [MMPatchGroupSyncableForTeamRequest] mMPatchGroupSyncableForTeamRequest (required):
  ///   GroupSyncable object that is to be updated
  Future<MMGroupSyncableChannel?> patchGroupSyncableForChannel(
    String groupId,
    String channelId,
    MMPatchGroupSyncableForTeamRequest mMPatchGroupSyncableForTeamRequest,
  ) async {
    final response = await patchGroupSyncableForChannelWithHttpInfo(
      groupId,
      channelId,
      mMPatchGroupSyncableForTeamRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MMGroupSyncableChannel',
      ) as MMGroupSyncableChannel;
    }
    return null;
  }

  /// Patch a GroupSyncable associated to Team
  ///
  /// Partially update a GroupSyncable by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [MMPatchGroupSyncableForTeamRequest] mMPatchGroupSyncableForTeamRequest (required):
  ///   GroupSyncable object that is to be updated
  Future<Response> patchGroupSyncableForTeamWithHttpInfo(
    String groupId,
    String teamId,
    MMPatchGroupSyncableForTeamRequest mMPatchGroupSyncableForTeamRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/groups/{group_id}/teams/{team_id}/patch'.replaceAll('{group_id}', groupId).replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody = mMPatchGroupSyncableForTeamRequest;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Patch a GroupSyncable associated to Team
  ///
  /// Partially update a GroupSyncable by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [MMPatchGroupSyncableForTeamRequest] mMPatchGroupSyncableForTeamRequest (required):
  ///   GroupSyncable object that is to be updated
  Future<MMGroupSyncableTeam?> patchGroupSyncableForTeam(
    String groupId,
    String teamId,
    MMPatchGroupSyncableForTeamRequest mMPatchGroupSyncableForTeamRequest,
  ) async {
    final response = await patchGroupSyncableForTeamWithHttpInfo(
      groupId,
      teamId,
      mMPatchGroupSyncableForTeamRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MMGroupSyncableTeam',
      ) as MMGroupSyncableTeam;
    }
    return null;
  }

  /// Delete a link from a channel to a group
  ///
  /// Delete a link from a channel to a group ##### Permissions If the channel is private, you must have `manage_private_channel_members` permission. Otherwise, you must have the `manage_public_channel_members` permission.  __Minimum server version__: 5.11
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  Future<Response> unlinkGroupSyncableForChannelWithHttpInfo(
    String groupId,
    String channelId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/groups/{group_id}/channels/{channel_id}/link'
        .replaceAll('{group_id}', groupId)
        .replaceAll('{channel_id}', channelId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a link from a channel to a group
  ///
  /// Delete a link from a channel to a group ##### Permissions If the channel is private, you must have `manage_private_channel_members` permission. Otherwise, you must have the `manage_public_channel_members` permission.  __Minimum server version__: 5.11
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  Future<MMStatusOK?> unlinkGroupSyncableForChannel(
    String groupId,
    String channelId,
  ) async {
    final response = await unlinkGroupSyncableForChannelWithHttpInfo(
      groupId,
      channelId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MMStatusOK',
      ) as MMStatusOK;
    }
    return null;
  }

  /// Delete a link from a team to a group
  ///
  /// Delete a link from a team to a group ##### Permissions Must have `manage_team` permission.  __Minimum server version__: 5.11
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  Future<Response> unlinkGroupSyncableForTeamWithHttpInfo(
    String groupId,
    String teamId,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/groups/{group_id}/teams/{team_id}/link'.replaceAll('{group_id}', groupId).replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a link from a team to a group
  ///
  /// Delete a link from a team to a group ##### Permissions Must have `manage_team` permission.  __Minimum server version__: 5.11
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   Group GUID
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  Future<MMStatusOK?> unlinkGroupSyncableForTeam(
    String groupId,
    String teamId,
  ) async {
    final response = await unlinkGroupSyncableForTeamWithHttpInfo(
      groupId,
      teamId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MMStatusOK',
      ) as MMStatusOK;
    }
    return null;
  }

  /// Delete a link for LDAP group
  ///
  /// ##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.11
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] remoteId (required):
  ///   Group GUID
  Future<Response> unlinkLdapGroupWithHttpInfo(
    String remoteId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/ldap/groups/{remote_id}/link'.replaceAll('{remote_id}', remoteId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a link for LDAP group
  ///
  /// ##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.11
  ///
  /// Parameters:
  ///
  /// * [String] remoteId (required):
  ///   Group GUID
  Future<MMStatusOK?> unlinkLdapGroup(
    String remoteId,
  ) async {
    final response = await unlinkLdapGroupWithHttpInfo(
      remoteId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MMStatusOK',
      ) as MMStatusOK;
    }
    return null;
  }
}
