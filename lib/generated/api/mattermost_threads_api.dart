//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostThreadsApi {
  final MattermostApiClient apiClient;

  MattermostThreadsApi(this.apiClient);

  /// Get all unread mention counts from followed threads, per-channel
  ///
  /// Get all unread mention counts from followed threads  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user. This can also be \"me\" which will point to the current user.
  ///
  /// * [String] teamId (required):
  ///   The ID of the team in which the thread is.
  Future<Response> getThreadMentionCountsByChannelWithHttpInfo(
    String userId,
    String teamId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/teams/{team_id}/threads/mention_counts'
        .replaceAll('{user_id}', userId)
        .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
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

  /// Get all unread mention counts from followed threads, per-channel
  ///
  /// Get all unread mention counts from followed threads  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user. This can also be \"me\" which will point to the current user.
  ///
  /// * [String] teamId (required):
  ///   The ID of the team in which the thread is.
  Future<void> getThreadMentionCountsByChannel(
    String userId,
    String teamId,
  ) async {
    final response = await getThreadMentionCountsByChannelWithHttpInfo(
      userId,
      teamId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get a thread followed by the user
  ///
  /// Get a thread  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user. This can also be \"me\" which will point to the current user.
  ///
  /// * [String] teamId (required):
  ///   The ID of the team in which the thread is.
  ///
  /// * [String] threadId (required):
  ///   The ID of the thread to follow
  Future<Response> getUserThreadWithHttpInfo(
    String userId,
    String teamId,
    String threadId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/teams/{team_id}/threads/{thread_id}'
        .replaceAll('{user_id}', userId)
        .replaceAll('{team_id}', teamId)
        .replaceAll('{thread_id}', threadId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
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

  /// Get a thread followed by the user
  ///
  /// Get a thread  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user. This can also be \"me\" which will point to the current user.
  ///
  /// * [String] teamId (required):
  ///   The ID of the team in which the thread is.
  ///
  /// * [String] threadId (required):
  ///   The ID of the thread to follow
  Future<void> getUserThread(
    String userId,
    String teamId,
    String threadId,
  ) async {
    final response = await getUserThreadWithHttpInfo(
      userId,
      teamId,
      threadId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get all threads that user is following
  ///
  /// Get all threads that user is following  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user. This can also be \"me\" which will point to the current user.
  ///
  /// * [String] teamId (required):
  ///   The ID of the team in which the thread is.
  ///
  /// * [int] since:
  ///   Since filters the threads based on their LastUpdateAt timestamp.
  ///
  /// * [bool] deleted:
  ///   Deleted will specify that even deleted threads should be returned (For mobile sync).
  ///
  /// * [bool] extended:
  ///   Extended will enrich the response with participant details.
  ///
  /// * [int] page:
  ///   Page specifies which part of the results to return, by PageSize.
  ///
  /// * [int] pageSize:
  ///   PageSize specifies the size of the returned chunk of results.
  ///
  /// * [bool] totalsOnly:
  ///   Setting this to true will only return the total counts.
  Future<Response> getUserThreadsWithHttpInfo(
    String userId,
    String teamId, {
    int? since,
    bool? deleted,
    bool? extended,
    int? page,
    int? pageSize,
    bool? totalsOnly,
  }) async {
    // ignore: prefer_const_declarations
    final path =
        r'/users/{user_id}/teams/{team_id}/threads'.replaceAll('{user_id}', userId).replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (deleted != null) {
      queryParams.addAll(_queryParams('', 'deleted', deleted));
    }
    if (extended != null) {
      queryParams.addAll(_queryParams('', 'extended', extended));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
    }
    if (totalsOnly != null) {
      queryParams.addAll(_queryParams('', 'totalsOnly', totalsOnly));
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

  /// Get all threads that user is following
  ///
  /// Get all threads that user is following  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user. This can also be \"me\" which will point to the current user.
  ///
  /// * [String] teamId (required):
  ///   The ID of the team in which the thread is.
  ///
  /// * [int] since:
  ///   Since filters the threads based on their LastUpdateAt timestamp.
  ///
  /// * [bool] deleted:
  ///   Deleted will specify that even deleted threads should be returned (For mobile sync).
  ///
  /// * [bool] extended:
  ///   Extended will enrich the response with participant details.
  ///
  /// * [int] page:
  ///   Page specifies which part of the results to return, by PageSize.
  ///
  /// * [int] pageSize:
  ///   PageSize specifies the size of the returned chunk of results.
  ///
  /// * [bool] totalsOnly:
  ///   Setting this to true will only return the total counts.
  Future<MattermostUserThreads?> getUserThreads(
    String userId,
    String teamId, {
    int? since,
    bool? deleted,
    bool? extended,
    int? page,
    int? pageSize,
    bool? totalsOnly,
  }) async {
    final response = await getUserThreadsWithHttpInfo(
      userId,
      teamId,
      since: since,
      deleted: deleted,
      extended: extended,
      page: page,
      pageSize: pageSize,
      totalsOnly: totalsOnly,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MattermostUserThreads',
      ) as MattermostUserThreads;
    }
    return null;
  }

  /// Start following a thread
  ///
  /// Start following a thread  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user. This can also be \"me\" which will point to the current user.
  ///
  /// * [String] teamId (required):
  ///   The ID of the team in which the thread is.
  ///
  /// * [String] threadId (required):
  ///   The ID of the thread to follow
  Future<Response> startFollowingThreadWithHttpInfo(
    String userId,
    String teamId,
    String threadId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/teams/{team_id}/threads/{thread_id}/following'
        .replaceAll('{user_id}', userId)
        .replaceAll('{team_id}', teamId)
        .replaceAll('{thread_id}', threadId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

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

  /// Start following a thread
  ///
  /// Start following a thread  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user. This can also be \"me\" which will point to the current user.
  ///
  /// * [String] teamId (required):
  ///   The ID of the team in which the thread is.
  ///
  /// * [String] threadId (required):
  ///   The ID of the thread to follow
  Future<void> startFollowingThread(
    String userId,
    String teamId,
    String threadId,
  ) async {
    final response = await startFollowingThreadWithHttpInfo(
      userId,
      teamId,
      threadId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Stop following a thread
  ///
  /// Stop following a thread  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user. This can also be \"me\" which will point to the current user.
  ///
  /// * [String] teamId (required):
  ///   The ID of the team in which the thread is.
  ///
  /// * [String] threadId (required):
  ///   The ID of the thread to update
  Future<Response> stopFollowingThreadWithHttpInfo(
    String userId,
    String teamId,
    String threadId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/teams/{team_id}/threads/{thread_id}/following'
        .replaceAll('{user_id}', userId)
        .replaceAll('{team_id}', teamId)
        .replaceAll('{thread_id}', threadId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
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

  /// Stop following a thread
  ///
  /// Stop following a thread  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user. This can also be \"me\" which will point to the current user.
  ///
  /// * [String] teamId (required):
  ///   The ID of the team in which the thread is.
  ///
  /// * [String] threadId (required):
  ///   The ID of the thread to update
  Future<void> stopFollowingThread(
    String userId,
    String teamId,
    String threadId,
  ) async {
    final response = await stopFollowingThreadWithHttpInfo(
      userId,
      teamId,
      threadId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Mark a thread that user is following read state to the timestamp
  ///
  /// Mark a thread that user is following as read  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user. This can also be \"me\" which will point to the current user.
  ///
  /// * [String] teamId (required):
  ///   The ID of the team in which the thread is.
  ///
  /// * [String] threadId (required):
  ///   The ID of the thread to update
  ///
  /// * [String] timestamp (required):
  ///   The timestamp to which the thread's \"last read\" state will be reset.
  Future<Response> updateThreadReadForUserWithHttpInfo(
    String userId,
    String teamId,
    String threadId,
    String timestamp,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/teams/{team_id}/threads/{thread_id}/read/{timestamp}'
        .replaceAll('{user_id}', userId)
        .replaceAll('{team_id}', teamId)
        .replaceAll('{thread_id}', threadId)
        .replaceAll('{timestamp}', timestamp);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

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

  /// Mark a thread that user is following read state to the timestamp
  ///
  /// Mark a thread that user is following as read  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user. This can also be \"me\" which will point to the current user.
  ///
  /// * [String] teamId (required):
  ///   The ID of the team in which the thread is.
  ///
  /// * [String] threadId (required):
  ///   The ID of the thread to update
  ///
  /// * [String] timestamp (required):
  ///   The timestamp to which the thread's \"last read\" state will be reset.
  Future<void> updateThreadReadForUser(
    String userId,
    String teamId,
    String threadId,
    String timestamp,
  ) async {
    final response = await updateThreadReadForUserWithHttpInfo(
      userId,
      teamId,
      threadId,
      timestamp,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Mark all threads that user is following as read
  ///
  /// Mark all threads that user is following as read  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user. This can also be \"me\" which will point to the current user.
  ///
  /// * [String] teamId (required):
  ///   The ID of the team in which the thread is.
  Future<Response> updateThreadsReadForUserWithHttpInfo(
    String userId,
    String teamId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/teams/{team_id}/threads/read'
        .replaceAll('{user_id}', userId)
        .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

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

  /// Mark all threads that user is following as read
  ///
  /// Mark all threads that user is following as read  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user. This can also be \"me\" which will point to the current user.
  ///
  /// * [String] teamId (required):
  ///   The ID of the team in which the thread is.
  Future<void> updateThreadsReadForUser(
    String userId,
    String teamId,
  ) async {
    final response = await updateThreadsReadForUserWithHttpInfo(
      userId,
      teamId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
