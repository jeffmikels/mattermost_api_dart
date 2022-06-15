//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostInsightsApi {
  final MattermostApiClient apiClient;

  MattermostInsightsApi(this.apiClient);

  /// Get a list of the top channels for a team.
  ///
  /// Get a list of the top public and private channels (the user is a member of) for a given team. ##### Permissions Must have `view_team` permission for the team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] timeRange (required):
  ///   Time range can be \"today\", \"7_day\", or \"28_day\". - `today`: channels with posts on the current day. - `7_day`: channels with posts in the last 7 days. - `28_day`: channels with posts in the last 28 days.
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of items per page, up to a maximum of 200.
  Future<Response> getTopChannelsForTeamWithHttpInfo(
    String teamId,
    String timeRange, {
    int? page,
    int? perPage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/top/channels'.replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'time_range', timeRange));
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

  /// Get a list of the top channels for a team.
  ///
  /// Get a list of the top public and private channels (the user is a member of) for a given team. ##### Permissions Must have `view_team` permission for the team.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] timeRange (required):
  ///   Time range can be \"today\", \"7_day\", or \"28_day\". - `today`: channels with posts on the current day. - `7_day`: channels with posts in the last 7 days. - `28_day`: channels with posts in the last 28 days.
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of items per page, up to a maximum of 200.
  Future<MMTopChannelList?> getTopChannelsForTeam(
    String teamId,
    String timeRange, {
    int? page,
    int? perPage,
  }) async {
    final response = await getTopChannelsForTeamWithHttpInfo(
      teamId,
      timeRange,
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
        'MMTopChannelList',
      ) as MMTopChannelList;
    }
    return null;
  }

  /// Get a list of the top channels for a user.
  ///
  /// Get a list of the top public and private channels (the user is a member of) for a given user. ##### Permissions Must be logged in as the user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] timeRange (required):
  ///   Time range can be \"today\", \"7_day\", or \"28_day\". - `today`: channels with posts on the current day. - `7_day`: channels with posts in the last 7 days. - `28_day`: channels with posts in the last 28 days.
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of items per page, up to a maximum of 200.
  ///
  /// * [String] teamId:
  ///   Team ID will scope the response to a given team. ##### Permissions Must have `view_team` permission for the team.
  Future<Response> getTopChannelsForUserWithHttpInfo(
    String userId,
    String timeRange, {
    int? page,
    int? perPage,
    String? teamId,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/me/top/channels'.replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'time_range', timeRange));
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (teamId != null) {
      queryParams.addAll(_queryParams('', 'team_id', teamId));
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

  /// Get a list of the top channels for a user.
  ///
  /// Get a list of the top public and private channels (the user is a member of) for a given user. ##### Permissions Must be logged in as the user.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] timeRange (required):
  ///   Time range can be \"today\", \"7_day\", or \"28_day\". - `today`: channels with posts on the current day. - `7_day`: channels with posts in the last 7 days. - `28_day`: channels with posts in the last 28 days.
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of items per page, up to a maximum of 200.
  ///
  /// * [String] teamId:
  ///   Team ID will scope the response to a given team. ##### Permissions Must have `view_team` permission for the team.
  Future<MMTopReactionList?> getTopChannelsForUser(
    String userId,
    String timeRange, {
    int? page,
    int? perPage,
    String? teamId,
  }) async {
    final response = await getTopChannelsForUserWithHttpInfo(
      userId,
      timeRange,
      page: page,
      perPage: perPage,
      teamId: teamId,
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
        'MMTopReactionList',
      ) as MMTopReactionList;
    }
    return null;
  }

  /// Get a list of the top reactions for a team.
  ///
  /// Get a list of the top reactions across all public and private channels (the user is a member of) for a given team. ##### Permissions Must have `view_team` permission for the team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] timeRange (required):
  ///   Time range can be \"today\", \"7_day\", or \"28_day\". - `today`: reactions posted on the current day. - `7_day`: reactions posted in the last 7 days. - `28_day`: reactions posted in the last 28 days.
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of items per page, up to a maximum of 200.
  Future<Response> getTopReactionsForTeamWithHttpInfo(
    String teamId,
    String timeRange, {
    int? page,
    int? perPage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/top/reactions'.replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'time_range', timeRange));
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

  /// Get a list of the top reactions for a team.
  ///
  /// Get a list of the top reactions across all public and private channels (the user is a member of) for a given team. ##### Permissions Must have `view_team` permission for the team.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] timeRange (required):
  ///   Time range can be \"today\", \"7_day\", or \"28_day\". - `today`: reactions posted on the current day. - `7_day`: reactions posted in the last 7 days. - `28_day`: reactions posted in the last 28 days.
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of items per page, up to a maximum of 200.
  Future<MMTopReactionList?> getTopReactionsForTeam(
    String teamId,
    String timeRange, {
    int? page,
    int? perPage,
  }) async {
    final response = await getTopReactionsForTeamWithHttpInfo(
      teamId,
      timeRange,
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
        'MMTopReactionList',
      ) as MMTopReactionList;
    }
    return null;
  }

  /// Get a list of the top reactions for a user.
  ///
  /// Get a list of the top reactions across all public and private channels (the user is a member of) for a given user. If no `team_id` is provided, this will also include reactions posted by the given user in direct and group messages. ##### Permissions Must be logged in as the user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] timeRange (required):
  ///   Time range can be \"today\", \"7_day\", or \"28_day\". - `today`: reactions posted on the current day. - `7_day`: reactions posted in the last 7 days. - `28_day`: reactions posted in the last 28 days.
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of items per page, up to a maximum of 200.
  ///
  /// * [String] teamId:
  ///   Team ID will scope the response to a given team and exclude direct and group messages. ##### Permissions Must have `view_team` permission for the team.
  Future<Response> getTopReactionsForUserWithHttpInfo(
    String userId,
    String timeRange, {
    int? page,
    int? perPage,
    String? teamId,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/me/top/reactions'.replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'time_range', timeRange));
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (teamId != null) {
      queryParams.addAll(_queryParams('', 'team_id', teamId));
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

  /// Get a list of the top reactions for a user.
  ///
  /// Get a list of the top reactions across all public and private channels (the user is a member of) for a given user. If no `team_id` is provided, this will also include reactions posted by the given user in direct and group messages. ##### Permissions Must be logged in as the user.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] timeRange (required):
  ///   Time range can be \"today\", \"7_day\", or \"28_day\". - `today`: reactions posted on the current day. - `7_day`: reactions posted in the last 7 days. - `28_day`: reactions posted in the last 28 days.
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of items per page, up to a maximum of 200.
  ///
  /// * [String] teamId:
  ///   Team ID will scope the response to a given team and exclude direct and group messages. ##### Permissions Must have `view_team` permission for the team.
  Future<MMTopReactionList?> getTopReactionsForUser(
    String userId,
    String timeRange, {
    int? page,
    int? perPage,
    String? teamId,
  }) async {
    final response = await getTopReactionsForUserWithHttpInfo(
      userId,
      timeRange,
      page: page,
      perPage: perPage,
      teamId: teamId,
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
        'MMTopReactionList',
      ) as MMTopReactionList;
    }
    return null;
  }
}
