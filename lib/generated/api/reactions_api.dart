//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;


class ReactionsApi {
  ReactionsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Remove a reaction from a post
  ///
  /// Deletes a reaction made by a user from the given post. ##### Permissions Must be user or have `manage_system` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   ID of the user
  ///
  /// * [String] postId (required):
  ///   ID of the post
  ///
  /// * [String] emojiName (required):
  ///   emoji name
  Future<Response> deleteReactionWithHttpInfo(String userId, String postId, String emojiName,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/posts/{post_id}/reactions/{emoji_name}'
      .replaceAll('{user_id}', userId)
      .replaceAll('{post_id}', postId)
      .replaceAll('{emoji_name}', emojiName);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
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

  /// Remove a reaction from a post
  ///
  /// Deletes a reaction made by a user from the given post. ##### Permissions Must be user or have `manage_system` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   ID of the user
  ///
  /// * [String] postId (required):
  ///   ID of the post
  ///
  /// * [String] emojiName (required):
  ///   emoji name
  Future<StatusOK?> deleteReaction(String userId, String postId, String emojiName,) async {
    final response = await deleteReactionWithHttpInfo(userId, postId, emojiName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StatusOK',) as StatusOK;
    
    }
    return null;
  }

  /// Bulk get the reaction for posts
  ///
  /// Get a list of reactions made by all users to a given post. ##### Permissions Must have `read_channel` permission for the channel the post is in.  __Minimum server version__: 5.8 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  ///   Array of post IDs
  Future<Response> getBulkReactionsWithHttpInfo(List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/posts/ids/reactions';

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

    final queryParams = <QueryParam>[];
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

  /// Bulk get the reaction for posts
  ///
  /// Get a list of reactions made by all users to a given post. ##### Permissions Must have `read_channel` permission for the channel the post is in.  __Minimum server version__: 5.8 
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  ///   Array of post IDs
  Future<Map<String, List<Reaction>>?> getBulkReactions(List<String> requestBody,) async {
    final response = await getBulkReactionsWithHttpInfo(requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, List<Reaction>>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, List<Reaction>>'),);

    }
    return null;
  }

  /// Get a list of reactions to a post
  ///
  /// Get a list of reactions made by all users to a given post. ##### Permissions Must have `read_channel` permission for the channel the post is in. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   ID of a post
  Future<Response> getReactionsWithHttpInfo(String postId,) async {
    // ignore: prefer_const_declarations
    final path = r'/posts/{post_id}/reactions'
      .replaceAll('{post_id}', postId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
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

  /// Get a list of reactions to a post
  ///
  /// Get a list of reactions made by all users to a given post. ##### Permissions Must have `read_channel` permission for the channel the post is in. 
  ///
  /// Parameters:
  ///
  /// * [String] postId (required):
  ///   ID of a post
  Future<List<Reaction>?> getReactions(String postId,) async {
    final response = await getReactionsWithHttpInfo(postId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Reaction>') as List)
        .cast<Reaction>()
        .toList();

    }
    return null;
  }

  /// Create a reaction
  ///
  /// Create a reaction. ##### Permissions Must have `read_channel` permission for the channel the post is in. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Reaction] reaction (required):
  ///   The user's reaction with its post_id, user_id, and emoji_name fields set
  Future<Response> saveReactionWithHttpInfo(Reaction reaction,) async {
    // ignore: prefer_const_declarations
    final path = r'/reactions';

    // ignore: prefer_final_locals
    Object? postBody = reaction;

    final queryParams = <QueryParam>[];
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

  /// Create a reaction
  ///
  /// Create a reaction. ##### Permissions Must have `read_channel` permission for the channel the post is in. 
  ///
  /// Parameters:
  ///
  /// * [Reaction] reaction (required):
  ///   The user's reaction with its post_id, user_id, and emoji_name fields set
  Future<Reaction?> saveReaction(Reaction reaction,) async {
    final response = await saveReactionWithHttpInfo(reaction,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Reaction',) as Reaction;
    
    }
    return null;
  }
}
