//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;


class MattermostBotsApi {

  final MattermostApiClient apiClient;
  
  MattermostBotsApi(this.apiClient);


  /// Assign a bot to a user
  ///
  /// Assign a bot to a specified user. ##### Permissions Must have `manage_bots` permission.  __Minimum server version__: 5.10 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] botUserId (required):
  ///   Bot user ID
  ///
  /// * [String] userId (required):
  ///   The user ID to assign the bot to.
  Future<Response> assignBotWithHttpInfo(String botUserId, String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/bots/{bot_user_id}/assign/{user_id}'
      .replaceAll('{bot_user_id}', botUserId)
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
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

  /// Assign a bot to a user
  ///
  /// Assign a bot to a specified user. ##### Permissions Must have `manage_bots` permission.  __Minimum server version__: 5.10 
  ///
  /// Parameters:
  ///
  /// * [String] botUserId (required):
  ///   Bot user ID
  ///
  /// * [String] userId (required):
  ///   The user ID to assign the bot to.
  Future<MattermostBot?> assignBot(String botUserId, String userId,) async {
    final response = await assignBotWithHttpInfo(botUserId, userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MattermostBot',) as MattermostBot;
    
    }
    return null;
  }

  /// Convert a bot into a user
  ///
  /// Convert a bot into a user.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] botUserId (required):
  ///   Bot user ID
  ///
  /// * [MattermostConvertBotToUserRequest] mattermostConvertBotToUserRequest (required):
  ///   Data to be used in the user creation
  ///
  /// * [bool] setSystemAdmin:
  ///   Whether to give the user the system admin role.
  Future<Response> convertBotToUserWithHttpInfo(String botUserId, MattermostConvertBotToUserRequest mattermostConvertBotToUserRequest, { bool? setSystemAdmin, }) async {
    // ignore: prefer_const_declarations
    final path = r'/bots/{bot_user_id}/convert_to_user'
      .replaceAll('{bot_user_id}', botUserId);

    // ignore: prefer_final_locals
    Object? postBody = mattermostConvertBotToUserRequest;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (setSystemAdmin != null) {
      queryParams.addAll(_queryParams('', 'set_system_admin', setSystemAdmin));
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

  /// Convert a bot into a user
  ///
  /// Convert a bot into a user.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] botUserId (required):
  ///   Bot user ID
  ///
  /// * [MattermostConvertBotToUserRequest] mattermostConvertBotToUserRequest (required):
  ///   Data to be used in the user creation
  ///
  /// * [bool] setSystemAdmin:
  ///   Whether to give the user the system admin role.
  Future<MattermostStatusOK?> convertBotToUser(String botUserId, MattermostConvertBotToUserRequest mattermostConvertBotToUserRequest, { bool? setSystemAdmin, }) async {
    final response = await convertBotToUserWithHttpInfo(botUserId, mattermostConvertBotToUserRequest,  setSystemAdmin: setSystemAdmin, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MattermostStatusOK',) as MattermostStatusOK;
    
    }
    return null;
  }

  /// Convert a user into a bot
  ///
  /// Convert a user into a bot.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<Response> convertUserToBotWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/convert_to_bot'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
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

  /// Convert a user into a bot
  ///
  /// Convert a user into a bot.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<MattermostStatusOK?> convertUserToBot(String userId,) async {
    final response = await convertUserToBotWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MattermostStatusOK',) as MattermostStatusOK;
    
    }
    return null;
  }

  /// Create a bot
  ///
  /// Create a new bot account on the system. Username is required. ##### Permissions Must have `create_bot` permission. __Minimum server version__: 5.10 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MattermostCreateBotRequest] mattermostCreateBotRequest (required):
  ///   Bot to be created
  Future<Response> createBotWithHttpInfo(MattermostCreateBotRequest mattermostCreateBotRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/bots';

    // ignore: prefer_final_locals
    Object? postBody = mattermostCreateBotRequest;

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

  /// Create a bot
  ///
  /// Create a new bot account on the system. Username is required. ##### Permissions Must have `create_bot` permission. __Minimum server version__: 5.10 
  ///
  /// Parameters:
  ///
  /// * [MattermostCreateBotRequest] mattermostCreateBotRequest (required):
  ///   Bot to be created
  Future<MattermostBot?> createBot(MattermostCreateBotRequest mattermostCreateBotRequest,) async {
    final response = await createBotWithHttpInfo(mattermostCreateBotRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MattermostBot',) as MattermostBot;
    
    }
    return null;
  }

  /// Delete bot's LHS icon image
  ///
  /// Delete bot's LHS icon image based on bot_user_id string parameter. ##### Permissions Must have `manage_bots` permission. __Minimum server version__: 5.14 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] botUserId (required):
  ///   Bot user ID
  Future<Response> deleteBotIconImageWithHttpInfo(String botUserId,) async {
    // ignore: prefer_const_declarations
    final path = r'/bots/{bot_user_id}/icon'
      .replaceAll('{bot_user_id}', botUserId);

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

  /// Delete bot's LHS icon image
  ///
  /// Delete bot's LHS icon image based on bot_user_id string parameter. ##### Permissions Must have `manage_bots` permission. __Minimum server version__: 5.14 
  ///
  /// Parameters:
  ///
  /// * [String] botUserId (required):
  ///   Bot user ID
  Future<MattermostStatusOK?> deleteBotIconImage(String botUserId,) async {
    final response = await deleteBotIconImageWithHttpInfo(botUserId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MattermostStatusOK',) as MattermostStatusOK;
    
    }
    return null;
  }

  /// Disable a bot
  ///
  /// Disable a bot. ##### Permissions Must have `manage_bots` permission.  __Minimum server version__: 5.10 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] botUserId (required):
  ///   Bot user ID
  Future<Response> disableBotWithHttpInfo(String botUserId,) async {
    // ignore: prefer_const_declarations
    final path = r'/bots/{bot_user_id}/disable'
      .replaceAll('{bot_user_id}', botUserId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
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

  /// Disable a bot
  ///
  /// Disable a bot. ##### Permissions Must have `manage_bots` permission.  __Minimum server version__: 5.10 
  ///
  /// Parameters:
  ///
  /// * [String] botUserId (required):
  ///   Bot user ID
  Future<MattermostBot?> disableBot(String botUserId,) async {
    final response = await disableBotWithHttpInfo(botUserId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MattermostBot',) as MattermostBot;
    
    }
    return null;
  }

  /// Enable a bot
  ///
  /// Enable a bot. ##### Permissions Must have `manage_bots` permission.  __Minimum server version__: 5.10 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] botUserId (required):
  ///   Bot user ID
  Future<Response> enableBotWithHttpInfo(String botUserId,) async {
    // ignore: prefer_const_declarations
    final path = r'/bots/{bot_user_id}/enable'
      .replaceAll('{bot_user_id}', botUserId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
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

  /// Enable a bot
  ///
  /// Enable a bot. ##### Permissions Must have `manage_bots` permission.  __Minimum server version__: 5.10 
  ///
  /// Parameters:
  ///
  /// * [String] botUserId (required):
  ///   Bot user ID
  Future<MattermostBot?> enableBot(String botUserId,) async {
    final response = await enableBotWithHttpInfo(botUserId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MattermostBot',) as MattermostBot;
    
    }
    return null;
  }

  /// Get a bot
  ///
  /// Get a bot specified by its bot id. ##### Permissions Must have `read_bots` permission for bots you are managing, and `read_others_bots` permission for bots others are managing. __Minimum server version__: 5.10 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] botUserId (required):
  ///   Bot user ID
  ///
  /// * [bool] includeDeleted:
  ///   If deleted bots should be returned.
  Future<Response> getBotWithHttpInfo(String botUserId, { bool? includeDeleted, }) async {
    // ignore: prefer_const_declarations
    final path = r'/bots/{bot_user_id}'
      .replaceAll('{bot_user_id}', botUserId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
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

  /// Get a bot
  ///
  /// Get a bot specified by its bot id. ##### Permissions Must have `read_bots` permission for bots you are managing, and `read_others_bots` permission for bots others are managing. __Minimum server version__: 5.10 
  ///
  /// Parameters:
  ///
  /// * [String] botUserId (required):
  ///   Bot user ID
  ///
  /// * [bool] includeDeleted:
  ///   If deleted bots should be returned.
  Future<MattermostBot?> getBot(String botUserId, { bool? includeDeleted, }) async {
    final response = await getBotWithHttpInfo(botUserId,  includeDeleted: includeDeleted, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MattermostBot',) as MattermostBot;
    
    }
    return null;
  }

  /// Get bot's LHS icon
  ///
  /// Get a bot's LHS icon image based on bot_user_id string parameter. ##### Permissions Must be logged in. __Minimum server version__: 5.14 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] botUserId (required):
  ///   Bot user ID
  Future<Response> getBotIconImageWithHttpInfo(String botUserId,) async {
    // ignore: prefer_const_declarations
    final path = r'/bots/{bot_user_id}/icon'
      .replaceAll('{bot_user_id}', botUserId);

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

  /// Get bot's LHS icon
  ///
  /// Get a bot's LHS icon image based on bot_user_id string parameter. ##### Permissions Must be logged in. __Minimum server version__: 5.14 
  ///
  /// Parameters:
  ///
  /// * [String] botUserId (required):
  ///   Bot user ID
  Future<void> getBotIconImage(String botUserId,) async {
    final response = await getBotIconImageWithHttpInfo(botUserId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get bots
  ///
  /// Get a page of a list of bots. ##### Permissions Must have `read_bots` permission for bots you are managing, and `read_others_bots` permission for bots others are managing. __Minimum server version__: 5.10 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of users per page. There is a maximum limit of 200 users per page.
  ///
  /// * [bool] includeDeleted:
  ///   If deleted bots should be returned.
  ///
  /// * [bool] onlyOrphaned:
  ///   When true, only orphaned bots will be returned. A bot is consitered orphaned if it's owner has been deactivated.
  Future<Response> getBotsWithHttpInfo({ int? page, int? perPage, bool? includeDeleted, bool? onlyOrphaned, }) async {
    // ignore: prefer_const_declarations
    final path = r'/bots';

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
    if (includeDeleted != null) {
      queryParams.addAll(_queryParams('', 'include_deleted', includeDeleted));
    }
    if (onlyOrphaned != null) {
      queryParams.addAll(_queryParams('', 'only_orphaned', onlyOrphaned));
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

  /// Get bots
  ///
  /// Get a page of a list of bots. ##### Permissions Must have `read_bots` permission for bots you are managing, and `read_others_bots` permission for bots others are managing. __Minimum server version__: 5.10 
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of users per page. There is a maximum limit of 200 users per page.
  ///
  /// * [bool] includeDeleted:
  ///   If deleted bots should be returned.
  ///
  /// * [bool] onlyOrphaned:
  ///   When true, only orphaned bots will be returned. A bot is consitered orphaned if it's owner has been deactivated.
  Future<List<MattermostBot>?> getBots({ int? page, int? perPage, bool? includeDeleted, bool? onlyOrphaned, }) async {
    final response = await getBotsWithHttpInfo( page: page, perPage: perPage, includeDeleted: includeDeleted, onlyOrphaned: onlyOrphaned, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MattermostBot>') as List)
        .cast<MattermostBot>()
        .toList();

    }
    return null;
  }

  /// Patch a bot
  ///
  /// Partially update a bot by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must have `manage_bots` permission.  __Minimum server version__: 5.10 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] botUserId (required):
  ///   Bot user ID
  ///
  /// * [MattermostCreateBotRequest] mattermostCreateBotRequest (required):
  ///   Bot to be created
  Future<Response> patchBotWithHttpInfo(String botUserId, MattermostCreateBotRequest mattermostCreateBotRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/bots/{bot_user_id}'
      .replaceAll('{bot_user_id}', botUserId);

    // ignore: prefer_final_locals
    Object? postBody = mattermostCreateBotRequest;

    final queryParams = <MattermostQueryParam>[];
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

  /// Patch a bot
  ///
  /// Partially update a bot by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must have `manage_bots` permission.  __Minimum server version__: 5.10 
  ///
  /// Parameters:
  ///
  /// * [String] botUserId (required):
  ///   Bot user ID
  ///
  /// * [MattermostCreateBotRequest] mattermostCreateBotRequest (required):
  ///   Bot to be created
  Future<MattermostBot?> patchBot(String botUserId, MattermostCreateBotRequest mattermostCreateBotRequest,) async {
    final response = await patchBotWithHttpInfo(botUserId, mattermostCreateBotRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MattermostBot',) as MattermostBot;
    
    }
    return null;
  }

  /// Set bot's LHS icon image
  ///
  /// Set a bot's LHS icon image based on bot_user_id string parameter. Icon image must be SVG format, all other formats are rejected. ##### Permissions Must have `manage_bots` permission. __Minimum server version__: 5.14 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] botUserId (required):
  ///   Bot user ID
  ///
  /// * [MultipartFile] image (required):
  ///   SVG icon image to be uploaded
  Future<Response> setBotIconImageWithHttpInfo(String botUserId, MultipartFile image,) async {
    // ignore: prefer_const_declarations
    final path = r'/bots/{bot_user_id}/icon'
      .replaceAll('{bot_user_id}', botUserId);

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

  /// Set bot's LHS icon image
  ///
  /// Set a bot's LHS icon image based on bot_user_id string parameter. Icon image must be SVG format, all other formats are rejected. ##### Permissions Must have `manage_bots` permission. __Minimum server version__: 5.14 
  ///
  /// Parameters:
  ///
  /// * [String] botUserId (required):
  ///   Bot user ID
  ///
  /// * [MultipartFile] image (required):
  ///   SVG icon image to be uploaded
  Future<MattermostStatusOK?> setBotIconImage(String botUserId, MultipartFile image,) async {
    final response = await setBotIconImageWithHttpInfo(botUserId, image,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MattermostStatusOK',) as MattermostStatusOK;
    
    }
    return null;
  }
}
