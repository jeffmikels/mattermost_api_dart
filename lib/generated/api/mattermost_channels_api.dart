//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostChannelsApi {
  final MattermostApiClient apiClient;

  MattermostChannelsApi(this.apiClient);

  /// Add user to channel
  ///
  /// Add a user to a channel by creating a channel member object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   The channel ID
  ///
  /// * [MmAddChannelMemberRequest] mmAddChannelMemberRequest (required):
  Future<Response> addChannelMemberWithHttpInfo(
    String channelId,
    MmAddChannelMemberRequest mmAddChannelMemberRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/{channel_id}/members'.replaceAll('{channel_id}', channelId);

    // ignore: prefer_final_locals
    Object? postBody = mmAddChannelMemberRequest;

    final queryParams = <MmQueryParam>[];
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

  /// Add user to channel
  ///
  /// Add a user to a channel by creating a channel member object.
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   The channel ID
  ///
  /// * [MmAddChannelMemberRequest] mmAddChannelMemberRequest (required):
  Future<MmChannelMember?> addChannelMember(
    String channelId,
    MmAddChannelMemberRequest mmAddChannelMemberRequest,
  ) async {
    final response = await addChannelMemberWithHttpInfo(
      channelId,
      mmAddChannelMemberRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmChannelMember',
      ) as MmChannelMember;
    }
    return null;
  }

  /// Autocomplete channels
  ///
  /// Autocomplete public channels on a team based on the search term provided in the request URL.  __Minimum server version__: 4.7  ##### Permissions Must have the `list_team_channels` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] name (required):
  ///   Name or display name
  Future<Response> autocompleteChannelsForTeamWithHttpInfo(
    String teamId,
    String name,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/channels/autocomplete'.replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'name', name));

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

  /// Autocomplete channels
  ///
  /// Autocomplete public channels on a team based on the search term provided in the request URL.  __Minimum server version__: 4.7  ##### Permissions Must have the `list_team_channels` permission.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] name (required):
  ///   Name or display name
  Future<List<MmChannel>?> autocompleteChannelsForTeam(
    String teamId,
    String name,
  ) async {
    final response = await autocompleteChannelsForTeamWithHttpInfo(
      teamId,
      name,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MmChannel>') as List).cast<MmChannel>().toList();
    }
    return null;
  }

  /// Autocomplete channels for search
  ///
  /// Autocomplete your channels on a team based on the search term provided in the request URL.  __Minimum server version__: 5.4  ##### Permissions Must have the `list_team_channels` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] name (required):
  ///   Name or display name
  Future<Response> autocompleteChannelsForTeamForSearchWithHttpInfo(
    String teamId,
    String name,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/channels/search_autocomplete'.replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'name', name));

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

  /// Autocomplete channels for search
  ///
  /// Autocomplete your channels on a team based on the search term provided in the request URL.  __Minimum server version__: 5.4  ##### Permissions Must have the `list_team_channels` permission.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] name (required):
  ///   Name or display name
  Future<List<MmChannel>?> autocompleteChannelsForTeamForSearch(
    String teamId,
    String name,
  ) async {
    final response = await autocompleteChannelsForTeamForSearchWithHttpInfo(
      teamId,
      name,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MmChannel>') as List).cast<MmChannel>().toList();
    }
    return null;
  }

  /// Channel members minus group members.
  ///
  /// Get the set of users who are members of the channel minus the set of users who are members of the given groups. Each user object contains an array of group objects representing the group memberships for that user. Each user object contains the boolean fields `scheme_guest`, `scheme_user`, and `scheme_admin` representing the roles that user has for the given channel.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.14
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [String] groupIds (required):
  ///   A comma-separated list of group ids.
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of users per page.
  Future<Response> channelMembersMinusGroupMembersWithHttpInfo(
    String channelId,
    String groupIds, {
    int? page,
    int? perPage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/{channel_id}/members_minus_group_members'.replaceAll('{channel_id}', channelId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'group_ids', groupIds));
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

  /// Channel members minus group members.
  ///
  /// Get the set of users who are members of the channel minus the set of users who are members of the given groups. Each user object contains an array of group objects representing the group memberships for that user. Each user object contains the boolean fields `scheme_guest`, `scheme_user`, and `scheme_admin` representing the roles that user has for the given channel.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.14
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [String] groupIds (required):
  ///   A comma-separated list of group ids.
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of users per page.
  Future<void> channelMembersMinusGroupMembers(
    String channelId,
    String groupIds, {
    int? page,
    int? perPage,
  }) async {
    final response = await channelMembersMinusGroupMembersWithHttpInfo(
      channelId,
      groupIds,
      page: page,
      perPage: perPage,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a channel
  ///
  /// Create a new channel. ##### Permissions If creating a public channel, `create_public_channel` permission is required. If creating a private channel, `create_private_channel` permission is required.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MmCreateChannelRequest] mmCreateChannelRequest (required):
  ///   Channel object to be created
  Future<Response> createChannelWithHttpInfo(
    MmCreateChannelRequest mmCreateChannelRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/channels';

    // ignore: prefer_final_locals
    Object? postBody = mmCreateChannelRequest;

    final queryParams = <MmQueryParam>[];
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

  /// Create a channel
  ///
  /// Create a new channel. ##### Permissions If creating a public channel, `create_public_channel` permission is required. If creating a private channel, `create_private_channel` permission is required.
  ///
  /// Parameters:
  ///
  /// * [MmCreateChannelRequest] mmCreateChannelRequest (required):
  ///   Channel object to be created
  Future<MmChannel?> createChannel(
    MmCreateChannelRequest mmCreateChannelRequest,
  ) async {
    final response = await createChannelWithHttpInfo(
      mmCreateChannelRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmChannel',
      ) as MmChannel;
    }
    return null;
  }

  /// Create a direct message channel
  ///
  /// Create a new direct message channel between two users. ##### Permissions Must be one of the two users and have `create_direct_channel` permission. Having the `manage_system` permission voids the previous requirements.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  ///   The two user ids to be in the direct message
  Future<Response> createDirectChannelWithHttpInfo(
    List<String> requestBody,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/direct';

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

    final queryParams = <MmQueryParam>[];
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

  /// Create a direct message channel
  ///
  /// Create a new direct message channel between two users. ##### Permissions Must be one of the two users and have `create_direct_channel` permission. Having the `manage_system` permission voids the previous requirements.
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  ///   The two user ids to be in the direct message
  Future<MmChannel?> createDirectChannel(
    List<String> requestBody,
  ) async {
    final response = await createDirectChannelWithHttpInfo(
      requestBody,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmChannel',
      ) as MmChannel;
    }
    return null;
  }

  /// Create a group message channel
  ///
  /// Create a new group message channel to group of users. If the logged in user's id is not included in the list, it will be appended to the end. ##### Permissions Must have `create_group_channel` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  ///   User ids to be in the group message channel
  Future<Response> createGroupChannelWithHttpInfo(
    List<String> requestBody,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/group';

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

    final queryParams = <MmQueryParam>[];
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

  /// Create a group message channel
  ///
  /// Create a new group message channel to group of users. If the logged in user's id is not included in the list, it will be appended to the end. ##### Permissions Must have `create_group_channel` permission.
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  ///   User ids to be in the group message channel
  Future<MmChannel?> createGroupChannel(
    List<String> requestBody,
  ) async {
    final response = await createGroupChannelWithHttpInfo(
      requestBody,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmChannel',
      ) as MmChannel;
    }
    return null;
  }

  /// Create user's sidebar category
  ///
  /// Create a custom sidebar category for the user on the given team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [MmSidebarCategory] mmSidebarCategory (required):
  Future<Response> createSidebarCategoryForTeamForUserWithHttpInfo(
    String teamId,
    String userId,
    MmSidebarCategory mmSidebarCategory,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/teams/{team_id}/channels/categories'
        .replaceAll('{team_id}', teamId)
        .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = mmSidebarCategory;

    final queryParams = <MmQueryParam>[];
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

  /// Create user's sidebar category
  ///
  /// Create a custom sidebar category for the user on the given team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [MmSidebarCategory] mmSidebarCategory (required):
  Future<MmSidebarCategory?> createSidebarCategoryForTeamForUser(
    String teamId,
    String userId,
    MmSidebarCategory mmSidebarCategory,
  ) async {
    final response = await createSidebarCategoryForTeamForUserWithHttpInfo(
      teamId,
      userId,
      mmSidebarCategory,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmSidebarCategory',
      ) as MmSidebarCategory;
    }
    return null;
  }

  /// Delete a channel
  ///
  /// Archives a channel. This will set the `deleteAt` to the current timestamp in the database. Soft deleted channels may not be accessible in the user interface. They can be viewed and unarchived in the **System Console > User Management > Channels** based on your license. Direct and group message channels cannot be deleted.  As of server version 5.28, optionally use the `permanent=true` query parameter to permanently delete the channel for compliance reasons. To use this feature `ServiceSettings.EnableAPIChannelDeletion` must be set to `true` in the server's configuration.  If you permanently delete a channel this action is not recoverable outside of a database backup.  ##### Permissions `delete_public_channel` permission if the channel is public, `delete_private_channel` permission if the channel is private, or have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  Future<Response> deleteChannelWithHttpInfo(
    String channelId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/{channel_id}'.replaceAll('{channel_id}', channelId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
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

  /// Delete a channel
  ///
  /// Archives a channel. This will set the `deleteAt` to the current timestamp in the database. Soft deleted channels may not be accessible in the user interface. They can be viewed and unarchived in the **System Console > User Management > Channels** based on your license. Direct and group message channels cannot be deleted.  As of server version 5.28, optionally use the `permanent=true` query parameter to permanently delete the channel for compliance reasons. To use this feature `ServiceSettings.EnableAPIChannelDeletion` must be set to `true` in the server's configuration.  If you permanently delete a channel this action is not recoverable outside of a database backup.  ##### Permissions `delete_public_channel` permission if the channel is public, `delete_private_channel` permission if the channel is private, or have `manage_system` permission.
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  Future<MmStatusOK?> deleteChannel(
    String channelId,
  ) async {
    final response = await deleteChannelWithHttpInfo(
      channelId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmStatusOK',
      ) as MmStatusOK;
    }
    return null;
  }

  /// Get a list of all channels
  ///
  /// ##### Permissions `manage_system`
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] notAssociatedToGroup:
  ///   A group id to exclude channels that are associated with that group via GroupChannel records. This can also be left blank with `not_associated_to_group=`.
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  ///
  /// * [bool] excludeDefaultChannels:
  ///   Whether to exclude default channels (ex Town Square, Off-Topic) from the results.
  ///
  /// * [bool] includeDeleted:
  ///   Include channels that have been archived. This correlates to the `DeleteAt` flag being set in the database.
  ///
  /// * [bool] includeTotalCount:
  ///   Appends a total count of returned channels inside the response object - ex: `{ \"channels\": [], \"total_count\" : 0 }`.
  ///
  /// * [bool] excludePolicyConstrained:
  ///   If set to true, channels which are part of a data retention policy will be excluded. The `sysconsole_read_compliance` permission is required to use this parameter. __Minimum server version__: 5.35
  Future<Response> getAllChannelsWithHttpInfo({
    String? notAssociatedToGroup,
    int? page,
    int? perPage,
    bool? excludeDefaultChannels,
    bool? includeDeleted,
    bool? includeTotalCount,
    bool? excludePolicyConstrained,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/channels';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (notAssociatedToGroup != null) {
      queryParams.addAll(_queryParams('', 'not_associated_to_group', notAssociatedToGroup));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (excludeDefaultChannels != null) {
      queryParams.addAll(_queryParams('', 'exclude_default_channels', excludeDefaultChannels));
    }
    if (includeDeleted != null) {
      queryParams.addAll(_queryParams('', 'include_deleted', includeDeleted));
    }
    if (includeTotalCount != null) {
      queryParams.addAll(_queryParams('', 'include_total_count', includeTotalCount));
    }
    if (excludePolicyConstrained != null) {
      queryParams.addAll(_queryParams('', 'exclude_policy_constrained', excludePolicyConstrained));
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

  /// Get a list of all channels
  ///
  /// ##### Permissions `manage_system`
  ///
  /// Parameters:
  ///
  /// * [String] notAssociatedToGroup:
  ///   A group id to exclude channels that are associated with that group via GroupChannel records. This can also be left blank with `not_associated_to_group=`.
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  ///
  /// * [bool] excludeDefaultChannels:
  ///   Whether to exclude default channels (ex Town Square, Off-Topic) from the results.
  ///
  /// * [bool] includeDeleted:
  ///   Include channels that have been archived. This correlates to the `DeleteAt` flag being set in the database.
  ///
  /// * [bool] includeTotalCount:
  ///   Appends a total count of returned channels inside the response object - ex: `{ \"channels\": [], \"total_count\" : 0 }`.
  ///
  /// * [bool] excludePolicyConstrained:
  ///   If set to true, channels which are part of a data retention policy will be excluded. The `sysconsole_read_compliance` permission is required to use this parameter. __Minimum server version__: 5.35
  Future<List<MmChannelWithTeamData>?> getAllChannels({
    String? notAssociatedToGroup,
    int? page,
    int? perPage,
    bool? excludeDefaultChannels,
    bool? includeDeleted,
    bool? includeTotalCount,
    bool? excludePolicyConstrained,
  }) async {
    final response = await getAllChannelsWithHttpInfo(
      notAssociatedToGroup: notAssociatedToGroup,
      page: page,
      perPage: perPage,
      excludeDefaultChannels: excludeDefaultChannels,
      includeDeleted: includeDeleted,
      includeTotalCount: includeTotalCount,
      excludePolicyConstrained: excludePolicyConstrained,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MmChannelWithTeamData>') as List)
          .cast<MmChannelWithTeamData>()
          .toList();
    }
    return null;
  }

  /// Get a channel
  ///
  /// Get channel from the provided channel id string. ##### Permissions `read_channel` permission for the channel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  Future<Response> getChannelWithHttpInfo(
    String channelId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/{channel_id}'.replaceAll('{channel_id}', channelId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
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

  /// Get a channel
  ///
  /// Get channel from the provided channel id string. ##### Permissions `read_channel` permission for the channel.
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  Future<MmChannel?> getChannel(
    String channelId,
  ) async {
    final response = await getChannelWithHttpInfo(
      channelId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmChannel',
      ) as MmChannel;
    }
    return null;
  }

  /// Get a channel by name
  ///
  /// Gets channel from the provided team id and channel name strings. ##### Permissions `read_channel` permission for the channel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] channelName (required):
  ///   Channel Name
  ///
  /// * [bool] includeDeleted:
  ///   Defines if deleted channels should be returned or not (Mattermost Server 5.26.0+)
  Future<Response> getChannelByNameWithHttpInfo(
    String teamId,
    String channelName, {
    bool? includeDeleted,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/channels/name/{channel_name}'
        .replaceAll('{team_id}', teamId)
        .replaceAll('{channel_name}', channelName);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (includeDeleted != null) {
      queryParams.addAll(_queryParams('', 'include_deleted', includeDeleted));
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

  /// Get a channel by name
  ///
  /// Gets channel from the provided team id and channel name strings. ##### Permissions `read_channel` permission for the channel.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] channelName (required):
  ///   Channel Name
  ///
  /// * [bool] includeDeleted:
  ///   Defines if deleted channels should be returned or not (Mattermost Server 5.26.0+)
  Future<MmChannel?> getChannelByName(
    String teamId,
    String channelName, {
    bool? includeDeleted,
  }) async {
    final response = await getChannelByNameWithHttpInfo(
      teamId,
      channelName,
      includeDeleted: includeDeleted,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmChannel',
      ) as MmChannel;
    }
    return null;
  }

  /// Get a channel by name and team name
  ///
  /// Gets a channel from the provided team name and channel name strings. ##### Permissions `read_channel` permission for the channel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamName (required):
  ///   Team Name
  ///
  /// * [String] channelName (required):
  ///   Channel Name
  ///
  /// * [bool] includeDeleted:
  ///   Defines if deleted channels should be returned or not (Mattermost Server 5.26.0+)
  Future<Response> getChannelByNameForTeamNameWithHttpInfo(
    String teamName,
    String channelName, {
    bool? includeDeleted,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/name/{team_name}/channels/name/{channel_name}'
        .replaceAll('{team_name}', teamName)
        .replaceAll('{channel_name}', channelName);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (includeDeleted != null) {
      queryParams.addAll(_queryParams('', 'include_deleted', includeDeleted));
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

  /// Get a channel by name and team name
  ///
  /// Gets a channel from the provided team name and channel name strings. ##### Permissions `read_channel` permission for the channel.
  ///
  /// Parameters:
  ///
  /// * [String] teamName (required):
  ///   Team Name
  ///
  /// * [String] channelName (required):
  ///   Channel Name
  ///
  /// * [bool] includeDeleted:
  ///   Defines if deleted channels should be returned or not (Mattermost Server 5.26.0+)
  Future<MmChannel?> getChannelByNameForTeamName(
    String teamName,
    String channelName, {
    bool? includeDeleted,
  }) async {
    final response = await getChannelByNameForTeamNameWithHttpInfo(
      teamName,
      channelName,
      includeDeleted: includeDeleted,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmChannel',
      ) as MmChannel;
    }
    return null;
  }

  /// Get channel member
  ///
  /// Get a channel member. ##### Permissions `read_channel` permission for the channel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<Response> getChannelMemberWithHttpInfo(
    String channelId,
    String userId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/{channel_id}/members/{user_id}'
        .replaceAll('{channel_id}', channelId)
        .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
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

  /// Get channel member
  ///
  /// Get a channel member. ##### Permissions `read_channel` permission for the channel.
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<MmChannelMember?> getChannelMember(
    String channelId,
    String userId,
  ) async {
    final response = await getChannelMemberWithHttpInfo(
      channelId,
      userId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmChannelMember',
      ) as MmChannelMember;
    }
    return null;
  }

  /// Channel members counts for each group that has atleast one member in the channel
  ///
  /// Returns a set of ChannelMemberCountByGroup objects which contain a `group_id`, `channel_member_count` and a `channel_member_timezones_count`. ##### Permissions Must have `read_channel` permission for the given channel. __Minimum server version__: 5.24
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [bool] includeTimezones:
  ///   Defines if member timezone counts should be returned or not
  Future<Response> getChannelMemberCountsByGroupWithHttpInfo(
    String channelId, {
    bool? includeTimezones,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/{channel_id}/member_counts_by_group'.replaceAll('{channel_id}', channelId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (includeTimezones != null) {
      queryParams.addAll(_queryParams('', 'include_timezones', includeTimezones));
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

  /// Channel members counts for each group that has atleast one member in the channel
  ///
  /// Returns a set of ChannelMemberCountByGroup objects which contain a `group_id`, `channel_member_count` and a `channel_member_timezones_count`. ##### Permissions Must have `read_channel` permission for the given channel. __Minimum server version__: 5.24
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [bool] includeTimezones:
  ///   Defines if member timezone counts should be returned or not
  Future<void> getChannelMemberCountsByGroup(
    String channelId, {
    bool? includeTimezones,
  }) async {
    final response = await getChannelMemberCountsByGroupWithHttpInfo(
      channelId,
      includeTimezones: includeTimezones,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get channel members
  ///
  /// Get a page of members for a channel. ##### Permissions `read_channel` permission for the channel.
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
  ///   The number of members per page. There is a maximum limit of 200 members.
  Future<Response> getChannelMembersWithHttpInfo(
    String channelId, {
    int? page,
    int? perPage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/{channel_id}/members'.replaceAll('{channel_id}', channelId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
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

  /// Get channel members
  ///
  /// Get a page of members for a channel. ##### Permissions `read_channel` permission for the channel.
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
  ///   The number of members per page. There is a maximum limit of 200 members.
  Future<List<MmChannelMember>?> getChannelMembers(
    String channelId, {
    int? page,
    int? perPage,
  }) async {
    final response = await getChannelMembersWithHttpInfo(
      channelId,
      page: page,
      perPage: perPage,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MmChannelMember>') as List)
          .cast<MmChannelMember>()
          .toList();
    }
    return null;
  }

  /// Get channel members by ids
  ///
  /// Get a list of channel members based on the provided user ids. ##### Permissions Must have the `read_channel` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [List<String>] requestBody (required):
  ///   List of user ids
  Future<Response> getChannelMembersByIdsWithHttpInfo(
    String channelId,
    List<String> requestBody,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/{channel_id}/members/ids'.replaceAll('{channel_id}', channelId);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

    final queryParams = <MmQueryParam>[];
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

  /// Get channel members by ids
  ///
  /// Get a list of channel members based on the provided user ids. ##### Permissions Must have the `read_channel` permission.
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [List<String>] requestBody (required):
  ///   List of user ids
  Future<List<MmChannelMember>?> getChannelMembersByIds(
    String channelId,
    List<String> requestBody,
  ) async {
    final response = await getChannelMembersByIdsWithHttpInfo(
      channelId,
      requestBody,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MmChannelMember>') as List)
          .cast<MmChannelMember>()
          .toList();
    }
    return null;
  }

  /// Get channel memberships and roles for a user
  ///
  /// Get all channel memberships and associated membership roles (i.e. `channel_user`, `channel_admin`) for a user on a specific team. ##### Permissions Logged in as the user and `view_team` permission for the team. Having `manage_system` permission voids the previous requirements.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  Future<Response> getChannelMembersForUserWithHttpInfo(
    String userId,
    String teamId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/teams/{team_id}/channels/members'
        .replaceAll('{user_id}', userId)
        .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
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

  /// Get channel memberships and roles for a user
  ///
  /// Get all channel memberships and associated membership roles (i.e. `channel_user`, `channel_admin`) for a user on a specific team. ##### Permissions Logged in as the user and `view_team` permission for the team. Having `manage_system` permission voids the previous requirements.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  Future<List<MmChannelMember>?> getChannelMembersForUser(
    String userId,
    String teamId,
  ) async {
    final response = await getChannelMembersForUserWithHttpInfo(
      userId,
      teamId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MmChannelMember>') as List)
          .cast<MmChannelMember>()
          .toList();
    }
    return null;
  }

  /// Get timezones in a channel
  ///
  /// Get a list of timezones for the users who are in this channel.  __Minimum server version__: 5.6  ##### Permissions Must have the `read_channel` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  Future<Response> getChannelMembersTimezonesWithHttpInfo(
    String channelId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/{channel_id}/timezones'.replaceAll('{channel_id}', channelId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
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

  /// Get timezones in a channel
  ///
  /// Get a list of timezones for the users who are in this channel.  __Minimum server version__: 5.6  ##### Permissions Must have the `read_channel` permission.
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  Future<List<String>?> getChannelMembersTimezones(
    String channelId,
  ) async {
    final response = await getChannelMembersTimezonesWithHttpInfo(
      channelId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List).cast<String>().toList();
    }
    return null;
  }

  /// Get information about channel's moderation.
  ///
  /// ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.22
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  Future<Response> getChannelModerationsWithHttpInfo(
    String channelId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/{channel_id}/moderations'.replaceAll('{channel_id}', channelId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
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

  /// Get information about channel's moderation.
  ///
  /// ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.22
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  Future<List<MmChannelModeration>?> getChannelModerations(
    String channelId,
  ) async {
    final response = await getChannelModerationsWithHttpInfo(
      channelId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MmChannelModeration>') as List)
          .cast<MmChannelModeration>()
          .toList();
    }
    return null;
  }

  /// Get channel statistics
  ///
  /// Get statistics for a channel. ##### Permissions Must have the `read_channel` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  Future<Response> getChannelStatsWithHttpInfo(
    String channelId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/{channel_id}/stats'.replaceAll('{channel_id}', channelId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
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

  /// Get channel statistics
  ///
  /// Get statistics for a channel. ##### Permissions Must have the `read_channel` permission.
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  Future<MmChannelStats?> getChannelStats(
    String channelId,
  ) async {
    final response = await getChannelStatsWithHttpInfo(
      channelId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmChannelStats',
      ) as MmChannelStats;
    }
    return null;
  }

  /// Get unread messages
  ///
  /// Get the total unread messages and mentions for a channel for a user. ##### Permissions Must be logged in as user and have the `read_channel` permission, or have `edit_other_usrs` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  Future<Response> getChannelUnreadWithHttpInfo(
    String userId,
    String channelId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/channels/{channel_id}/unread'
        .replaceAll('{user_id}', userId)
        .replaceAll('{channel_id}', channelId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
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

  /// Get unread messages
  ///
  /// Get the total unread messages and mentions for a channel for a user. ##### Permissions Must be logged in as user and have the `read_channel` permission, or have `edit_other_usrs` permission.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  Future<MmChannelUnread?> getChannelUnread(
    String userId,
    String channelId,
  ) async {
    final response = await getChannelUnreadWithHttpInfo(
      userId,
      channelId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmChannelUnread',
      ) as MmChannelUnread;
    }
    return null;
  }

  /// Get channels for user
  ///
  /// Get all the channels on a team for a user. ##### Permissions Logged in as the user, or have `edit_other_users` permission, and `view_team` permission for the team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [bool] includeDeleted:
  ///   Defines if deleted channels should be returned or not
  ///
  /// * [int] lastDeleteAt:
  ///   Filters the deleted channels by this time in epoch format. Does not have any effect if include_deleted is set to false.
  Future<Response> getChannelsForTeamForUserWithHttpInfo(
    String userId,
    String teamId, {
    bool? includeDeleted,
    int? lastDeleteAt,
  }) async {
    // ignore: prefer_const_declarations
    final path =
        r'/users/{user_id}/teams/{team_id}/channels'.replaceAll('{user_id}', userId).replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (includeDeleted != null) {
      queryParams.addAll(_queryParams('', 'include_deleted', includeDeleted));
    }
    if (lastDeleteAt != null) {
      queryParams.addAll(_queryParams('', 'last_delete_at', lastDeleteAt));
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

  /// Get channels for user
  ///
  /// Get all the channels on a team for a user. ##### Permissions Logged in as the user, or have `edit_other_users` permission, and `view_team` permission for the team.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [bool] includeDeleted:
  ///   Defines if deleted channels should be returned or not
  ///
  /// * [int] lastDeleteAt:
  ///   Filters the deleted channels by this time in epoch format. Does not have any effect if include_deleted is set to false.
  Future<List<MmChannel>?> getChannelsForTeamForUser(
    String userId,
    String teamId, {
    bool? includeDeleted,
    int? lastDeleteAt,
  }) async {
    final response = await getChannelsForTeamForUserWithHttpInfo(
      userId,
      teamId,
      includeDeleted: includeDeleted,
      lastDeleteAt: lastDeleteAt,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MmChannel>') as List).cast<MmChannel>().toList();
    }
    return null;
  }

  /// Get all channels from all teams
  ///
  /// Get all channels from all teams that a user is a member of.  __Minimum server version__: 6.1  ##### Permissions  Logged in as the user, or have `edit_other_users` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user. This can also be \"me\" which will point to the current user.
  ///
  /// * [int] lastDeleteAt:
  ///   Filters the deleted channels by this time in epoch format. Does not have any effect if include_deleted is set to false.
  ///
  /// * [bool] includeDeleted:
  ///   Defines if deleted channels should be returned or not
  Future<Response> getChannelsForUserWithHttpInfo(
    String userId, {
    int? lastDeleteAt,
    bool? includeDeleted,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/channels'.replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (lastDeleteAt != null) {
      queryParams.addAll(_queryParams('', 'last_delete_at', lastDeleteAt));
    }
    if (includeDeleted != null) {
      queryParams.addAll(_queryParams('', 'include_deleted', includeDeleted));
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

  /// Get all channels from all teams
  ///
  /// Get all channels from all teams that a user is a member of.  __Minimum server version__: 6.1  ##### Permissions  Logged in as the user, or have `edit_other_users` permission.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user. This can also be \"me\" which will point to the current user.
  ///
  /// * [int] lastDeleteAt:
  ///   Filters the deleted channels by this time in epoch format. Does not have any effect if include_deleted is set to false.
  ///
  /// * [bool] includeDeleted:
  ///   Defines if deleted channels should be returned or not
  Future<List<MmChannel>?> getChannelsForUser(
    String userId, {
    int? lastDeleteAt,
    bool? includeDeleted,
  }) async {
    final response = await getChannelsForUserWithHttpInfo(
      userId,
      lastDeleteAt: lastDeleteAt,
      includeDeleted: includeDeleted,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MmChannel>') as List).cast<MmChannel>().toList();
    }
    return null;
  }

  /// Get deleted channels
  ///
  /// Get a page of deleted channels on a team based on query string parameters - team_id, page and per_page.  __Minimum server version__: 3.10
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
  ///   The number of public channels per page.
  Future<Response> getDeletedChannelsForTeamWithHttpInfo(
    String teamId, {
    int? page,
    int? perPage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/channels/deleted'.replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
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

  /// Get deleted channels
  ///
  /// Get a page of deleted channels on a team based on query string parameters - team_id, page and per_page.  __Minimum server version__: 3.10
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
  ///   The number of public channels per page.
  Future<List<MmChannel>?> getDeletedChannelsForTeam(
    String teamId, {
    int? page,
    int? perPage,
  }) async {
    final response = await getDeletedChannelsForTeamWithHttpInfo(
      teamId,
      page: page,
      perPage: perPage,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MmChannel>') as List).cast<MmChannel>().toList();
    }
    return null;
  }

  /// Get a channel's pinned posts
  ///
  /// Get a list of pinned posts for channel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  Future<Response> getPinnedPostsWithHttpInfo(
    String channelId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/{channel_id}/pinned'.replaceAll('{channel_id}', channelId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
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

  /// Get a channel's pinned posts
  ///
  /// Get a list of pinned posts for channel.
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  Future<MmPostList?> getPinnedPosts(
    String channelId,
  ) async {
    final response = await getPinnedPostsWithHttpInfo(
      channelId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmPostList',
      ) as MmPostList;
    }
    return null;
  }

  /// Get private channels
  ///
  /// Get a page of private channels on a team based on query string parameters - team_id, page and per_page.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission.
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
  ///   The number of private channels per page.
  Future<Response> getPrivateChannelsForTeamWithHttpInfo(
    String teamId, {
    int? page,
    int? perPage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/channels/private'.replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
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

  /// Get private channels
  ///
  /// Get a page of private channels on a team based on query string parameters - team_id, page and per_page.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission.
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
  ///   The number of private channels per page.
  Future<List<MmChannel>?> getPrivateChannelsForTeam(
    String teamId, {
    int? page,
    int? perPage,
  }) async {
    final response = await getPrivateChannelsForTeamWithHttpInfo(
      teamId,
      page: page,
      perPage: perPage,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MmChannel>') as List).cast<MmChannel>().toList();
    }
    return null;
  }

  /// Get a list of channels by ids
  ///
  /// Get a list of public channels on a team by id. ##### Permissions `view_team` for the team the channels are on.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [List<String>] requestBody (required):
  ///   List of channel ids
  Future<Response> getPublicChannelsByIdsForTeamWithHttpInfo(
    String teamId,
    List<String> requestBody,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/channels/ids'.replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

    final queryParams = <MmQueryParam>[];
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

  /// Get a list of channels by ids
  ///
  /// Get a list of public channels on a team by id. ##### Permissions `view_team` for the team the channels are on.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [List<String>] requestBody (required):
  ///   List of channel ids
  Future<List<MmChannel>?> getPublicChannelsByIdsForTeam(
    String teamId,
    List<String> requestBody,
  ) async {
    final response = await getPublicChannelsByIdsForTeamWithHttpInfo(
      teamId,
      requestBody,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MmChannel>') as List).cast<MmChannel>().toList();
    }
    return null;
  }

  /// Get public channels
  ///
  /// Get a page of public channels on a team based on query string parameters - page and per_page. ##### Permissions Must be authenticated and have the `list_team_channels` permission.
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
  ///   The number of public channels per page.
  Future<Response> getPublicChannelsForTeamWithHttpInfo(
    String teamId, {
    int? page,
    int? perPage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/channels'.replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
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

  /// Get public channels
  ///
  /// Get a page of public channels on a team based on query string parameters - page and per_page. ##### Permissions Must be authenticated and have the `list_team_channels` permission.
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
  ///   The number of public channels per page.
  Future<List<MmChannel>?> getPublicChannelsForTeam(
    String teamId, {
    int? page,
    int? perPage,
  }) async {
    final response = await getPublicChannelsForTeamWithHttpInfo(
      teamId,
      page: page,
      perPage: perPage,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MmChannel>') as List).cast<MmChannel>().toList();
    }
    return null;
  }

  /// Get user's sidebar categories
  ///
  /// Get a list of sidebar categories that will appear in the user's sidebar on the given team, including a list of channel IDs in each category. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<Response> getSidebarCategoriesForTeamForUserWithHttpInfo(
    String teamId,
    String userId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/teams/{team_id}/channels/categories'
        .replaceAll('{team_id}', teamId)
        .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
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

  /// Get user's sidebar categories
  ///
  /// Get a list of sidebar categories that will appear in the user's sidebar on the given team, including a list of channel IDs in each category. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<List<MmOrderedSidebarCategories>?> getSidebarCategoriesForTeamForUser(
    String teamId,
    String userId,
  ) async {
    final response = await getSidebarCategoriesForTeamForUserWithHttpInfo(
      teamId,
      userId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MmOrderedSidebarCategories>') as List)
          .cast<MmOrderedSidebarCategories>()
          .toList();
    }
    return null;
  }

  /// Get sidebar category
  ///
  /// Returns a single sidebar category for the user on the given team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] categoryId (required):
  ///   Category GUID
  Future<Response> getSidebarCategoryForTeamForUserWithHttpInfo(
    String teamId,
    String userId,
    String categoryId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/teams/{team_id}/channels/categories/{category_id}'
        .replaceAll('{team_id}', teamId)
        .replaceAll('{user_id}', userId)
        .replaceAll('{category_id}', categoryId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
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

  /// Get sidebar category
  ///
  /// Returns a single sidebar category for the user on the given team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] categoryId (required):
  ///   Category GUID
  Future<MmSidebarCategory?> getSidebarCategoryForTeamForUser(
    String teamId,
    String userId,
    String categoryId,
  ) async {
    final response = await getSidebarCategoryForTeamForUserWithHttpInfo(
      teamId,
      userId,
      categoryId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmSidebarCategory',
      ) as MmSidebarCategory;
    }
    return null;
  }

  /// Get user's sidebar category order
  ///
  /// Returns the order of the sidebar categories for a user on the given team as an array of IDs. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<Response> getSidebarCategoryOrderForTeamForUserWithHttpInfo(
    String teamId,
    String userId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/teams/{team_id}/channels/categories/order'
        .replaceAll('{team_id}', teamId)
        .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
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

  /// Get user's sidebar category order
  ///
  /// Returns the order of the sidebar categories for a user on the given team as an array of IDs. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<List<String>?> getSidebarCategoryOrderForTeamForUser(
    String teamId,
    String userId,
  ) async {
    final response = await getSidebarCategoryOrderForTeamForUserWithHttpInfo(
      teamId,
      userId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List).cast<String>().toList();
    }
    return null;
  }

  /// Move a channel
  ///
  /// Move a channel to another team.  __Minimum server version__: 5.26  ##### Permissions  Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [MmMoveChannelRequest] mmMoveChannelRequest (required):
  Future<Response> moveChannelWithHttpInfo(
    String channelId,
    MmMoveChannelRequest mmMoveChannelRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/{channel_id}/move'.replaceAll('{channel_id}', channelId);

    // ignore: prefer_final_locals
    Object? postBody = mmMoveChannelRequest;

    final queryParams = <MmQueryParam>[];
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

  /// Move a channel
  ///
  /// Move a channel to another team.  __Minimum server version__: 5.26  ##### Permissions  Must have `manage_system` permission.
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [MmMoveChannelRequest] mmMoveChannelRequest (required):
  Future<MmChannel?> moveChannel(
    String channelId,
    MmMoveChannelRequest mmMoveChannelRequest,
  ) async {
    final response = await moveChannelWithHttpInfo(
      channelId,
      mmMoveChannelRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmChannel',
      ) as MmChannel;
    }
    return null;
  }

  /// Patch a channel
  ///
  /// Partially update a channel by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions If updating a public channel, `manage_public_channel_members` permission is required. If updating a private channel, `manage_private_channel_members` permission is required.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [MmPatchChannelRequest] mmPatchChannelRequest (required):
  ///   Channel object to be updated
  Future<Response> patchChannelWithHttpInfo(
    String channelId,
    MmPatchChannelRequest mmPatchChannelRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/{channel_id}/patch'.replaceAll('{channel_id}', channelId);

    // ignore: prefer_final_locals
    Object? postBody = mmPatchChannelRequest;

    final queryParams = <MmQueryParam>[];
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

  /// Patch a channel
  ///
  /// Partially update a channel by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions If updating a public channel, `manage_public_channel_members` permission is required. If updating a private channel, `manage_private_channel_members` permission is required.
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [MmPatchChannelRequest] mmPatchChannelRequest (required):
  ///   Channel object to be updated
  Future<MmChannel?> patchChannel(
    String channelId,
    MmPatchChannelRequest mmPatchChannelRequest,
  ) async {
    final response = await patchChannelWithHttpInfo(
      channelId,
      mmPatchChannelRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmChannel',
      ) as MmChannel;
    }
    return null;
  }

  /// Update a channel's moderation settings.
  ///
  /// ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.22
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [MmChannelModerationPatch] mmChannelModerationPatch (required):
  Future<Response> patchChannelModerationsWithHttpInfo(
    String channelId,
    MmChannelModerationPatch mmChannelModerationPatch,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/{channel_id}/moderations/patch'.replaceAll('{channel_id}', channelId);

    // ignore: prefer_final_locals
    Object? postBody = mmChannelModerationPatch;

    final queryParams = <MmQueryParam>[];
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

  /// Update a channel's moderation settings.
  ///
  /// ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.22
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [MmChannelModerationPatch] mmChannelModerationPatch (required):
  Future<List<MmChannelModeration>?> patchChannelModerations(
    String channelId,
    MmChannelModerationPatch mmChannelModerationPatch,
  ) async {
    final response = await patchChannelModerationsWithHttpInfo(
      channelId,
      mmChannelModerationPatch,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MmChannelModeration>') as List)
          .cast<MmChannelModeration>()
          .toList();
    }
    return null;
  }

  /// Delete sidebar category
  ///
  /// Deletes a single sidebar category for the user on the given team. Only custom categories can be deleted. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] categoryId (required):
  ///   Category GUID
  Future<Response> removeSidebarCategoryForTeamForUserWithHttpInfo(
    String teamId,
    String userId,
    String categoryId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/teams/{team_id}/channels/categories/{category_id}'
        .replaceAll('{team_id}', teamId)
        .replaceAll('{user_id}', userId)
        .replaceAll('{category_id}', categoryId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
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

  /// Delete sidebar category
  ///
  /// Deletes a single sidebar category for the user on the given team. Only custom categories can be deleted. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] categoryId (required):
  ///   Category GUID
  Future<MmSidebarCategory?> removeSidebarCategoryForTeamForUser(
    String teamId,
    String userId,
    String categoryId,
  ) async {
    final response = await removeSidebarCategoryForTeamForUserWithHttpInfo(
      teamId,
      userId,
      categoryId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmSidebarCategory',
      ) as MmSidebarCategory;
    }
    return null;
  }

  /// Remove user from channel
  ///
  /// Delete a channel member, effectively removing them from a channel.  In server version 5.3 and later, channel members can only be deleted from public or private channels. ##### Permissions `manage_public_channel_members` permission if the channel is public. `manage_private_channel_members` permission if the channel is private.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<Response> removeUserFromChannelWithHttpInfo(
    String channelId,
    String userId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/{channel_id}/members/{user_id}'
        .replaceAll('{channel_id}', channelId)
        .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
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

  /// Remove user from channel
  ///
  /// Delete a channel member, effectively removing them from a channel.  In server version 5.3 and later, channel members can only be deleted from public or private channels. ##### Permissions `manage_public_channel_members` permission if the channel is public. `manage_private_channel_members` permission if the channel is private.
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<MmStatusOK?> removeUserFromChannel(
    String channelId,
    String userId,
  ) async {
    final response = await removeUserFromChannelWithHttpInfo(
      channelId,
      userId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmStatusOK',
      ) as MmStatusOK;
    }
    return null;
  }

  /// Restore a channel
  ///
  /// Restore channel from the provided channel id string.  __Minimum server version__: 3.10  ##### Permissions `manage_team` permission for the team of the channel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  Future<Response> restoreChannelWithHttpInfo(
    String channelId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/{channel_id}/restore'.replaceAll('{channel_id}', channelId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
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

  /// Restore a channel
  ///
  /// Restore channel from the provided channel id string.  __Minimum server version__: 3.10  ##### Permissions `manage_team` permission for the team of the channel.
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  Future<MmChannel?> restoreChannel(
    String channelId,
  ) async {
    final response = await restoreChannelWithHttpInfo(
      channelId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmChannel',
      ) as MmChannel;
    }
    return null;
  }

  /// Search all private and open type channels across all teams
  ///
  /// Returns all private and open type channels where 'term' matches on the name, display name, or purpose of the channel.  Configured 'default' channels (ex Town Square and Off-Topic) can be excluded from the results with the `exclude_default_channels` boolean parameter.  Channels that are associated (via GroupChannel records) to a given group can be excluded from the results with the `not_associated_to_group` parameter and a group id string.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MmSearchAllChannelsRequest] mmSearchAllChannelsRequest (required):
  ///   The search terms and logic to use in the search.
  ///
  /// * [bool] systemConsole:
  ///   Is the request from system_console. If this is set to true, it filters channels by the logged in user.
  Future<Response> searchAllChannelsWithHttpInfo(
    MmSearchAllChannelsRequest mmSearchAllChannelsRequest, {
    bool? systemConsole,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/search';

    // ignore: prefer_final_locals
    Object? postBody = mmSearchAllChannelsRequest;

    final queryParams = <MmQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (systemConsole != null) {
      queryParams.addAll(_queryParams('', 'system_console', systemConsole));
    }

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

  /// Search all private and open type channels across all teams
  ///
  /// Returns all private and open type channels where 'term' matches on the name, display name, or purpose of the channel.  Configured 'default' channels (ex Town Square and Off-Topic) can be excluded from the results with the `exclude_default_channels` boolean parameter.  Channels that are associated (via GroupChannel records) to a given group can be excluded from the results with the `not_associated_to_group` parameter and a group id string.
  ///
  /// Parameters:
  ///
  /// * [MmSearchAllChannelsRequest] mmSearchAllChannelsRequest (required):
  ///   The search terms and logic to use in the search.
  ///
  /// * [bool] systemConsole:
  ///   Is the request from system_console. If this is set to true, it filters channels by the logged in user.
  Future<MmSearchAllChannels200Response?> searchAllChannels(
    MmSearchAllChannelsRequest mmSearchAllChannelsRequest, {
    bool? systemConsole,
  }) async {
    final response = await searchAllChannelsWithHttpInfo(
      mmSearchAllChannelsRequest,
      systemConsole: systemConsole,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmSearchAllChannels200Response',
      ) as MmSearchAllChannels200Response;
    }
    return null;
  }

  /// Search archived channels
  ///
  /// Search archived channels on a team based on the search term provided in the request body.  __Minimum server version__: 5.18  ##### Permissions Must have the `list_team_channels` permission.  In server version 5.18 and later, a user without the `list_team_channels` permission will be able to use this endpoint, with the search results limited to the channels that the user is a member of.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [MmSearchArchivedChannelsRequest] mmSearchArchivedChannelsRequest (required):
  ///   Search criteria
  Future<Response> searchArchivedChannelsWithHttpInfo(
    String teamId,
    MmSearchArchivedChannelsRequest mmSearchArchivedChannelsRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/channels/search_archived'.replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody = mmSearchArchivedChannelsRequest;

    final queryParams = <MmQueryParam>[];
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

  /// Search archived channels
  ///
  /// Search archived channels on a team based on the search term provided in the request body.  __Minimum server version__: 5.18  ##### Permissions Must have the `list_team_channels` permission.  In server version 5.18 and later, a user without the `list_team_channels` permission will be able to use this endpoint, with the search results limited to the channels that the user is a member of.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [MmSearchArchivedChannelsRequest] mmSearchArchivedChannelsRequest (required):
  ///   Search criteria
  Future<List<MmChannel>?> searchArchivedChannels(
    String teamId,
    MmSearchArchivedChannelsRequest mmSearchArchivedChannelsRequest,
  ) async {
    final response = await searchArchivedChannelsWithHttpInfo(
      teamId,
      mmSearchArchivedChannelsRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MmChannel>') as List).cast<MmChannel>().toList();
    }
    return null;
  }

  /// Search channels
  ///
  /// Search public channels on a team based on the search term provided in the request body. ##### Permissions Must have the `list_team_channels` permission.  In server version 5.16 and later, a user without the `list_team_channels` permission will be able to use this endpoint, with the search results limited to the channels that the user is a member of.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [MmSearchChannelsRequest] mmSearchChannelsRequest (required):
  ///   Search criteria
  Future<Response> searchChannelsWithHttpInfo(
    String teamId,
    MmSearchChannelsRequest mmSearchChannelsRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/channels/search'.replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody = mmSearchChannelsRequest;

    final queryParams = <MmQueryParam>[];
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

  /// Search channels
  ///
  /// Search public channels on a team based on the search term provided in the request body. ##### Permissions Must have the `list_team_channels` permission.  In server version 5.16 and later, a user without the `list_team_channels` permission will be able to use this endpoint, with the search results limited to the channels that the user is a member of.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [MmSearchChannelsRequest] mmSearchChannelsRequest (required):
  ///   Search criteria
  Future<List<MmChannel>?> searchChannels(
    String teamId,
    MmSearchChannelsRequest mmSearchChannelsRequest,
  ) async {
    final response = await searchChannelsWithHttpInfo(
      teamId,
      mmSearchChannelsRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MmChannel>') as List).cast<MmChannel>().toList();
    }
    return null;
  }

  /// Search Group Channels
  ///
  /// Get a list of group channels for a user which members' usernames match the search term.  __Minimum server version__: 5.14
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MmSearchGroupChannelsRequest] mmSearchGroupChannelsRequest (required):
  ///   Search criteria
  Future<Response> searchGroupChannelsWithHttpInfo(
    MmSearchGroupChannelsRequest mmSearchGroupChannelsRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/group/search';

    // ignore: prefer_final_locals
    Object? postBody = mmSearchGroupChannelsRequest;

    final queryParams = <MmQueryParam>[];
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

  /// Search Group Channels
  ///
  /// Get a list of group channels for a user which members' usernames match the search term.  __Minimum server version__: 5.14
  ///
  /// Parameters:
  ///
  /// * [MmSearchGroupChannelsRequest] mmSearchGroupChannelsRequest (required):
  ///   Search criteria
  Future<List<MmChannel>?> searchGroupChannels(
    MmSearchGroupChannelsRequest mmSearchGroupChannelsRequest,
  ) async {
    final response = await searchGroupChannelsWithHttpInfo(
      mmSearchGroupChannelsRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MmChannel>') as List).cast<MmChannel>().toList();
    }
    return null;
  }

  /// Update a channel
  ///
  /// Update a channel. The fields that can be updated are listed as parameters. Omitted fields will be treated as blanks. ##### Permissions If updating a public channel, `manage_public_channel_members` permission is required. If updating a private channel, `manage_private_channel_members` permission is required.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [MmUpdateChannelRequest] mmUpdateChannelRequest (required):
  ///   Channel object to be updated
  Future<Response> updateChannelWithHttpInfo(
    String channelId,
    MmUpdateChannelRequest mmUpdateChannelRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/{channel_id}'.replaceAll('{channel_id}', channelId);

    // ignore: prefer_final_locals
    Object? postBody = mmUpdateChannelRequest;

    final queryParams = <MmQueryParam>[];
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

  /// Update a channel
  ///
  /// Update a channel. The fields that can be updated are listed as parameters. Omitted fields will be treated as blanks. ##### Permissions If updating a public channel, `manage_public_channel_members` permission is required. If updating a private channel, `manage_private_channel_members` permission is required.
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [MmUpdateChannelRequest] mmUpdateChannelRequest (required):
  ///   Channel object to be updated
  Future<MmChannel?> updateChannel(
    String channelId,
    MmUpdateChannelRequest mmUpdateChannelRequest,
  ) async {
    final response = await updateChannelWithHttpInfo(
      channelId,
      mmUpdateChannelRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmChannel',
      ) as MmChannel;
    }
    return null;
  }

  /// Update the scheme-derived roles of a channel member.
  ///
  /// Update a channel member's scheme_admin/scheme_user properties. Typically this should either be `scheme_admin=false, scheme_user=true` for ordinary channel member, or `scheme_admin=true, scheme_user=true` for a channel admin. __Minimum server version__: 5.0 ##### Permissions Must be authenticated and have the `manage_channel_roles` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [MmUpdateTeamMemberSchemeRolesRequest] mmUpdateTeamMemberSchemeRolesRequest (required):
  ///   Scheme properties.
  Future<Response> updateChannelMemberSchemeRolesWithHttpInfo(
    String channelId,
    String userId,
    MmUpdateTeamMemberSchemeRolesRequest mmUpdateTeamMemberSchemeRolesRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/{channel_id}/members/{user_id}/schemeRoles'
        .replaceAll('{channel_id}', channelId)
        .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = mmUpdateTeamMemberSchemeRolesRequest;

    final queryParams = <MmQueryParam>[];
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

  /// Update the scheme-derived roles of a channel member.
  ///
  /// Update a channel member's scheme_admin/scheme_user properties. Typically this should either be `scheme_admin=false, scheme_user=true` for ordinary channel member, or `scheme_admin=true, scheme_user=true` for a channel admin. __Minimum server version__: 5.0 ##### Permissions Must be authenticated and have the `manage_channel_roles` permission.
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [MmUpdateTeamMemberSchemeRolesRequest] mmUpdateTeamMemberSchemeRolesRequest (required):
  ///   Scheme properties.
  Future<MmStatusOK?> updateChannelMemberSchemeRoles(
    String channelId,
    String userId,
    MmUpdateTeamMemberSchemeRolesRequest mmUpdateTeamMemberSchemeRolesRequest,
  ) async {
    final response = await updateChannelMemberSchemeRolesWithHttpInfo(
      channelId,
      userId,
      mmUpdateTeamMemberSchemeRolesRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmStatusOK',
      ) as MmStatusOK;
    }
    return null;
  }

  /// Update channel notifications
  ///
  /// Update a user's notification properties for a channel. Only the provided fields are updated. ##### Permissions Must be logged in as the user or have `edit_other_users` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [MmChannelNotifyProps] mmChannelNotifyProps (required):
  Future<Response> updateChannelNotifyPropsWithHttpInfo(
    String channelId,
    String userId,
    MmChannelNotifyProps mmChannelNotifyProps,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/{channel_id}/members/{user_id}/notify_props'
        .replaceAll('{channel_id}', channelId)
        .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = mmChannelNotifyProps;

    final queryParams = <MmQueryParam>[];
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

  /// Update channel notifications
  ///
  /// Update a user's notification properties for a channel. Only the provided fields are updated. ##### Permissions Must be logged in as the user or have `edit_other_users` permission.
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [MmChannelNotifyProps] mmChannelNotifyProps (required):
  Future<MmStatusOK?> updateChannelNotifyProps(
    String channelId,
    String userId,
    MmChannelNotifyProps mmChannelNotifyProps,
  ) async {
    final response = await updateChannelNotifyPropsWithHttpInfo(
      channelId,
      userId,
      mmChannelNotifyProps,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmStatusOK',
      ) as MmStatusOK;
    }
    return null;
  }

  /// Update channel's privacy
  ///
  /// Updates channel's privacy allowing changing a channel from Public to Private and back.  __Minimum server version__: 5.16  ##### Permissions `manage_team` permission for the channels team on version < 5.28. `convert_public_channel_to_private` permission for the channel if updating privacy to 'P' on version >= 5.28. `convert_private_channel_to_public` permission for the channel if updating privacy to 'O' on version >= 5.28.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [MmUpdateChannelPrivacyRequest] mmUpdateChannelPrivacyRequest (required):
  Future<Response> updateChannelPrivacyWithHttpInfo(
    String channelId,
    MmUpdateChannelPrivacyRequest mmUpdateChannelPrivacyRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/{channel_id}/privacy'.replaceAll('{channel_id}', channelId);

    // ignore: prefer_final_locals
    Object? postBody = mmUpdateChannelPrivacyRequest;

    final queryParams = <MmQueryParam>[];
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

  /// Update channel's privacy
  ///
  /// Updates channel's privacy allowing changing a channel from Public to Private and back.  __Minimum server version__: 5.16  ##### Permissions `manage_team` permission for the channels team on version < 5.28. `convert_public_channel_to_private` permission for the channel if updating privacy to 'P' on version >= 5.28. `convert_private_channel_to_public` permission for the channel if updating privacy to 'O' on version >= 5.28.
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [MmUpdateChannelPrivacyRequest] mmUpdateChannelPrivacyRequest (required):
  Future<MmChannel?> updateChannelPrivacy(
    String channelId,
    MmUpdateChannelPrivacyRequest mmUpdateChannelPrivacyRequest,
  ) async {
    final response = await updateChannelPrivacyWithHttpInfo(
      channelId,
      mmUpdateChannelPrivacyRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmChannel',
      ) as MmChannel;
    }
    return null;
  }

  /// Update channel roles
  ///
  /// Update a user's roles for a channel. ##### Permissions Must have `manage_channel_roles` permission for the channel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [MmUpdateUserRolesRequest] mmUpdateUserRolesRequest (required):
  ///   Space-delimited channel roles to assign to the user
  Future<Response> updateChannelRolesWithHttpInfo(
    String channelId,
    String userId,
    MmUpdateUserRolesRequest mmUpdateUserRolesRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/{channel_id}/members/{user_id}/roles'
        .replaceAll('{channel_id}', channelId)
        .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = mmUpdateUserRolesRequest;

    final queryParams = <MmQueryParam>[];
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

  /// Update channel roles
  ///
  /// Update a user's roles for a channel. ##### Permissions Must have `manage_channel_roles` permission for the channel.
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [MmUpdateUserRolesRequest] mmUpdateUserRolesRequest (required):
  ///   Space-delimited channel roles to assign to the user
  Future<MmStatusOK?> updateChannelRoles(
    String channelId,
    String userId,
    MmUpdateUserRolesRequest mmUpdateUserRolesRequest,
  ) async {
    final response = await updateChannelRolesWithHttpInfo(
      channelId,
      userId,
      mmUpdateUserRolesRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmStatusOK',
      ) as MmStatusOK;
    }
    return null;
  }

  /// Set a channel's scheme
  ///
  /// Set a channel's scheme, more specifically sets the scheme_id value of a channel record.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.10
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [MmUpdateTeamSchemeRequest] mmUpdateTeamSchemeRequest (required):
  ///   Scheme GUID
  Future<Response> updateChannelSchemeWithHttpInfo(
    String channelId,
    MmUpdateTeamSchemeRequest mmUpdateTeamSchemeRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/{channel_id}/scheme'.replaceAll('{channel_id}', channelId);

    // ignore: prefer_final_locals
    Object? postBody = mmUpdateTeamSchemeRequest;

    final queryParams = <MmQueryParam>[];
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

  /// Set a channel's scheme
  ///
  /// Set a channel's scheme, more specifically sets the scheme_id value of a channel record.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.10
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   Channel GUID
  ///
  /// * [MmUpdateTeamSchemeRequest] mmUpdateTeamSchemeRequest (required):
  ///   Scheme GUID
  Future<MmStatusOK?> updateChannelScheme(
    String channelId,
    MmUpdateTeamSchemeRequest mmUpdateTeamSchemeRequest,
  ) async {
    final response = await updateChannelSchemeWithHttpInfo(
      channelId,
      mmUpdateTeamSchemeRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmStatusOK',
      ) as MmStatusOK;
    }
    return null;
  }

  /// Update user's sidebar categories
  ///
  /// Update any number of sidebar categories for the user on the given team. This can be used to reorder the channels in these categories. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [List<MmSidebarCategory>] mmSidebarCategory (required):
  Future<Response> updateSidebarCategoriesForTeamForUserWithHttpInfo(
    String teamId,
    String userId,
    List<MmSidebarCategory> mmSidebarCategory,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/teams/{team_id}/channels/categories'
        .replaceAll('{team_id}', teamId)
        .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = mmSidebarCategory;

    final queryParams = <MmQueryParam>[];
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

  /// Update user's sidebar categories
  ///
  /// Update any number of sidebar categories for the user on the given team. This can be used to reorder the channels in these categories. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [List<MmSidebarCategory>] mmSidebarCategory (required):
  Future<MmSidebarCategory?> updateSidebarCategoriesForTeamForUser(
    String teamId,
    String userId,
    List<MmSidebarCategory> mmSidebarCategory,
  ) async {
    final response = await updateSidebarCategoriesForTeamForUserWithHttpInfo(
      teamId,
      userId,
      mmSidebarCategory,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmSidebarCategory',
      ) as MmSidebarCategory;
    }
    return null;
  }

  /// Update sidebar category
  ///
  /// Updates a single sidebar category for the user on the given team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] categoryId (required):
  ///   Category GUID
  ///
  /// * [MmSidebarCategory] mmSidebarCategory (required):
  Future<Response> updateSidebarCategoryForTeamForUserWithHttpInfo(
    String teamId,
    String userId,
    String categoryId,
    MmSidebarCategory mmSidebarCategory,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/teams/{team_id}/channels/categories/{category_id}'
        .replaceAll('{team_id}', teamId)
        .replaceAll('{user_id}', userId)
        .replaceAll('{category_id}', categoryId);

    // ignore: prefer_final_locals
    Object? postBody = mmSidebarCategory;

    final queryParams = <MmQueryParam>[];
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

  /// Update sidebar category
  ///
  /// Updates a single sidebar category for the user on the given team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] categoryId (required):
  ///   Category GUID
  ///
  /// * [MmSidebarCategory] mmSidebarCategory (required):
  Future<MmSidebarCategory?> updateSidebarCategoryForTeamForUser(
    String teamId,
    String userId,
    String categoryId,
    MmSidebarCategory mmSidebarCategory,
  ) async {
    final response = await updateSidebarCategoryForTeamForUserWithHttpInfo(
      teamId,
      userId,
      categoryId,
      mmSidebarCategory,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmSidebarCategory',
      ) as MmSidebarCategory;
    }
    return null;
  }

  /// Update user's sidebar category order
  ///
  /// Updates the order of the sidebar categories for a user on the given team. The provided array must include the IDs of all categories on the team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [List<String>] requestBody (required):
  Future<Response> updateSidebarCategoryOrderForTeamForUserWithHttpInfo(
    String teamId,
    String userId,
    List<String> requestBody,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/teams/{team_id}/channels/categories/order'
        .replaceAll('{team_id}', teamId)
        .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

    final queryParams = <MmQueryParam>[];
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

  /// Update user's sidebar category order
  ///
  /// Updates the order of the sidebar categories for a user on the given team. The provided array must include the IDs of all categories on the team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [List<String>] requestBody (required):
  Future<List<String>?> updateSidebarCategoryOrderForTeamForUser(
    String teamId,
    String userId,
    List<String> requestBody,
  ) async {
    final response = await updateSidebarCategoryOrderForTeamForUserWithHttpInfo(
      teamId,
      userId,
      requestBody,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List).cast<String>().toList();
    }
    return null;
  }

  /// View channel
  ///
  /// Perform all the actions involved in viewing a channel. This includes marking channels as read, clearing push notifications, and updating the active channel. ##### Permissions Must be logged in as user or have `edit_other_users` permission.  __Response only includes `last_viewed_at_times` in Mattermost server 4.3 and newer.__
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User ID to perform the view action for
  ///
  /// * [MmViewChannelRequest] mmViewChannelRequest (required):
  ///   Paremeters affecting how and which channels to view
  Future<Response> viewChannelWithHttpInfo(
    String userId,
    MmViewChannelRequest mmViewChannelRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/members/{user_id}/view'.replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = mmViewChannelRequest;

    final queryParams = <MmQueryParam>[];
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

  /// View channel
  ///
  /// Perform all the actions involved in viewing a channel. This includes marking channels as read, clearing push notifications, and updating the active channel. ##### Permissions Must be logged in as user or have `edit_other_users` permission.  __Response only includes `last_viewed_at_times` in Mattermost server 4.3 and newer.__
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User ID to perform the view action for
  ///
  /// * [MmViewChannelRequest] mmViewChannelRequest (required):
  ///   Paremeters affecting how and which channels to view
  Future<MmViewChannel200Response?> viewChannel(
    String userId,
    MmViewChannelRequest mmViewChannelRequest,
  ) async {
    final response = await viewChannelWithHttpInfo(
      userId,
      mmViewChannelRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmViewChannel200Response',
      ) as MmViewChannel200Response;
    }
    return null;
  }
}
