//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;


class MattermostEmojiApi {

  final MattermostApiClient apiClient;
  
  MattermostEmojiApi(this.apiClient);


  /// Autocomplete custom emoji
  ///
  /// Get a list of custom emoji with names starting with or matching the provided name. Returns a maximum of 100 results. ##### Permissions Must be authenticated.  __Minimum server version__: 4.7 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The emoji name to search.
  Future<Response> autocompleteEmojiWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/emoji/autocomplete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
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

  /// Autocomplete custom emoji
  ///
  /// Get a list of custom emoji with names starting with or matching the provided name. Returns a maximum of 100 results. ##### Permissions Must be authenticated.  __Minimum server version__: 4.7 
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The emoji name to search.
  Future<MattermostEmoji?> autocompleteEmoji(String name,) async {
    final response = await autocompleteEmojiWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MattermostEmoji',) as MattermostEmoji;
    
    }
    return null;
  }

  /// Create a custom emoji
  ///
  /// Create a custom emoji for the team. ##### Permissions Must be authenticated. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] image (required):
  ///   A file to be uploaded
  ///
  /// * [String] emoji (required):
  ///   A JSON object containing a `name` field with the name of the emoji and a `creator_id` field with the id of the authenticated user.
  Future<Response> createEmojiWithHttpInfo(MultipartFile image, String emoji,) async {
    // ignore: prefer_const_declarations
    final path = r'/emoji';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (image != null) {
      hasFields = true;
      mp.fields[r'image'] = image.field;
      mp.files.add(image);
    }
    if (emoji != null) {
      hasFields = true;
      mp.fields[r'emoji'] = parameterToString(emoji);
    }
    if (hasFields) {
      postBody = mp;
    }

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

  /// Create a custom emoji
  ///
  /// Create a custom emoji for the team. ##### Permissions Must be authenticated. 
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] image (required):
  ///   A file to be uploaded
  ///
  /// * [String] emoji (required):
  ///   A JSON object containing a `name` field with the name of the emoji and a `creator_id` field with the id of the authenticated user.
  Future<MattermostEmoji?> createEmoji(MultipartFile image, String emoji,) async {
    final response = await createEmojiWithHttpInfo(image, emoji,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MattermostEmoji',) as MattermostEmoji;
    
    }
    return null;
  }

  /// Delete a custom emoji
  ///
  /// Delete a custom emoji. ##### Permissions Must have the `manage_team` or `manage_system` permissions or be the user who created the emoji. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emojiId (required):
  ///   Emoji GUID
  Future<Response> deleteEmojiWithHttpInfo(String emojiId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emoji/{emoji_id}'
      .replaceAll('{emoji_id}', emojiId);

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

  /// Delete a custom emoji
  ///
  /// Delete a custom emoji. ##### Permissions Must have the `manage_team` or `manage_system` permissions or be the user who created the emoji. 
  ///
  /// Parameters:
  ///
  /// * [String] emojiId (required):
  ///   Emoji GUID
  Future<MattermostEmoji?> deleteEmoji(String emojiId,) async {
    final response = await deleteEmojiWithHttpInfo(emojiId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MattermostEmoji',) as MattermostEmoji;
    
    }
    return null;
  }

  /// Get a custom emoji
  ///
  /// Get some metadata for a custom emoji. ##### Permissions Must be authenticated. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emojiId (required):
  ///   Emoji GUID
  Future<Response> getEmojiWithHttpInfo(String emojiId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emoji/{emoji_id}'
      .replaceAll('{emoji_id}', emojiId);

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

  /// Get a custom emoji
  ///
  /// Get some metadata for a custom emoji. ##### Permissions Must be authenticated. 
  ///
  /// Parameters:
  ///
  /// * [String] emojiId (required):
  ///   Emoji GUID
  Future<MattermostEmoji?> getEmoji(String emojiId,) async {
    final response = await getEmojiWithHttpInfo(emojiId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MattermostEmoji',) as MattermostEmoji;
    
    }
    return null;
  }

  /// Get a custom emoji by name
  ///
  /// Get some metadata for a custom emoji using its name. ##### Permissions Must be authenticated.  __Minimum server version__: 4.7 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emojiName (required):
  ///   Emoji name
  Future<Response> getEmojiByNameWithHttpInfo(String emojiName,) async {
    // ignore: prefer_const_declarations
    final path = r'/emoji/name/{emoji_name}'
      .replaceAll('{emoji_name}', emojiName);

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

  /// Get a custom emoji by name
  ///
  /// Get some metadata for a custom emoji using its name. ##### Permissions Must be authenticated.  __Minimum server version__: 4.7 
  ///
  /// Parameters:
  ///
  /// * [String] emojiName (required):
  ///   Emoji name
  Future<MattermostEmoji?> getEmojiByName(String emojiName,) async {
    final response = await getEmojiByNameWithHttpInfo(emojiName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MattermostEmoji',) as MattermostEmoji;
    
    }
    return null;
  }

  /// Get custom emoji image
  ///
  /// Get the image for a custom emoji. ##### Permissions Must be authenticated. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emojiId (required):
  ///   Emoji GUID
  Future<Response> getEmojiImageWithHttpInfo(String emojiId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emoji/{emoji_id}/image'
      .replaceAll('{emoji_id}', emojiId);

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

  /// Get custom emoji image
  ///
  /// Get the image for a custom emoji. ##### Permissions Must be authenticated. 
  ///
  /// Parameters:
  ///
  /// * [String] emojiId (required):
  ///   Emoji GUID
  Future<void> getEmojiImage(String emojiId,) async {
    final response = await getEmojiImageWithHttpInfo(emojiId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get a list of custom emoji
  ///
  /// Get a page of metadata for custom emoji on the system. Since server version 4.7, sort using the `sort` query parameter. ##### Permissions Must be authenticated. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of emojis per page.
  ///
  /// * [String] sort:
  ///   Either blank for no sorting or \"name\" to sort by emoji names. Minimum server version for sorting is 4.7.
  Future<Response> getEmojiListWithHttpInfo({ int? page, int? perPage, String? sort, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emoji';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
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

  /// Get a list of custom emoji
  ///
  /// Get a page of metadata for custom emoji on the system. Since server version 4.7, sort using the `sort` query parameter. ##### Permissions Must be authenticated. 
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of emojis per page.
  ///
  /// * [String] sort:
  ///   Either blank for no sorting or \"name\" to sort by emoji names. Minimum server version for sorting is 4.7.
  Future<MattermostEmoji?> getEmojiList({ int? page, int? perPage, String? sort, }) async {
    final response = await getEmojiListWithHttpInfo( page: page, perPage: perPage, sort: sort, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MattermostEmoji',) as MattermostEmoji;
    
    }
    return null;
  }

  /// Search custom emoji
  ///
  /// Search for custom emoji by name based on search criteria provided in the request body. A maximum of 200 results are returned. ##### Permissions Must be authenticated.  __Minimum server version__: 4.7 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MattermostSearchEmojiRequest] mattermostSearchEmojiRequest (required):
  ///   Search criteria
  Future<Response> searchEmojiWithHttpInfo(MattermostSearchEmojiRequest mattermostSearchEmojiRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/emoji/search';

    // ignore: prefer_final_locals
    Object? postBody = mattermostSearchEmojiRequest;

    final queryParams = <MattermostQueryParam>[];
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

  /// Search custom emoji
  ///
  /// Search for custom emoji by name based on search criteria provided in the request body. A maximum of 200 results are returned. ##### Permissions Must be authenticated.  __Minimum server version__: 4.7 
  ///
  /// Parameters:
  ///
  /// * [MattermostSearchEmojiRequest] mattermostSearchEmojiRequest (required):
  ///   Search criteria
  Future<List<MattermostEmoji>?> searchEmoji(MattermostSearchEmojiRequest mattermostSearchEmojiRequest,) async {
    final response = await searchEmojiWithHttpInfo(mattermostSearchEmojiRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MattermostEmoji>') as List)
        .cast<MattermostEmoji>()
        .toList();

    }
    return null;
  }
}
