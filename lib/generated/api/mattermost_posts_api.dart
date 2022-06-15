//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostPostsApi {
  final MattermostApiClient apiClient;

  MattermostPostsApi(this.apiClient);

  /// Create a post
  ///
  /// Create a new post in a channel. To create the post as a comment on another post, provide `root_id`. ##### Permissions Must have `create_post` permission for the channel the post is being created in.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MMCreatePostRequest] mMCreatePostRequest (required):
  ///   Post object to create
  ///
  /// * [bool] setOnline:
  ///   Whether to set the user status as online or not.
  Future<Response> createPostWithHttpInfo(
    MMCreatePostRequest mMCreatePostRequest, {
    bool? setOnline,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/posts';

    // ignore: prefer_final_locals
    Object? postBody = mMCreatePostRequest;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (setOnline != null) {
      queryParams.addAll(_queryParams('', 'set_online', setOnline));
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

  /// Create a post
  ///
  /// Create a new post in a channel. To create the post as a comment on another post, provide `root_id`. ##### Permissions Must have `create_post` permission for the channel the post is being created in.
  ///
  /// Parameters:
  ///
  /// * [MMCreatePostRequest] mMCreatePostRequest (required):
  ///   Post object to create
  ///
  /// * [bool] setOnline:
  ///   Whether to set the user status as online or not.
  Future<MMPost?> createPost(
    MMCreatePostRequest mMCreatePostRequest, {
    bool? setOnline,
  }) async {
    final response = await createPostWithHttpInfo(
      mMCreatePostRequest,
      setOnline: setOnline,
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
        'MMPost',
      ) as MMPost;
    }
    return null;
  }

  /// Create a ephemeral post
  ///
  /// Create a new ephemeral post in a channel. ##### Permissions Must have `create_post_ephemeral` permission (currently only given to system admin)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MMCreatePostEphemeralRequest] mMCreatePostEphemeralRequest (required):
  ///   Ephemeral Post object to send
  Future<Response> createPostEphemeralWithHttpInfo(
    MMCreatePostEphemeralRequest mMCreatePostEphemeralRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/posts/ephemeral';

    // ignore: prefer_final_locals
    Object? postBody = mMCreatePostEphemeralRequest;

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

  /// Create a ephemeral post
  ///
  /// Create a new ephemeral post in a channel. ##### Permissions Must have `create_post_ephemeral` permission (currently only given to system admin)
  ///
  /// Parameters:
  ///
  /// * [MMCreatePostEphemeralRequest] mMCreatePostEphemeralRequest (required):
  ///   Ephemeral Post object to send
  Future<MMPost?> createPostEphemeral(
    MMCreatePostEphemeralRequest mMCreatePostEphemeralRequest,
  ) async {
    final response = await createPostEphemeralWithHttpInfo(
      mMCreatePostEphemeralRequest,
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
        'MMPost',
      ) as MMPost;
    }
    return null;
  }

  /// Delete a post
  ///
  /// Soft deletes a post, by marking the post as deleted in the database. Soft deleted posts will not be returned in post queries. ##### Permissions Must be logged in as the user or have `delete_others_posts` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   ID of the post to delete
  Future<Response> deletePostWithHttpInfo(
    String postId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/posts/{post_id}'.replaceAll('{post_id}', postId);

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

  /// Delete a post
  ///
  /// Soft deletes a post, by marking the post as deleted in the database. Soft deleted posts will not be returned in post queries. ##### Permissions Must be logged in as the user or have `delete_others_posts` permission.
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   ID of the post to delete
  Future<MMStatusOK?> deletePost(
    String postId,
  ) async {
    final response = await deletePostWithHttpInfo(
      postId,
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

  /// Perform a post action
  ///
  /// Perform a post action, which allows users to interact with integrations through posts. ##### Permissions Must be authenticated and have the `read_channel` permission to the channel the post is in.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   Post GUID
  ///
  /// * [String] actionId (required):
  ///   Action GUID
  Future<Response> doPostActionWithHttpInfo(
    String postId,
    String actionId,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/posts/{post_id}/actions/{action_id}'.replaceAll('{post_id}', postId).replaceAll('{action_id}', actionId);

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

  /// Perform a post action
  ///
  /// Perform a post action, which allows users to interact with integrations through posts. ##### Permissions Must be authenticated and have the `read_channel` permission to the channel the post is in.
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   Post GUID
  ///
  /// * [String] actionId (required):
  ///   Action GUID
  Future<MMStatusOK?> doPostAction(
    String postId,
    String actionId,
  ) async {
    final response = await doPostActionWithHttpInfo(
      postId,
      actionId,
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

  /// Get file info for post
  ///
  /// Gets a list of file information objects for the files attached to a post. ##### Permissions Must have `read_channel` permission for the channel the post is in.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   ID of the post
  ///
  /// * [bool] includeDeleted:
  ///   Defines if result should include deleted posts, must have 'manage_system' (admin) permission.
  Future<Response> getFileInfosForPostWithHttpInfo(
    String postId, {
    bool? includeDeleted,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/posts/{post_id}/files/info'.replaceAll('{post_id}', postId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
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

  /// Get file info for post
  ///
  /// Gets a list of file information objects for the files attached to a post. ##### Permissions Must have `read_channel` permission for the channel the post is in.
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   ID of the post
  ///
  /// * [bool] includeDeleted:
  ///   Defines if result should include deleted posts, must have 'manage_system' (admin) permission.
  Future<List<MMFileInfo>?> getFileInfosForPost(
    String postId, {
    bool? includeDeleted,
  }) async {
    final response = await getFileInfosForPostWithHttpInfo(
      postId,
      includeDeleted: includeDeleted,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MMFileInfo>') as List).cast<MMFileInfo>().toList();
    }
    return null;
  }

  /// Get a list of flagged posts
  ///
  /// Get a page of flagged posts of a user provided user id string. Selects from a channel, team, or all flagged posts by a user. Will only return posts from channels in which the user is member. ##### Permissions Must be user or have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   ID of the user
  ///
  /// * [String] teamId:
  ///   Team ID
  ///
  /// * [String] channelId:
  ///   Channel ID
  ///
  /// * [int] page:
  ///   The page to select
  ///
  /// * [int] perPage:
  ///   The number of posts per page
  Future<Response> getFlaggedPostsForUserWithHttpInfo(
    String userId, {
    String? teamId,
    String? channelId,
    int? page,
    int? perPage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/posts/flagged'.replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (teamId != null) {
      queryParams.addAll(_queryParams('', 'team_id', teamId));
    }
    if (channelId != null) {
      queryParams.addAll(_queryParams('', 'channel_id', channelId));
    }
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

  /// Get a list of flagged posts
  ///
  /// Get a page of flagged posts of a user provided user id string. Selects from a channel, team, or all flagged posts by a user. Will only return posts from channels in which the user is member. ##### Permissions Must be user or have `manage_system` permission.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   ID of the user
  ///
  /// * [String] teamId:
  ///   Team ID
  ///
  /// * [String] channelId:
  ///   Channel ID
  ///
  /// * [int] page:
  ///   The page to select
  ///
  /// * [int] perPage:
  ///   The number of posts per page
  Future<List<MMPostList>?> getFlaggedPostsForUser(
    String userId, {
    String? teamId,
    String? channelId,
    int? page,
    int? perPage,
  }) async {
    final response = await getFlaggedPostsForUserWithHttpInfo(
      userId,
      teamId: teamId,
      channelId: channelId,
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
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MMPostList>') as List).cast<MMPostList>().toList();
    }
    return null;
  }

  /// Get a post
  ///
  /// Get a single post. ##### Permissions Must have `read_channel` permission for the channel the post is in or if the channel is public, have the `read_public_channels` permission for the team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   ID of the post to get
  ///
  /// * [bool] includeDeleted:
  ///   Defines if result should include deleted posts, must have 'manage_system' (admin) permission.
  Future<Response> getPostWithHttpInfo(
    String postId, {
    bool? includeDeleted,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/posts/{post_id}'.replaceAll('{post_id}', postId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
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

  /// Get a post
  ///
  /// Get a single post. ##### Permissions Must have `read_channel` permission for the channel the post is in or if the channel is public, have the `read_public_channels` permission for the team.
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   ID of the post to get
  ///
  /// * [bool] includeDeleted:
  ///   Defines if result should include deleted posts, must have 'manage_system' (admin) permission.
  Future<MMPost?> getPost(
    String postId, {
    bool? includeDeleted,
  }) async {
    final response = await getPostWithHttpInfo(
      postId,
      includeDeleted: includeDeleted,
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
        'MMPost',
      ) as MMPost;
    }
    return null;
  }

  /// Get a thread
  ///
  /// Get a post and the rest of the posts in the same thread. ##### Permissions Must have `read_channel` permission for the channel the post is in or if the channel is public, have the `read_public_channels` permission for the team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   ID of a post in the thread
  ///
  /// * [int] perPage:
  ///   The number of posts per page
  ///
  /// * [String] fromPost:
  ///   The post_id to return the next page of posts from
  ///
  /// * [int] fromCreateAt:
  ///   The create_at timestamp to return the next page of posts from
  ///
  /// * [String] direction:
  ///   The direction to return the posts. Either up or down.
  ///
  /// * [bool] skipFetchThreads:
  ///   Whether to skip fetching threads or not
  ///
  /// * [bool] collapsedThreads:
  ///   Whether the client uses CRT or not
  ///
  /// * [bool] collapsedThreadsExtended:
  ///   Whether to return the associated users as part of the response or not
  Future<Response> getPostThreadWithHttpInfo(
    String postId, {
    int? perPage,
    String? fromPost,
    int? fromCreateAt,
    String? direction,
    bool? skipFetchThreads,
    bool? collapsedThreads,
    bool? collapsedThreadsExtended,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/posts/{post_id}/thread'.replaceAll('{post_id}', postId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'perPage', perPage));
    }
    if (fromPost != null) {
      queryParams.addAll(_queryParams('', 'fromPost', fromPost));
    }
    if (fromCreateAt != null) {
      queryParams.addAll(_queryParams('', 'fromCreateAt', fromCreateAt));
    }
    if (direction != null) {
      queryParams.addAll(_queryParams('', 'direction', direction));
    }
    if (skipFetchThreads != null) {
      queryParams.addAll(_queryParams('', 'skipFetchThreads', skipFetchThreads));
    }
    if (collapsedThreads != null) {
      queryParams.addAll(_queryParams('', 'collapsedThreads', collapsedThreads));
    }
    if (collapsedThreadsExtended != null) {
      queryParams.addAll(_queryParams('', 'collapsedThreadsExtended', collapsedThreadsExtended));
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

  /// Get a thread
  ///
  /// Get a post and the rest of the posts in the same thread. ##### Permissions Must have `read_channel` permission for the channel the post is in or if the channel is public, have the `read_public_channels` permission for the team.
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   ID of a post in the thread
  ///
  /// * [int] perPage:
  ///   The number of posts per page
  ///
  /// * [String] fromPost:
  ///   The post_id to return the next page of posts from
  ///
  /// * [int] fromCreateAt:
  ///   The create_at timestamp to return the next page of posts from
  ///
  /// * [String] direction:
  ///   The direction to return the posts. Either up or down.
  ///
  /// * [bool] skipFetchThreads:
  ///   Whether to skip fetching threads or not
  ///
  /// * [bool] collapsedThreads:
  ///   Whether the client uses CRT or not
  ///
  /// * [bool] collapsedThreadsExtended:
  ///   Whether to return the associated users as part of the response or not
  Future<MMPostList?> getPostThread(
    String postId, {
    int? perPage,
    String? fromPost,
    int? fromCreateAt,
    String? direction,
    bool? skipFetchThreads,
    bool? collapsedThreads,
    bool? collapsedThreadsExtended,
  }) async {
    final response = await getPostThreadWithHttpInfo(
      postId,
      perPage: perPage,
      fromPost: fromPost,
      fromCreateAt: fromCreateAt,
      direction: direction,
      skipFetchThreads: skipFetchThreads,
      collapsedThreads: collapsedThreads,
      collapsedThreadsExtended: collapsedThreadsExtended,
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
        'MMPostList',
      ) as MMPostList;
    }
    return null;
  }

  /// Get posts around oldest unread
  ///
  /// Get the oldest unread post in the channel for the given user as well as the posts around it. The returned list is sorted in descending order (most recent post first). ##### Permissions Must be logged in as the user or have `edit_other_users` permission, and must have `read_channel` permission for the channel. __Minimum server version__: 5.14
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   ID of the user
  ///
  /// * [String] channelId (required):
  ///   The channel ID to get the posts for
  ///
  /// * [int] limitBefore:
  ///   Number of posts before the oldest unread posts. Maximum is 200 posts if limit is set greater than that.
  ///
  /// * [int] limitAfter:
  ///   Number of posts after and including the oldest unread post. Maximum is 200 posts if limit is set greater than that.
  ///
  /// * [bool] skipFetchThreads:
  ///   Whether to skip fetching threads or not
  ///
  /// * [bool] collapsedThreads:
  ///   Whether the client uses CRT or not
  ///
  /// * [bool] collapsedThreadsExtended:
  ///   Whether to return the associated users as part of the response or not
  Future<Response> getPostsAroundLastUnreadWithHttpInfo(
    String userId,
    String channelId, {
    int? limitBefore,
    int? limitAfter,
    bool? skipFetchThreads,
    bool? collapsedThreads,
    bool? collapsedThreadsExtended,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/channels/{channel_id}/posts/unread'
        .replaceAll('{user_id}', userId)
        .replaceAll('{channel_id}', channelId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limitBefore != null) {
      queryParams.addAll(_queryParams('', 'limit_before', limitBefore));
    }
    if (limitAfter != null) {
      queryParams.addAll(_queryParams('', 'limit_after', limitAfter));
    }
    if (skipFetchThreads != null) {
      queryParams.addAll(_queryParams('', 'skipFetchThreads', skipFetchThreads));
    }
    if (collapsedThreads != null) {
      queryParams.addAll(_queryParams('', 'collapsedThreads', collapsedThreads));
    }
    if (collapsedThreadsExtended != null) {
      queryParams.addAll(_queryParams('', 'collapsedThreadsExtended', collapsedThreadsExtended));
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

  /// Get posts around oldest unread
  ///
  /// Get the oldest unread post in the channel for the given user as well as the posts around it. The returned list is sorted in descending order (most recent post first). ##### Permissions Must be logged in as the user or have `edit_other_users` permission, and must have `read_channel` permission for the channel. __Minimum server version__: 5.14
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   ID of the user
  ///
  /// * [String] channelId (required):
  ///   The channel ID to get the posts for
  ///
  /// * [int] limitBefore:
  ///   Number of posts before the oldest unread posts. Maximum is 200 posts if limit is set greater than that.
  ///
  /// * [int] limitAfter:
  ///   Number of posts after and including the oldest unread post. Maximum is 200 posts if limit is set greater than that.
  ///
  /// * [bool] skipFetchThreads:
  ///   Whether to skip fetching threads or not
  ///
  /// * [bool] collapsedThreads:
  ///   Whether the client uses CRT or not
  ///
  /// * [bool] collapsedThreadsExtended:
  ///   Whether to return the associated users as part of the response or not
  Future<MMPostList?> getPostsAroundLastUnread(
    String userId,
    String channelId, {
    int? limitBefore,
    int? limitAfter,
    bool? skipFetchThreads,
    bool? collapsedThreads,
    bool? collapsedThreadsExtended,
  }) async {
    final response = await getPostsAroundLastUnreadWithHttpInfo(
      userId,
      channelId,
      limitBefore: limitBefore,
      limitAfter: limitAfter,
      skipFetchThreads: skipFetchThreads,
      collapsedThreads: collapsedThreads,
      collapsedThreadsExtended: collapsedThreadsExtended,
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
        'MMPostList',
      ) as MMPostList;
    }
    return null;
  }

  /// Get posts by a list of ids
  ///
  /// Fetch a list of posts based on the provided postIDs ##### Permissions Must have `read_channel` permission for the channel the post is in or if the channel is public, have the `read_public_channels` permission for the team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  ///   List of post ids
  Future<Response> getPostsByIdsWithHttpInfo(
    List<String> requestBody,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/posts/ids';

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Get posts by a list of ids
  ///
  /// Fetch a list of posts based on the provided postIDs ##### Permissions Must have `read_channel` permission for the channel the post is in or if the channel is public, have the `read_public_channels` permission for the team.
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  ///   List of post ids
  Future<List<MMPost>?> getPostsByIds(
    List<String> requestBody,
  ) async {
    final response = await getPostsByIdsWithHttpInfo(
      requestBody,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MMPost>') as List).cast<MMPost>().toList();
    }
    return null;
  }

  /// Get posts for a channel
  ///
  /// Get a page of posts in a channel. Use the query parameters to modify the behaviour of this endpoint. The parameter `since` must not be used with any of `before`, `after`, `page`, and `per_page` parameters. If `since` is used, it will always return all posts modified since that time, ordered by their create time limited till 1000. A caveat with this parameter is that there is no guarantee that the returned posts will be consecutive. It is left to the clients to maintain state and fill any missing holes in the post order. ##### Permissions Must have `read_channel` permission for the channel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   The channel ID to get the posts for
  ///
  /// * [int] page:
  ///   The page to select
  ///
  /// * [int] perPage:
  ///   The number of posts per page
  ///
  /// * [int] since:
  ///   Provide a non-zero value in Unix time milliseconds to select posts modified after that time
  ///
  /// * [String] before:
  ///   A post id to select the posts that came before this one
  ///
  /// * [String] after:
  ///   A post id to select the posts that came after this one
  Future<Response> getPostsForChannelWithHttpInfo(
    String channelId, {
    int? page,
    int? perPage,
    int? since,
    String? before,
    String? after,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/channels/{channel_id}/posts'.replaceAll('{channel_id}', channelId);

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
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (after != null) {
      queryParams.addAll(_queryParams('', 'after', after));
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

  /// Get posts for a channel
  ///
  /// Get a page of posts in a channel. Use the query parameters to modify the behaviour of this endpoint. The parameter `since` must not be used with any of `before`, `after`, `page`, and `per_page` parameters. If `since` is used, it will always return all posts modified since that time, ordered by their create time limited till 1000. A caveat with this parameter is that there is no guarantee that the returned posts will be consecutive. It is left to the clients to maintain state and fill any missing holes in the post order. ##### Permissions Must have `read_channel` permission for the channel.
  ///
  /// Parameters:
  ///
  /// * [String] channelId (required):
  ///   The channel ID to get the posts for
  ///
  /// * [int] page:
  ///   The page to select
  ///
  /// * [int] perPage:
  ///   The number of posts per page
  ///
  /// * [int] since:
  ///   Provide a non-zero value in Unix time milliseconds to select posts modified after that time
  ///
  /// * [String] before:
  ///   A post id to select the posts that came before this one
  ///
  /// * [String] after:
  ///   A post id to select the posts that came after this one
  Future<MMPostList?> getPostsForChannel(
    String channelId, {
    int? page,
    int? perPage,
    int? since,
    String? before,
    String? after,
  }) async {
    final response = await getPostsForChannelWithHttpInfo(
      channelId,
      page: page,
      perPage: perPage,
      since: since,
      before: before,
      after: after,
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
        'MMPostList',
      ) as MMPostList;
    }
    return null;
  }

  /// Patch a post
  ///
  /// Partially update a post by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must have the `edit_post` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   Post GUID
  ///
  /// * [MMPatchPostRequest] mMPatchPostRequest (required):
  ///   Post object that is to be updated
  Future<Response> patchPostWithHttpInfo(
    String postId,
    MMPatchPostRequest mMPatchPostRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/posts/{post_id}/patch'.replaceAll('{post_id}', postId);

    // ignore: prefer_final_locals
    Object? postBody = mMPatchPostRequest;

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

  /// Patch a post
  ///
  /// Partially update a post by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must have the `edit_post` permission.
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   Post GUID
  ///
  /// * [MMPatchPostRequest] mMPatchPostRequest (required):
  ///   Post object that is to be updated
  Future<MMPost?> patchPost(
    String postId,
    MMPatchPostRequest mMPatchPostRequest,
  ) async {
    final response = await patchPostWithHttpInfo(
      postId,
      mMPatchPostRequest,
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
        'MMPost',
      ) as MMPost;
    }
    return null;
  }

  /// Pin a post to the channel
  ///
  /// Pin a post to a channel it is in based from the provided post id string. ##### Permissions Must be authenticated and have the `read_channel` permission to the channel the post is in.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   Post GUID
  Future<Response> pinPostWithHttpInfo(
    String postId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/posts/{post_id}/pin'.replaceAll('{post_id}', postId);

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

  /// Pin a post to the channel
  ///
  /// Pin a post to a channel it is in based from the provided post id string. ##### Permissions Must be authenticated and have the `read_channel` permission to the channel the post is in.
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   Post GUID
  Future<MMStatusOK?> pinPost(
    String postId,
  ) async {
    final response = await pinPostWithHttpInfo(
      postId,
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

  /// Search for team posts
  ///
  /// Search posts in the team and from the provided terms string. ##### Permissions Must be authenticated and have the `view_team` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [MMSearchPostsRequest] mMSearchPostsRequest (required):
  ///   The search terms and logic to use in the search.
  Future<Response> searchPostsWithHttpInfo(
    String teamId,
    MMSearchPostsRequest mMSearchPostsRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/posts/search'.replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody = mMSearchPostsRequest;

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

  /// Search for team posts
  ///
  /// Search posts in the team and from the provided terms string. ##### Permissions Must be authenticated and have the `view_team` permission.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [MMSearchPostsRequest] mMSearchPostsRequest (required):
  ///   The search terms and logic to use in the search.
  Future<MMPostListWithSearchMatches?> searchPosts(
    String teamId,
    MMSearchPostsRequest mMSearchPostsRequest,
  ) async {
    final response = await searchPostsWithHttpInfo(
      teamId,
      mMSearchPostsRequest,
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
        'MMPostListWithSearchMatches',
      ) as MMPostListWithSearchMatches;
    }
    return null;
  }

  /// Mark as unread from a post.
  ///
  /// Mark a channel as being unread from a given post. ##### Permissions Must have `read_channel` permission for the channel the post is in or if the channel is public, have the `read_public_channels` permission for the team. Must have `edit_other_users` permission if the user is not the one marking the post for himself.  __Minimum server version__: 5.18
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] postId (required):
  ///   Post GUID
  Future<Response> setPostUnreadWithHttpInfo(
    String userId,
    String postId,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/users/{user_id}/posts/{post_id}/set_unread'.replaceAll('{user_id}', userId).replaceAll('{post_id}', postId);

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

  /// Mark as unread from a post.
  ///
  /// Mark a channel as being unread from a given post. ##### Permissions Must have `read_channel` permission for the channel the post is in or if the channel is public, have the `read_public_channels` permission for the team. Must have `edit_other_users` permission if the user is not the one marking the post for himself.  __Minimum server version__: 5.18
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] postId (required):
  ///   Post GUID
  Future<MMChannelUnreadAt?> setPostUnread(
    String userId,
    String postId,
  ) async {
    final response = await setPostUnreadWithHttpInfo(
      userId,
      postId,
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
        'MMChannelUnreadAt',
      ) as MMChannelUnreadAt;
    }
    return null;
  }

  /// Unpin a post to the channel
  ///
  /// Unpin a post to a channel it is in based from the provided post id string. ##### Permissions Must be authenticated and have the `read_channel` permission to the channel the post is in.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   Post GUID
  Future<Response> unpinPostWithHttpInfo(
    String postId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/posts/{post_id}/unpin'.replaceAll('{post_id}', postId);

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

  /// Unpin a post to the channel
  ///
  /// Unpin a post to a channel it is in based from the provided post id string. ##### Permissions Must be authenticated and have the `read_channel` permission to the channel the post is in.
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   Post GUID
  Future<MMStatusOK?> unpinPost(
    String postId,
  ) async {
    final response = await unpinPostWithHttpInfo(
      postId,
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

  /// Update a post
  ///
  /// Update a post. Only the fields listed below are updatable, omitted fields will be treated as blank. ##### Permissions Must have `edit_post` permission for the channel the post is in.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   ID of the post to update
  ///
  /// * [MMUpdatePostRequest] mMUpdatePostRequest (required):
  ///   Post object that is to be updated
  Future<Response> updatePostWithHttpInfo(
    String postId,
    MMUpdatePostRequest mMUpdatePostRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/posts/{post_id}'.replaceAll('{post_id}', postId);

    // ignore: prefer_final_locals
    Object? postBody = mMUpdatePostRequest;

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

  /// Update a post
  ///
  /// Update a post. Only the fields listed below are updatable, omitted fields will be treated as blank. ##### Permissions Must have `edit_post` permission for the channel the post is in.
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   ID of the post to update
  ///
  /// * [MMUpdatePostRequest] mMUpdatePostRequest (required):
  ///   Post object that is to be updated
  Future<MMPost?> updatePost(
    String postId,
    MMUpdatePostRequest mMUpdatePostRequest,
  ) async {
    final response = await updatePostWithHttpInfo(
      postId,
      mMUpdatePostRequest,
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
        'MMPost',
      ) as MMPost;
    }
    return null;
  }
}
