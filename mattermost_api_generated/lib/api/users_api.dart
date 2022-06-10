//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;


class UsersApi {
  UsersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Attach mobile device
  ///
  /// Attach a mobile device id to the currently logged in session. This will enable push notifications for a user, if configured by the server. ##### Permissions Must be authenticated. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AttachDeviceIdRequest] attachDeviceIdRequest (required):
  Future<Response> attachDeviceIdWithHttpInfo(AttachDeviceIdRequest attachDeviceIdRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/sessions/device';

    // ignore: prefer_final_locals
    Object? postBody = attachDeviceIdRequest;

    final queryParams = <QueryParam>[];
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

  /// Attach mobile device
  ///
  /// Attach a mobile device id to the currently logged in session. This will enable push notifications for a user, if configured by the server. ##### Permissions Must be authenticated. 
  ///
  /// Parameters:
  ///
  /// * [AttachDeviceIdRequest] attachDeviceIdRequest (required):
  Future<StatusOK?> attachDeviceId(AttachDeviceIdRequest attachDeviceIdRequest,) async {
    final response = await attachDeviceIdWithHttpInfo(attachDeviceIdRequest,);
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

  /// Autocomplete users
  ///
  /// Get a list of users for the purpose of autocompleting based on the provided search term. Specify a combination of `team_id` and `channel_id` to filter results further. ##### Permissions Requires an active session and `view_team` and `read_channel` on any teams or channels used to filter the results further. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Username, nickname first name or last name
  ///
  /// * [String] teamId:
  ///   Team ID
  ///
  /// * [String] channelId:
  ///   Channel ID
  ///
  /// * [int] limit:
  ///   The maximum number of users to return in each subresult  __Available as of server version 5.6. Defaults to `100` if not provided or on an earlier server version.__ 
  Future<Response> autocompleteUsersWithHttpInfo(String name, { String? teamId, String? channelId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/autocomplete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (teamId != null) {
      queryParams.addAll(_queryParams('', 'team_id', teamId));
    }
    if (channelId != null) {
      queryParams.addAll(_queryParams('', 'channel_id', channelId));
    }
      queryParams.addAll(_queryParams('', 'name', name));
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Autocomplete users
  ///
  /// Get a list of users for the purpose of autocompleting based on the provided search term. Specify a combination of `team_id` and `channel_id` to filter results further. ##### Permissions Requires an active session and `view_team` and `read_channel` on any teams or channels used to filter the results further. 
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Username, nickname first name or last name
  ///
  /// * [String] teamId:
  ///   Team ID
  ///
  /// * [String] channelId:
  ///   Channel ID
  ///
  /// * [int] limit:
  ///   The maximum number of users to return in each subresult  __Available as of server version 5.6. Defaults to `100` if not provided or on an earlier server version.__ 
  Future<UserAutocomplete?> autocompleteUsers(String name, { String? teamId, String? channelId, int? limit, }) async {
    final response = await autocompleteUsersWithHttpInfo(name,  teamId: teamId, channelId: channelId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserAutocomplete',) as UserAutocomplete;
    
    }
    return null;
  }

  /// Check MFA
  ///
  /// Check if a user has multi-factor authentication active on their account by providing a login id. Used to check whether an MFA code needs to be provided when logging in. ##### Permissions No permission required. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CheckUserMfaRequest] checkUserMfaRequest (required):
  Future<Response> checkUserMfaWithHttpInfo(CheckUserMfaRequest checkUserMfaRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/mfa';

    // ignore: prefer_final_locals
    Object? postBody = checkUserMfaRequest;

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

  /// Check MFA
  ///
  /// Check if a user has multi-factor authentication active on their account by providing a login id. Used to check whether an MFA code needs to be provided when logging in. ##### Permissions No permission required. 
  ///
  /// Parameters:
  ///
  /// * [CheckUserMfaRequest] checkUserMfaRequest (required):
  Future<CheckUserMfa200Response?> checkUserMfa(CheckUserMfaRequest checkUserMfaRequest,) async {
    final response = await checkUserMfaWithHttpInfo(checkUserMfaRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CheckUserMfa200Response',) as CheckUserMfa200Response;
    
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
  /// * [ConvertBotToUserRequest] convertBotToUserRequest (required):
  ///   Data to be used in the user creation
  ///
  /// * [bool] setSystemAdmin:
  ///   Whether to give the user the system admin role.
  Future<Response> convertBotToUserWithHttpInfo(String botUserId, ConvertBotToUserRequest convertBotToUserRequest, { bool? setSystemAdmin, }) async {
    // ignore: prefer_const_declarations
    final path = r'/bots/{bot_user_id}/convert_to_user'
      .replaceAll('{bot_user_id}', botUserId);

    // ignore: prefer_final_locals
    Object? postBody = convertBotToUserRequest;

    final queryParams = <QueryParam>[];
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
  /// * [ConvertBotToUserRequest] convertBotToUserRequest (required):
  ///   Data to be used in the user creation
  ///
  /// * [bool] setSystemAdmin:
  ///   Whether to give the user the system admin role.
  Future<StatusOK?> convertBotToUser(String botUserId, ConvertBotToUserRequest convertBotToUserRequest, { bool? setSystemAdmin, }) async {
    final response = await convertBotToUserWithHttpInfo(botUserId, convertBotToUserRequest,  setSystemAdmin: setSystemAdmin, );
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

    final queryParams = <QueryParam>[];
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
  Future<StatusOK?> convertUserToBot(String userId,) async {
    final response = await convertUserToBotWithHttpInfo(userId,);
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

  /// Create a user
  ///
  /// Create a new user on the system. Password is required for email login. For other authentication types such as LDAP or SAML, auth_data and auth_service fields are required. ##### Permissions No permission required for creating email/username accounts on an open server. Auth Token is required for other authentication types such as LDAP or SAML. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateUserRequest] createUserRequest (required):
  ///   User object to be created
  ///
  /// * [String] t:
  ///   Token id from an email invitation
  ///
  /// * [String] iid:
  ///   Token id from an invitation link
  Future<Response> createUserWithHttpInfo(CreateUserRequest createUserRequest, { String? t, String? iid, }) async {
    // ignore: prefer_const_declarations
    final path = r'/users';

    // ignore: prefer_final_locals
    Object? postBody = createUserRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (t != null) {
      queryParams.addAll(_queryParams('', 't', t));
    }
    if (iid != null) {
      queryParams.addAll(_queryParams('', 'iid', iid));
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

  /// Create a user
  ///
  /// Create a new user on the system. Password is required for email login. For other authentication types such as LDAP or SAML, auth_data and auth_service fields are required. ##### Permissions No permission required for creating email/username accounts on an open server. Auth Token is required for other authentication types such as LDAP or SAML. 
  ///
  /// Parameters:
  ///
  /// * [CreateUserRequest] createUserRequest (required):
  ///   User object to be created
  ///
  /// * [String] t:
  ///   Token id from an email invitation
  ///
  /// * [String] iid:
  ///   Token id from an invitation link
  Future<User?> createUser(CreateUserRequest createUserRequest, { String? t, String? iid, }) async {
    final response = await createUserWithHttpInfo(createUserRequest,  t: t, iid: iid, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'User',) as User;
    
    }
    return null;
  }

  /// Create a user access token
  ///
  /// Generate a user access token that can be used to authenticate with the Mattermost REST API.  __Minimum server version__: 4.1  ##### Permissions Must have `create_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [CreateUserAccessTokenRequest] createUserAccessTokenRequest (required):
  Future<Response> createUserAccessTokenWithHttpInfo(String userId, CreateUserAccessTokenRequest createUserAccessTokenRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/tokens'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = createUserAccessTokenRequest;

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

  /// Create a user access token
  ///
  /// Generate a user access token that can be used to authenticate with the Mattermost REST API.  __Minimum server version__: 4.1  ##### Permissions Must have `create_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [CreateUserAccessTokenRequest] createUserAccessTokenRequest (required):
  Future<UserAccessToken?> createUserAccessToken(String userId, CreateUserAccessTokenRequest createUserAccessTokenRequest,) async {
    final response = await createUserAccessTokenWithHttpInfo(userId, createUserAccessTokenRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserAccessToken',) as UserAccessToken;
    
    }
    return null;
  }

  /// Deactivate a user account.
  ///
  /// Deactivates the user and revokes all its sessions by archiving its user object.  As of server version 5.28, optionally use the `permanent=true` query parameter to permanently delete the user for compliance reasons. To use this feature `ServiceSettings.EnableAPIUserDeletion` must be set to `true` in the server's configuration. ##### Permissions Must be logged in as the user being deactivated or have the `edit_other_users` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<Response> deleteUserWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}'
      .replaceAll('{user_id}', userId);

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

  /// Deactivate a user account.
  ///
  /// Deactivates the user and revokes all its sessions by archiving its user object.  As of server version 5.28, optionally use the `permanent=true` query parameter to permanently delete the user for compliance reasons. To use this feature `ServiceSettings.EnableAPIUserDeletion` must be set to `true` in the server's configuration. ##### Permissions Must be logged in as the user being deactivated or have the `edit_other_users` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<StatusOK?> deleteUser(String userId,) async {
    final response = await deleteUserWithHttpInfo(userId,);
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

  /// Demote a user to a guest
  ///
  /// Convert a regular user into a guest. This will convert the user into a guest for the whole system while retaining their existing team and channel memberships.  __Minimum server version__: 5.16  ##### Permissions Must be logged in as the user or have the `demote_to_guest` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<Response> demoteUserToGuestWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/demote'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
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

  /// Demote a user to a guest
  ///
  /// Convert a regular user into a guest. This will convert the user into a guest for the whole system while retaining their existing team and channel memberships.  __Minimum server version__: 5.16  ##### Permissions Must be logged in as the user or have the `demote_to_guest` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<StatusOK?> demoteUserToGuest(String userId,) async {
    final response = await demoteUserToGuestWithHttpInfo(userId,);
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

  /// Disable personal access token
  ///
  /// Disable a personal access token and delete any sessions using the token. The token can be re-enabled using `/users/tokens/enable`.  __Minimum server version__: 4.4  ##### Permissions Must have `revoke_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DisableUserAccessTokenRequest] disableUserAccessTokenRequest (required):
  Future<Response> disableUserAccessTokenWithHttpInfo(DisableUserAccessTokenRequest disableUserAccessTokenRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/tokens/disable';

    // ignore: prefer_final_locals
    Object? postBody = disableUserAccessTokenRequest;

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

  /// Disable personal access token
  ///
  /// Disable a personal access token and delete any sessions using the token. The token can be re-enabled using `/users/tokens/enable`.  __Minimum server version__: 4.4  ##### Permissions Must have `revoke_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 
  ///
  /// Parameters:
  ///
  /// * [DisableUserAccessTokenRequest] disableUserAccessTokenRequest (required):
  Future<StatusOK?> disableUserAccessToken(DisableUserAccessTokenRequest disableUserAccessTokenRequest,) async {
    final response = await disableUserAccessTokenWithHttpInfo(disableUserAccessTokenRequest,);
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

  /// Enable personal access token
  ///
  /// Re-enable a personal access token that has been disabled.  __Minimum server version__: 4.4  ##### Permissions Must have `create_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EnableUserAccessTokenRequest] enableUserAccessTokenRequest (required):
  Future<Response> enableUserAccessTokenWithHttpInfo(EnableUserAccessTokenRequest enableUserAccessTokenRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/tokens/enable';

    // ignore: prefer_final_locals
    Object? postBody = enableUserAccessTokenRequest;

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

  /// Enable personal access token
  ///
  /// Re-enable a personal access token that has been disabled.  __Minimum server version__: 4.4  ##### Permissions Must have `create_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 
  ///
  /// Parameters:
  ///
  /// * [EnableUserAccessTokenRequest] enableUserAccessTokenRequest (required):
  Future<StatusOK?> enableUserAccessToken(EnableUserAccessTokenRequest enableUserAccessTokenRequest,) async {
    final response = await enableUserAccessTokenWithHttpInfo(enableUserAccessTokenRequest,);
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

  /// Generate MFA secret
  ///
  /// Generates an multi-factor authentication secret for a user and returns it as a string and as base64 encoded QR code image. ##### Permissions Must be logged in as the user or have the `edit_other_users` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<Response> generateMfaSecretWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/mfa/generate'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
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

  /// Generate MFA secret
  ///
  /// Generates an multi-factor authentication secret for a user and returns it as a string and as base64 encoded QR code image. ##### Permissions Must be logged in as the user or have the `edit_other_users` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<GenerateMfaSecret200Response?> generateMfaSecret(String userId,) async {
    final response = await generateMfaSecretWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GenerateMfaSecret200Response',) as GenerateMfaSecret200Response;
    
    }
    return null;
  }

  /// Get all channel members from all teams for a user
  ///
  /// Get all channel members from all teams for a user.  __Minimum server version__: 6.2.0  ##### Permissions Logged in as the user, or have `edit_other_users` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user. This can also be \"me\" which will point to the current user.
  ///
  /// * [int] page:
  ///   Page specifies which part of the results to return, by PageSize.
  ///
  /// * [int] pageSize:
  ///   PageSize specifies the size of the returned chunk of results.
  Future<Response> getChannelMembersWithTeamDataForUserWithHttpInfo(String userId, { int? page, int? pageSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/channel_members'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
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

  /// Get all channel members from all teams for a user
  ///
  /// Get all channel members from all teams for a user.  __Minimum server version__: 6.2.0  ##### Permissions Logged in as the user, or have `edit_other_users` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user. This can also be \"me\" which will point to the current user.
  ///
  /// * [int] page:
  ///   Page specifies which part of the results to return, by PageSize.
  ///
  /// * [int] pageSize:
  ///   PageSize specifies the size of the returned chunk of results.
  Future<List<ChannelMemberWithTeamData>?> getChannelMembersWithTeamDataForUser(String userId, { int? page, int? pageSize, }) async {
    final response = await getChannelMembersWithTeamDataForUserWithHttpInfo(userId,  page: page, pageSize: pageSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ChannelMemberWithTeamData>') as List)
        .cast<ChannelMemberWithTeamData>()
        .toList();

    }
    return null;
  }

  /// Return user's default (generated) profile image
  ///
  /// Returns the default (generated) user profile image based on user_id string parameter. ##### Permissions Must be logged in. __Minimum server version__: 5.5 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<Response> getDefaultProfileImageWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/image/default'
      .replaceAll('{user_id}', userId);

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

  /// Return user's default (generated) profile image
  ///
  /// Returns the default (generated) user profile image based on user_id string parameter. ##### Permissions Must be logged in. __Minimum server version__: 5.5 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<void> getDefaultProfileImage(String userId,) async {
    final response = await getDefaultProfileImageWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get user IDs of known users
  ///
  /// Get the list of user IDs of users with any direct relationship with a user. That means any user sharing any channel, including direct and group channels. ##### Permissions Must be authenticated.  __Minimum server version__: 5.23 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getKnownUsersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/users/known';

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

  /// Get user IDs of known users
  ///
  /// Get the list of user IDs of users with any direct relationship with a user. That means any user sharing any channel, including direct and group channels. ##### Permissions Must be authenticated.  __Minimum server version__: 5.23 
  Future<UsersStats?> getKnownUsers() async {
    final response = await getKnownUsersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UsersStats',) as UsersStats;
    
    }
    return null;
  }

  /// Get user's profile image
  ///
  /// Get a user's profile image based on user_id string parameter. ##### Permissions Must be logged in. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [num] :
  ///   Not used by the server. Clients can pass in the last picture update time of the user to potentially take advantage of caching
  Future<Response> getProfileImageWithHttpInfo(String userId, { num? timestamp, }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/image'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if ( timestamp != null) {
      queryParams.addAll(_queryParams('', '_', timestamp ));
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

  /// Get user's profile image
  ///
  /// Get a user's profile image based on user_id string parameter. ##### Permissions Must be logged in. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [num] :
  ///   Not used by the server. Clients can pass in the last picture update time of the user to potentially take advantage of caching
  Future<void> getProfileImage(String userId, { num? timestamp, }) async {
    final response = await getProfileImageWithHttpInfo(userId, timestamp: timestamp, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get user's sessions
  ///
  /// Get a list of sessions by providing the user GUID. Sensitive information will be sanitized out. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<Response> getSessionsWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/sessions'
      .replaceAll('{user_id}', userId);

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

  /// Get user's sessions
  ///
  /// Get a list of sessions by providing the user GUID. Sensitive information will be sanitized out. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<List<Session>?> getSessions(String userId,) async {
    final response = await getSessionsWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Session>') as List)
        .cast<Session>()
        .toList();

    }
    return null;
  }

  /// Get total count of users in the system
  ///
  /// Get a total count of users in the system. ##### Permissions Must be authenticated. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTotalUsersStatsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/users/stats';

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

  /// Get total count of users in the system
  ///
  /// Get a total count of users in the system. ##### Permissions Must be authenticated. 
  Future<UsersStats?> getTotalUsersStats() async {
    final response = await getTotalUsersStatsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UsersStats',) as UsersStats;
    
    }
    return null;
  }

  /// Get total count of users in the system matching the specified filters
  ///
  /// Get a count of users in the system matching the specified filters.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inTeam:
  ///   The ID of the team to get user stats for.
  ///
  /// * [String] inChannel:
  ///   The ID of the channel to get user stats for.
  ///
  /// * [bool] includeDeleted:
  ///   If deleted accounts should be included in the count.
  ///
  /// * [bool] includeBots:
  ///   If bot accounts should be included in the count.
  ///
  /// * [String] roles:
  ///   Comma separated string used to filter users based on any of the specified system roles  Example: `?roles=system_admin,system_user` will include users that are either system admins or system users 
  ///
  /// * [String] channelRoles:
  ///   Comma separated string used to filter users based on any of the specified channel roles, can only be used in conjunction with `in_channel`  Example: `?in_channel=4eb6axxw7fg3je5iyasnfudc5y&channel_roles=channel_user` will include users that are only channel users and not admins or guests 
  ///
  /// * [String] teamRoles:
  ///   Comma separated string used to filter users based on any of the specified team roles, can only be used in conjunction with `in_team`  Example: `?in_team=4eb6axxw7fg3je5iyasnfudc5y&team_roles=team_user` will include users that are only team users and not admins or guests 
  Future<Response> getTotalUsersStatsFilteredWithHttpInfo({ String? inTeam, String? inChannel, bool? includeDeleted, bool? includeBots, String? roles, String? channelRoles, String? teamRoles, }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/stats/filtered';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inTeam != null) {
      queryParams.addAll(_queryParams('', 'in_team', inTeam));
    }
    if (inChannel != null) {
      queryParams.addAll(_queryParams('', 'in_channel', inChannel));
    }
    if (includeDeleted != null) {
      queryParams.addAll(_queryParams('', 'include_deleted', includeDeleted));
    }
    if (includeBots != null) {
      queryParams.addAll(_queryParams('', 'include_bots', includeBots));
    }
    if (roles != null) {
      queryParams.addAll(_queryParams('', 'roles', roles));
    }
    if (channelRoles != null) {
      queryParams.addAll(_queryParams('', 'channel_roles', channelRoles));
    }
    if (teamRoles != null) {
      queryParams.addAll(_queryParams('', 'team_roles', teamRoles));
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

  /// Get total count of users in the system matching the specified filters
  ///
  /// Get a count of users in the system matching the specified filters.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] inTeam:
  ///   The ID of the team to get user stats for.
  ///
  /// * [String] inChannel:
  ///   The ID of the channel to get user stats for.
  ///
  /// * [bool] includeDeleted:
  ///   If deleted accounts should be included in the count.
  ///
  /// * [bool] includeBots:
  ///   If bot accounts should be included in the count.
  ///
  /// * [String] roles:
  ///   Comma separated string used to filter users based on any of the specified system roles  Example: `?roles=system_admin,system_user` will include users that are either system admins or system users 
  ///
  /// * [String] channelRoles:
  ///   Comma separated string used to filter users based on any of the specified channel roles, can only be used in conjunction with `in_channel`  Example: `?in_channel=4eb6axxw7fg3je5iyasnfudc5y&channel_roles=channel_user` will include users that are only channel users and not admins or guests 
  ///
  /// * [String] teamRoles:
  ///   Comma separated string used to filter users based on any of the specified team roles, can only be used in conjunction with `in_team`  Example: `?in_team=4eb6axxw7fg3je5iyasnfudc5y&team_roles=team_user` will include users that are only team users and not admins or guests 
  Future<UsersStats?> getTotalUsersStatsFiltered({ String? inTeam, String? inChannel, bool? includeDeleted, bool? includeBots, String? roles, String? channelRoles, String? teamRoles, }) async {
    final response = await getTotalUsersStatsFilteredWithHttpInfo( inTeam: inTeam, inChannel: inChannel, includeDeleted: includeDeleted, includeBots: includeBots, roles: roles, channelRoles: channelRoles, teamRoles: teamRoles, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UsersStats',) as UsersStats;
    
    }
    return null;
  }

  /// Get uploads for a user
  ///
  /// Gets all the upload sessions belonging to a user.  __Minimum server version__: 5.28  ##### Permissions Must be logged in as the user who created the upload sessions. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user. This can also be \"me\" which will point to the current user.
  Future<Response> getUploadsForUserWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/uploads'
      .replaceAll('{user_id}', userId);

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

  /// Get uploads for a user
  ///
  /// Gets all the upload sessions belonging to a user.  __Minimum server version__: 5.28  ##### Permissions Must be logged in as the user who created the upload sessions. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user. This can also be \"me\" which will point to the current user.
  Future<List<UploadSession>?> getUploadsForUser(String userId,) async {
    final response = await getUploadsForUserWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UploadSession>') as List)
        .cast<UploadSession>()
        .toList();

    }
    return null;
  }

  /// Get a user
  ///
  /// Get a user a object. Sensitive information will be sanitized out. ##### Permissions Requires an active session but no other permissions. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID. This can also be \"me\" which will point to the current user.
  Future<Response> getUserWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}'
      .replaceAll('{user_id}', userId);

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

  /// Get a user
  ///
  /// Get a user a object. Sensitive information will be sanitized out. ##### Permissions Requires an active session but no other permissions. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID. This can also be \"me\" which will point to the current user.
  Future<User?> getUser(String userId,) async {
    final response = await getUserWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'User',) as User;
    
    }
    return null;
  }

  /// Get a user access token
  ///
  /// Get a user access token. Does not include the actual authentication token.  __Minimum server version__: 4.1  ##### Permissions Must have `read_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tokenId (required):
  ///   User access token GUID
  Future<Response> getUserAccessTokenWithHttpInfo(String tokenId,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/tokens/{token_id}'
      .replaceAll('{token_id}', tokenId);

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

  /// Get a user access token
  ///
  /// Get a user access token. Does not include the actual authentication token.  __Minimum server version__: 4.1  ##### Permissions Must have `read_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] tokenId (required):
  ///   User access token GUID
  Future<UserAccessTokenSanitized?> getUserAccessToken(String tokenId,) async {
    final response = await getUserAccessTokenWithHttpInfo(tokenId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserAccessTokenSanitized',) as UserAccessTokenSanitized;
    
    }
    return null;
  }

  /// Get user access tokens
  ///
  /// Get a page of user access tokens for users on the system. Does not include the actual authentication tokens. Use query parameters for paging.  __Minimum server version__: 4.7  ##### Permissions Must have `manage_system` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of tokens per page.
  Future<Response> getUserAccessTokensWithHttpInfo({ int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/tokens';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
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

  /// Get user access tokens
  ///
  /// Get a page of user access tokens for users on the system. Does not include the actual authentication tokens. Use query parameters for paging.  __Minimum server version__: 4.7  ##### Permissions Must have `manage_system` permission. 
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of tokens per page.
  Future<List<UserAccessTokenSanitized>?> getUserAccessTokens({ int? page, int? perPage, }) async {
    final response = await getUserAccessTokensWithHttpInfo( page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserAccessTokenSanitized>') as List)
        .cast<UserAccessTokenSanitized>()
        .toList();

    }
    return null;
  }

  /// Get user access tokens
  ///
  /// Get a list of user access tokens for a user. Does not include the actual authentication tokens. Use query parameters for paging.  __Minimum server version__: 4.1  ##### Permissions Must have `read_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of tokens per page.
  Future<Response> getUserAccessTokensForUserWithHttpInfo(String userId, { int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/tokens'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
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

  /// Get user access tokens
  ///
  /// Get a list of user access tokens for a user. Does not include the actual authentication tokens. Use query parameters for paging.  __Minimum server version__: 4.1  ##### Permissions Must have `read_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of tokens per page.
  Future<List<UserAccessTokenSanitized>?> getUserAccessTokensForUser(String userId, { int? page, int? perPage, }) async {
    final response = await getUserAccessTokensForUserWithHttpInfo(userId,  page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserAccessTokenSanitized>') as List)
        .cast<UserAccessTokenSanitized>()
        .toList();

    }
    return null;
  }

  /// Get user's audits
  ///
  /// Get a list of audit by providing the user GUID. ##### Permissions Must be logged in as the user or have the `edit_other_users` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<Response> getUserAuditsWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/audits'
      .replaceAll('{user_id}', userId);

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

  /// Get user's audits
  ///
  /// Get a list of audit by providing the user GUID. ##### Permissions Must be logged in as the user or have the `edit_other_users` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<List<Audit>?> getUserAudits(String userId,) async {
    final response = await getUserAuditsWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Audit>') as List)
        .cast<Audit>()
        .toList();

    }
    return null;
  }

  /// Get a user by email
  ///
  /// Get a user object by providing a user email. Sensitive information will be sanitized out. ##### Permissions Requires an active session and for the current session to be able to view another user's email based on the server's privacy settings. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  ///   User Email
  Future<Response> getUserByEmailWithHttpInfo(String email,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/email/{email}'
      .replaceAll('{email}', email);

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

  /// Get a user by email
  ///
  /// Get a user object by providing a user email. Sensitive information will be sanitized out. ##### Permissions Requires an active session and for the current session to be able to view another user's email based on the server's privacy settings. 
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  ///   User Email
  Future<User?> getUserByEmail(String email,) async {
    final response = await getUserByEmailWithHttpInfo(email,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'User',) as User;
    
    }
    return null;
  }

  /// Get a user by username
  ///
  /// Get a user object by providing a username. Sensitive information will be sanitized out. ##### Permissions Requires an active session but no other permissions. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   Username
  Future<Response> getUserByUsernameWithHttpInfo(String username,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/username/{username}'
      .replaceAll('{username}', username);

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

  /// Get a user by username
  ///
  /// Get a user object by providing a username. Sensitive information will be sanitized out. ##### Permissions Requires an active session but no other permissions. 
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   Username
  Future<User?> getUserByUsername(String username,) async {
    final response = await getUserByUsernameWithHttpInfo(username,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'User',) as User;
    
    }
    return null;
  }

  /// Fetches user's latest terms of service action if the latest action was for acceptance.
  ///
  /// Will be deprecated in v6.0 Fetches user's latest terms of service action if the latest action was for acceptance.  __Minimum server version__: 5.6 ##### Permissions Must be logged in as the user being acted on. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<Response> getUserTermsOfServiceWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/terms_of_service'
      .replaceAll('{user_id}', userId);

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

  /// Fetches user's latest terms of service action if the latest action was for acceptance.
  ///
  /// Will be deprecated in v6.0 Fetches user's latest terms of service action if the latest action was for acceptance.  __Minimum server version__: 5.6 ##### Permissions Must be logged in as the user being acted on. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<UserTermsOfService?> getUserTermsOfService(String userId,) async {
    final response = await getUserTermsOfServiceWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserTermsOfService',) as UserTermsOfService;
    
    }
    return null;
  }

  /// Get users
  ///
  /// Get a page of a list of users. Based on query string parameters, select users from a team, channel, or select users not in a specific channel.  Since server version 4.0, some basic sorting is available using the `sort` query parameter. Sorting is currently only supported when selecting users on a team. ##### Permissions Requires an active session and (if specified) membership to the channel or team being selected from. 
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
  /// * [String] inTeam:
  ///   The ID of the team to get users for.
  ///
  /// * [String] notInTeam:
  ///   The ID of the team to exclude users for. Must not be used with \"in_team\" query parameter.
  ///
  /// * [String] inChannel:
  ///   The ID of the channel to get users for.
  ///
  /// * [String] notInChannel:
  ///   The ID of the channel to exclude users for. Must be used with \"in_channel\" query parameter.
  ///
  /// * [String] inGroup:
  ///   The ID of the group to get users for. Must have `manage_system` permission.
  ///
  /// * [bool] groupConstrained:
  ///   When used with `not_in_channel` or `not_in_team`, returns only the users that are allowed to join the channel or team based on its group constrains.
  ///
  /// * [bool] withoutTeam:
  ///   Whether or not to list users that are not on any team. This option takes precendence over `in_team`, `in_channel`, and `not_in_channel`.
  ///
  /// * [bool] active:
  ///   Whether or not to list only users that are active. This option cannot be used along with the `inactive` option.
  ///
  /// * [bool] inactive:
  ///   Whether or not to list only users that are deactivated. This option cannot be used along with the `active` option.
  ///
  /// * [String] role:
  ///   Returns users that have this role.
  ///
  /// * [String] sort:
  ///   Sort is only available in conjunction with certain options below. The paging parameter is also always available.  ##### `in_team` Can be \"\", \"last_activity_at\" or \"create_at\". When left blank, sorting is done by username. __Minimum server version__: 4.0 ##### `in_channel` Can be \"\", \"status\". When left blank, sorting is done by username. `status` will sort by User's current status (Online, Away, DND, Offline), then by Username. __Minimum server version__: 4.7 
  ///
  /// * [String] roles:
  ///   Comma separated string used to filter users based on any of the specified system roles  Example: `?roles=system_admin,system_user` will return users that are either system admins or system users  __Minimum server version__: 5.26 
  ///
  /// * [String] channelRoles:
  ///   Comma separated string used to filter users based on any of the specified channel roles, can only be used in conjunction with `in_channel`  Example: `?in_channel=4eb6axxw7fg3je5iyasnfudc5y&channel_roles=channel_user` will return users that are only channel users and not admins or guests  __Minimum server version__: 5.26 
  ///
  /// * [String] teamRoles:
  ///   Comma separated string used to filter users based on any of the specified team roles, can only be used in conjunction with `in_team`  Example: `?in_team=4eb6axxw7fg3je5iyasnfudc5y&team_roles=team_user` will return users that are only team users and not admins or guests  __Minimum server version__: 5.26 
  Future<Response> getUsersWithHttpInfo({ int? page, int? perPage, String? inTeam, String? notInTeam, String? inChannel, String? notInChannel, String? inGroup, bool? groupConstrained, bool? withoutTeam, bool? active, bool? inactive, String? role, String? sort, String? roles, String? channelRoles, String? teamRoles, }) async {
    // ignore: prefer_const_declarations
    final path = r'/users';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (inTeam != null) {
      queryParams.addAll(_queryParams('', 'in_team', inTeam));
    }
    if (notInTeam != null) {
      queryParams.addAll(_queryParams('', 'not_in_team', notInTeam));
    }
    if (inChannel != null) {
      queryParams.addAll(_queryParams('', 'in_channel', inChannel));
    }
    if (notInChannel != null) {
      queryParams.addAll(_queryParams('', 'not_in_channel', notInChannel));
    }
    if (inGroup != null) {
      queryParams.addAll(_queryParams('', 'in_group', inGroup));
    }
    if (groupConstrained != null) {
      queryParams.addAll(_queryParams('', 'group_constrained', groupConstrained));
    }
    if (withoutTeam != null) {
      queryParams.addAll(_queryParams('', 'without_team', withoutTeam));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (inactive != null) {
      queryParams.addAll(_queryParams('', 'inactive', inactive));
    }
    if (role != null) {
      queryParams.addAll(_queryParams('', 'role', role));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (roles != null) {
      queryParams.addAll(_queryParams('', 'roles', roles));
    }
    if (channelRoles != null) {
      queryParams.addAll(_queryParams('', 'channel_roles', channelRoles));
    }
    if (teamRoles != null) {
      queryParams.addAll(_queryParams('', 'team_roles', teamRoles));
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

  /// Get users
  ///
  /// Get a page of a list of users. Based on query string parameters, select users from a team, channel, or select users not in a specific channel.  Since server version 4.0, some basic sorting is available using the `sort` query parameter. Sorting is currently only supported when selecting users on a team. ##### Permissions Requires an active session and (if specified) membership to the channel or team being selected from. 
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of users per page. There is a maximum limit of 200 users per page.
  ///
  /// * [String] inTeam:
  ///   The ID of the team to get users for.
  ///
  /// * [String] notInTeam:
  ///   The ID of the team to exclude users for. Must not be used with \"in_team\" query parameter.
  ///
  /// * [String] inChannel:
  ///   The ID of the channel to get users for.
  ///
  /// * [String] notInChannel:
  ///   The ID of the channel to exclude users for. Must be used with \"in_channel\" query parameter.
  ///
  /// * [String] inGroup:
  ///   The ID of the group to get users for. Must have `manage_system` permission.
  ///
  /// * [bool] groupConstrained:
  ///   When used with `not_in_channel` or `not_in_team`, returns only the users that are allowed to join the channel or team based on its group constrains.
  ///
  /// * [bool] withoutTeam:
  ///   Whether or not to list users that are not on any team. This option takes precendence over `in_team`, `in_channel`, and `not_in_channel`.
  ///
  /// * [bool] active:
  ///   Whether or not to list only users that are active. This option cannot be used along with the `inactive` option.
  ///
  /// * [bool] inactive:
  ///   Whether or not to list only users that are deactivated. This option cannot be used along with the `active` option.
  ///
  /// * [String] role:
  ///   Returns users that have this role.
  ///
  /// * [String] sort:
  ///   Sort is only available in conjunction with certain options below. The paging parameter is also always available.  ##### `in_team` Can be \"\", \"last_activity_at\" or \"create_at\". When left blank, sorting is done by username. __Minimum server version__: 4.0 ##### `in_channel` Can be \"\", \"status\". When left blank, sorting is done by username. `status` will sort by User's current status (Online, Away, DND, Offline), then by Username. __Minimum server version__: 4.7 
  ///
  /// * [String] roles:
  ///   Comma separated string used to filter users based on any of the specified system roles  Example: `?roles=system_admin,system_user` will return users that are either system admins or system users  __Minimum server version__: 5.26 
  ///
  /// * [String] channelRoles:
  ///   Comma separated string used to filter users based on any of the specified channel roles, can only be used in conjunction with `in_channel`  Example: `?in_channel=4eb6axxw7fg3je5iyasnfudc5y&channel_roles=channel_user` will return users that are only channel users and not admins or guests  __Minimum server version__: 5.26 
  ///
  /// * [String] teamRoles:
  ///   Comma separated string used to filter users based on any of the specified team roles, can only be used in conjunction with `in_team`  Example: `?in_team=4eb6axxw7fg3je5iyasnfudc5y&team_roles=team_user` will return users that are only team users and not admins or guests  __Minimum server version__: 5.26 
  Future<List<User>?> getUsers({ int? page, int? perPage, String? inTeam, String? notInTeam, String? inChannel, String? notInChannel, String? inGroup, bool? groupConstrained, bool? withoutTeam, bool? active, bool? inactive, String? role, String? sort, String? roles, String? channelRoles, String? teamRoles, }) async {
    final response = await getUsersWithHttpInfo( page: page, perPage: perPage, inTeam: inTeam, notInTeam: notInTeam, inChannel: inChannel, notInChannel: notInChannel, inGroup: inGroup, groupConstrained: groupConstrained, withoutTeam: withoutTeam, active: active, inactive: inactive, role: role, sort: sort, roles: roles, channelRoles: channelRoles, teamRoles: teamRoles, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<User>') as List)
        .cast<User>()
        .toList();

    }
    return null;
  }

  /// Get users by group channels ids
  ///
  /// Get an object containing a key per group channel id in the query and its value as a list of users members of that group channel.  The user must be a member of the group ids in the query, or they will be omitted from the response. ##### Permissions Requires an active session but no other permissions.  __Minimum server version__: 5.14 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  ///   List of group channel ids
  Future<Response> getUsersByGroupChannelIdsWithHttpInfo(List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/group_channels';

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

  /// Get users by group channels ids
  ///
  /// Get an object containing a key per group channel id in the query and its value as a list of users members of that group channel.  The user must be a member of the group ids in the query, or they will be omitted from the response. ##### Permissions Requires an active session but no other permissions.  __Minimum server version__: 5.14 
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  ///   List of group channel ids
  Future<GetUsersByGroupChannelIds200Response?> getUsersByGroupChannelIds(List<String> requestBody,) async {
    final response = await getUsersByGroupChannelIdsWithHttpInfo(requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetUsersByGroupChannelIds200Response',) as GetUsersByGroupChannelIds200Response;
    
    }
    return null;
  }

  /// Get users by ids
  ///
  /// Get a list of users based on a provided list of user ids. ##### Permissions Requires an active session but no other permissions. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  ///   List of user ids
  ///
  /// * [int] since:
  ///   Only return users that have been modified since the given Unix timestamp (in milliseconds).  __Minimum server version__: 5.14 
  Future<Response> getUsersByIdsWithHttpInfo(List<String> requestBody, { int? since, }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/ids';

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
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

  /// Get users by ids
  ///
  /// Get a list of users based on a provided list of user ids. ##### Permissions Requires an active session but no other permissions. 
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  ///   List of user ids
  ///
  /// * [int] since:
  ///   Only return users that have been modified since the given Unix timestamp (in milliseconds).  __Minimum server version__: 5.14 
  Future<List<User>?> getUsersByIds(List<String> requestBody, { int? since, }) async {
    final response = await getUsersByIdsWithHttpInfo(requestBody,  since: since, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<User>') as List)
        .cast<User>()
        .toList();

    }
    return null;
  }

  /// Get users by usernames
  ///
  /// Get a list of users based on a provided list of usernames. ##### Permissions Requires an active session but no other permissions. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  ///   List of usernames
  Future<Response> getUsersByUsernamesWithHttpInfo(List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/usernames';

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

  /// Get users by usernames
  ///
  /// Get a list of users based on a provided list of usernames. ##### Permissions Requires an active session but no other permissions. 
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  ///   List of usernames
  Future<List<User>?> getUsersByUsernames(List<String> requestBody,) async {
    final response = await getUsersByUsernamesWithHttpInfo(requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<User>') as List)
        .cast<User>()
        .toList();

    }
    return null;
  }

  /// Login to Mattermost server
  ///
  /// ##### Permissions No permission required 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [LoginRequest] loginRequest (required):
  ///   User authentication object
  Future<Response> loginWithHttpInfo(LoginRequest loginRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/login';

    // ignore: prefer_final_locals
    Object? postBody = loginRequest;

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

  /// Login to Mattermost server
  ///
  /// ##### Permissions No permission required 
  ///
  /// Parameters:
  ///
  /// * [LoginRequest] loginRequest (required):
  ///   User authentication object
  Future<User?> login(LoginRequest loginRequest,) async {
    final response = await loginWithHttpInfo(loginRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'User',) as User;
    
    }
    return null;
  }

  /// Auto-Login to Mattermost server using CWS token
  ///
  /// CWS stands for Customer Web Server which is the cloud service used to manage cloud instances. ##### Permissions A Cloud license is required 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [LoginByCwsTokenRequest] loginByCwsTokenRequest (required):
  ///   User authentication object
  Future<Response> loginByCwsTokenWithHttpInfo(LoginByCwsTokenRequest loginByCwsTokenRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/login/cws';

    // ignore: prefer_final_locals
    Object? postBody = loginByCwsTokenRequest;

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

  /// Auto-Login to Mattermost server using CWS token
  ///
  /// CWS stands for Customer Web Server which is the cloud service used to manage cloud instances. ##### Permissions A Cloud license is required 
  ///
  /// Parameters:
  ///
  /// * [LoginByCwsTokenRequest] loginByCwsTokenRequest (required):
  ///   User authentication object
  Future<void> loginByCwsToken(LoginByCwsTokenRequest loginByCwsTokenRequest,) async {
    final response = await loginByCwsTokenWithHttpInfo(loginByCwsTokenRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Logout from the Mattermost server
  ///
  /// ##### Permissions An active session is required 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> logoutWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/users/logout';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
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

  /// Logout from the Mattermost server
  ///
  /// ##### Permissions An active session is required 
  Future<StatusOK?> logout() async {
    final response = await logoutWithHttpInfo();
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

  /// Migrate user accounts authentication type to LDAP.
  ///
  /// Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to LDAP. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MigrateAuthToLdapRequest] migrateAuthToLdapRequest:
  Future<Response> migrateAuthToLdapWithHttpInfo({ MigrateAuthToLdapRequest? migrateAuthToLdapRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/migrate_auth/ldap';

    // ignore: prefer_final_locals
    Object? postBody = migrateAuthToLdapRequest;

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

  /// Migrate user accounts authentication type to LDAP.
  ///
  /// Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to LDAP. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 
  ///
  /// Parameters:
  ///
  /// * [MigrateAuthToLdapRequest] migrateAuthToLdapRequest:
  Future<void> migrateAuthToLdap({ MigrateAuthToLdapRequest? migrateAuthToLdapRequest, }) async {
    final response = await migrateAuthToLdapWithHttpInfo( migrateAuthToLdapRequest: migrateAuthToLdapRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Migrate user accounts authentication type to SAML.
  ///
  /// Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to SAML. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MigrateAuthToSamlRequest] migrateAuthToSamlRequest:
  Future<Response> migrateAuthToSamlWithHttpInfo({ MigrateAuthToSamlRequest? migrateAuthToSamlRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/migrate_auth/saml';

    // ignore: prefer_final_locals
    Object? postBody = migrateAuthToSamlRequest;

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

  /// Migrate user accounts authentication type to SAML.
  ///
  /// Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to SAML. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 
  ///
  /// Parameters:
  ///
  /// * [MigrateAuthToSamlRequest] migrateAuthToSamlRequest:
  Future<void> migrateAuthToSaml({ MigrateAuthToSamlRequest? migrateAuthToSamlRequest, }) async {
    final response = await migrateAuthToSamlWithHttpInfo( migrateAuthToSamlRequest: migrateAuthToSamlRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Patch a user
  ///
  /// Partially update a user by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [PatchUserRequest] patchUserRequest (required):
  ///   User object that is to be updated
  Future<Response> patchUserWithHttpInfo(String userId, PatchUserRequest patchUserRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/patch'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = patchUserRequest;

    final queryParams = <QueryParam>[];
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

  /// Patch a user
  ///
  /// Partially update a user by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [PatchUserRequest] patchUserRequest (required):
  ///   User object that is to be updated
  Future<User?> patchUser(String userId, PatchUserRequest patchUserRequest,) async {
    final response = await patchUserWithHttpInfo(userId, patchUserRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'User',) as User;
    
    }
    return null;
  }

  /// Permanent delete all users
  ///
  /// Permanently deletes all users and all their related information, including posts.  __Minimum server version__: 5.26.0  __Local mode only__: This endpoint is only available through [local mode](https://docs.mattermost.com/administration/mmctl-cli-tool.html#local-mode). 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> permanentDeleteAllUsersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/users';

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

  /// Permanent delete all users
  ///
  /// Permanently deletes all users and all their related information, including posts.  __Minimum server version__: 5.26.0  __Local mode only__: This endpoint is only available through [local mode](https://docs.mattermost.com/administration/mmctl-cli-tool.html#local-mode). 
  Future<void> permanentDeleteAllUsers() async {
    final response = await permanentDeleteAllUsersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Promote a guest to user
  ///
  /// Convert a guest into a regular user. This will convert the guest into a user for the whole system while retaining any team and channel memberships and automatically joining them to the default channels.  __Minimum server version__: 5.16  ##### Permissions Must be logged in as the user or have the `promote_guest` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<Response> promoteGuestToUserWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/promote'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
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

  /// Promote a guest to user
  ///
  /// Convert a guest into a regular user. This will convert the guest into a user for the whole system while retaining any team and channel memberships and automatically joining them to the default channels.  __Minimum server version__: 5.16  ##### Permissions Must be logged in as the user or have the `promote_guest` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<StatusOK?> promoteGuestToUser(String userId,) async {
    final response = await promoteGuestToUserWithHttpInfo(userId,);
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

  /// Publish a user typing websocket event.
  ///
  /// Notify users in the given channel via websocket that the given user is typing. __Minimum server version__: 5.26 ##### Permissions Must have `manage_system` permission to publish for any user other than oneself. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [PublishUserTypingRequest] publishUserTypingRequest:
  Future<Response> publishUserTypingWithHttpInfo(String userId, { PublishUserTypingRequest? publishUserTypingRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/typing'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = publishUserTypingRequest;

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

  /// Publish a user typing websocket event.
  ///
  /// Notify users in the given channel via websocket that the given user is typing. __Minimum server version__: 5.26 ##### Permissions Must have `manage_system` permission to publish for any user other than oneself. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [PublishUserTypingRequest] publishUserTypingRequest:
  Future<void> publishUserTyping(String userId, { PublishUserTypingRequest? publishUserTypingRequest, }) async {
    final response = await publishUserTypingWithHttpInfo(userId,  publishUserTypingRequest: publishUserTypingRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Records user action when they accept or decline custom terms of service
  ///
  /// Records user action when they accept or decline custom terms of service. Records the action in audit table. Updates user's last accepted terms of service ID if they accepted it.  __Minimum server version__: 5.4 ##### Permissions Must be logged in as the user being acted on. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [RegisterTermsOfServiceActionRequest] registerTermsOfServiceActionRequest (required):
  ///   terms of service details
  Future<Response> registerTermsOfServiceActionWithHttpInfo(String userId, RegisterTermsOfServiceActionRequest registerTermsOfServiceActionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/terms_of_service'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = registerTermsOfServiceActionRequest;

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

  /// Records user action when they accept or decline custom terms of service
  ///
  /// Records user action when they accept or decline custom terms of service. Records the action in audit table. Updates user's last accepted terms of service ID if they accepted it.  __Minimum server version__: 5.4 ##### Permissions Must be logged in as the user being acted on. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [RegisterTermsOfServiceActionRequest] registerTermsOfServiceActionRequest (required):
  ///   terms of service details
  Future<StatusOK?> registerTermsOfServiceAction(String userId, RegisterTermsOfServiceActionRequest registerTermsOfServiceActionRequest,) async {
    final response = await registerTermsOfServiceActionWithHttpInfo(userId, registerTermsOfServiceActionRequest,);
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

  /// Reset password
  ///
  /// Update the password for a user using a one-use, timed recovery code tied to the user's account. Only works for non-SSO users. ##### Permissions No permissions required. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ResetPasswordRequest] resetPasswordRequest (required):
  Future<Response> resetPasswordWithHttpInfo(ResetPasswordRequest resetPasswordRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/password/reset';

    // ignore: prefer_final_locals
    Object? postBody = resetPasswordRequest;

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

  /// Reset password
  ///
  /// Update the password for a user using a one-use, timed recovery code tied to the user's account. Only works for non-SSO users. ##### Permissions No permissions required. 
  ///
  /// Parameters:
  ///
  /// * [ResetPasswordRequest] resetPasswordRequest (required):
  Future<StatusOK?> resetPassword(ResetPasswordRequest resetPasswordRequest,) async {
    final response = await resetPasswordWithHttpInfo(resetPasswordRequest,);
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

  /// Revoke all active sessions for a user
  ///
  /// Revokes all user sessions from the provided user id and session id strings. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. __Minimum server version__: 4.4 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<Response> revokeAllSessionsWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/sessions/revoke/all'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
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

  /// Revoke all active sessions for a user
  ///
  /// Revokes all user sessions from the provided user id and session id strings. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. __Minimum server version__: 4.4 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<StatusOK?> revokeAllSessions(String userId,) async {
    final response = await revokeAllSessionsWithHttpInfo(userId,);
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

  /// Revoke a user session
  ///
  /// Revokes a user session from the provided user id and session id strings. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [RevokeSessionRequest] revokeSessionRequest (required):
  Future<Response> revokeSessionWithHttpInfo(String userId, RevokeSessionRequest revokeSessionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/sessions/revoke'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = revokeSessionRequest;

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

  /// Revoke a user session
  ///
  /// Revokes a user session from the provided user id and session id strings. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [RevokeSessionRequest] revokeSessionRequest (required):
  Future<StatusOK?> revokeSession(String userId, RevokeSessionRequest revokeSessionRequest,) async {
    final response = await revokeSessionWithHttpInfo(userId, revokeSessionRequest,);
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

  /// Revoke all sessions from all users.
  ///
  /// For any session currently on the server (including admin) it will be revoked. Clients will be notified to log out users.  __Minimum server version__: 5.14  ##### Permissions Must have `manage_system` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> revokeSessionsFromAllUsersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/users/sessions/revoke/all';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
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

  /// Revoke all sessions from all users.
  ///
  /// For any session currently on the server (including admin) it will be revoked. Clients will be notified to log out users.  __Minimum server version__: 5.14  ##### Permissions Must have `manage_system` permission. 
  Future<void> revokeSessionsFromAllUsers() async {
    final response = await revokeSessionsFromAllUsersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Revoke a user access token
  ///
  /// Revoke a user access token and delete any sessions using the token.  __Minimum server version__: 4.1  ##### Permissions Must have `revoke_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RevokeUserAccessTokenRequest] revokeUserAccessTokenRequest (required):
  Future<Response> revokeUserAccessTokenWithHttpInfo(RevokeUserAccessTokenRequest revokeUserAccessTokenRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/tokens/revoke';

    // ignore: prefer_final_locals
    Object? postBody = revokeUserAccessTokenRequest;

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

  /// Revoke a user access token
  ///
  /// Revoke a user access token and delete any sessions using the token.  __Minimum server version__: 4.1  ##### Permissions Must have `revoke_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 
  ///
  /// Parameters:
  ///
  /// * [RevokeUserAccessTokenRequest] revokeUserAccessTokenRequest (required):
  Future<StatusOK?> revokeUserAccessToken(RevokeUserAccessTokenRequest revokeUserAccessTokenRequest,) async {
    final response = await revokeUserAccessTokenWithHttpInfo(revokeUserAccessTokenRequest,);
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

  /// Search tokens
  ///
  /// Get a list of tokens based on search criteria provided in the request body. Searches are done against the token id, user id and username.  __Minimum server version__: 4.7  ##### Permissions Must have `manage_system` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SearchUserAccessTokensRequest] searchUserAccessTokensRequest (required):
  ///   Search criteria
  Future<Response> searchUserAccessTokensWithHttpInfo(SearchUserAccessTokensRequest searchUserAccessTokensRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/tokens/search';

    // ignore: prefer_final_locals
    Object? postBody = searchUserAccessTokensRequest;

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

  /// Search tokens
  ///
  /// Get a list of tokens based on search criteria provided in the request body. Searches are done against the token id, user id and username.  __Minimum server version__: 4.7  ##### Permissions Must have `manage_system` permission. 
  ///
  /// Parameters:
  ///
  /// * [SearchUserAccessTokensRequest] searchUserAccessTokensRequest (required):
  ///   Search criteria
  Future<List<UserAccessTokenSanitized>?> searchUserAccessTokens(SearchUserAccessTokensRequest searchUserAccessTokensRequest,) async {
    final response = await searchUserAccessTokensWithHttpInfo(searchUserAccessTokensRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserAccessTokenSanitized>') as List)
        .cast<UserAccessTokenSanitized>()
        .toList();

    }
    return null;
  }

  /// Search users
  ///
  /// Get a list of users based on search criteria provided in the request body. Searches are typically done against username, full name, nickname and email unless otherwise configured by the server. ##### Permissions Requires an active session and `read_channel` and/or `view_team` permissions for any channels or teams specified in the request body. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SearchUsersRequest] searchUsersRequest (required):
  ///   Search criteria
  Future<Response> searchUsersWithHttpInfo(SearchUsersRequest searchUsersRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/search';

    // ignore: prefer_final_locals
    Object? postBody = searchUsersRequest;

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

  /// Search users
  ///
  /// Get a list of users based on search criteria provided in the request body. Searches are typically done against username, full name, nickname and email unless otherwise configured by the server. ##### Permissions Requires an active session and `read_channel` and/or `view_team` permissions for any channels or teams specified in the request body. 
  ///
  /// Parameters:
  ///
  /// * [SearchUsersRequest] searchUsersRequest (required):
  ///   Search criteria
  Future<List<User>?> searchUsers(SearchUsersRequest searchUsersRequest,) async {
    final response = await searchUsersWithHttpInfo(searchUsersRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<User>') as List)
        .cast<User>()
        .toList();

    }
    return null;
  }

  /// Send password reset email
  ///
  /// Send an email containing a link for resetting the user's password. The link will contain a one-use, timed recovery code tied to the user's account. Only works for non-SSO users. ##### Permissions No permissions required. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SendPasswordResetEmailRequest] sendPasswordResetEmailRequest (required):
  Future<Response> sendPasswordResetEmailWithHttpInfo(SendPasswordResetEmailRequest sendPasswordResetEmailRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/password/reset/send';

    // ignore: prefer_final_locals
    Object? postBody = sendPasswordResetEmailRequest;

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

  /// Send password reset email
  ///
  /// Send an email containing a link for resetting the user's password. The link will contain a one-use, timed recovery code tied to the user's account. Only works for non-SSO users. ##### Permissions No permissions required. 
  ///
  /// Parameters:
  ///
  /// * [SendPasswordResetEmailRequest] sendPasswordResetEmailRequest (required):
  Future<StatusOK?> sendPasswordResetEmail(SendPasswordResetEmailRequest sendPasswordResetEmailRequest,) async {
    final response = await sendPasswordResetEmailWithHttpInfo(sendPasswordResetEmailRequest,);
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

  /// Send verification email
  ///
  /// Send an email with a verification link to a user that has an email matching the one in the request body. This endpoint will return success even if the email does not match any users on the system. ##### Permissions No permissions required. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SendVerificationEmailRequest] sendVerificationEmailRequest (required):
  Future<Response> sendVerificationEmailWithHttpInfo(SendVerificationEmailRequest sendVerificationEmailRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/email/verify/send';

    // ignore: prefer_final_locals
    Object? postBody = sendVerificationEmailRequest;

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

  /// Send verification email
  ///
  /// Send an email with a verification link to a user that has an email matching the one in the request body. This endpoint will return success even if the email does not match any users on the system. ##### Permissions No permissions required. 
  ///
  /// Parameters:
  ///
  /// * [SendVerificationEmailRequest] sendVerificationEmailRequest (required):
  Future<StatusOK?> sendVerificationEmail(SendVerificationEmailRequest sendVerificationEmailRequest,) async {
    final response = await sendVerificationEmailWithHttpInfo(sendVerificationEmailRequest,);
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

  /// Delete user's profile image
  ///
  /// Delete user's profile image and reset to default image based on user_id string parameter. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. __Minimum server version__: 5.5 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<Response> setDefaultProfileImageWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/image'
      .replaceAll('{user_id}', userId);

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

  /// Delete user's profile image
  ///
  /// Delete user's profile image and reset to default image based on user_id string parameter. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. __Minimum server version__: 5.5 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<StatusOK?> setDefaultProfileImage(String userId,) async {
    final response = await setDefaultProfileImageWithHttpInfo(userId,);
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

  /// Set user's profile image
  ///
  /// Set a user's profile image based on user_id string parameter. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [MultipartFile] image (required):
  ///   The image to be uploaded
  Future<Response> setProfileImageWithHttpInfo(String userId, MultipartFile image,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/image'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
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

  /// Set user's profile image
  ///
  /// Set a user's profile image based on user_id string parameter. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [MultipartFile] image (required):
  ///   The image to be uploaded
  Future<StatusOK?> setProfileImage(String userId, MultipartFile image,) async {
    final response = await setProfileImageWithHttpInfo(userId, image,);
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

  /// Switch login method
  ///
  /// Switch a user's login method from using email to OAuth2/SAML/LDAP or back to email. When switching to OAuth2/SAML, account switching is not complete until the user follows the returned link and completes any steps on the OAuth2/SAML service provider.  To switch from email to OAuth2/SAML, specify `current_service`, `new_service`, `email` and `password`.  To switch from OAuth2/SAML to email, specify `current_service`, `new_service`, `email` and `new_password`.  To switch from email to LDAP/AD, specify `current_service`, `new_service`, `email`, `password`, `ldap_ip` and `new_password` (this is the user's LDAP password).  To switch from LDAP/AD to email, specify `current_service`, `new_service`, `ldap_ip`, `password` (this is the user's LDAP password), `email`  and `new_password`.  Additionally, specify `mfa_code` when trying to switch an account on LDAP/AD or email that has MFA activated.  ##### Permissions No current authentication required except when switching from OAuth2/SAML to email. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SwitchAccountTypeRequest] switchAccountTypeRequest (required):
  Future<Response> switchAccountTypeWithHttpInfo(SwitchAccountTypeRequest switchAccountTypeRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/login/switch';

    // ignore: prefer_final_locals
    Object? postBody = switchAccountTypeRequest;

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

  /// Switch login method
  ///
  /// Switch a user's login method from using email to OAuth2/SAML/LDAP or back to email. When switching to OAuth2/SAML, account switching is not complete until the user follows the returned link and completes any steps on the OAuth2/SAML service provider.  To switch from email to OAuth2/SAML, specify `current_service`, `new_service`, `email` and `password`.  To switch from OAuth2/SAML to email, specify `current_service`, `new_service`, `email` and `new_password`.  To switch from email to LDAP/AD, specify `current_service`, `new_service`, `email`, `password`, `ldap_ip` and `new_password` (this is the user's LDAP password).  To switch from LDAP/AD to email, specify `current_service`, `new_service`, `ldap_ip`, `password` (this is the user's LDAP password), `email`  and `new_password`.  Additionally, specify `mfa_code` when trying to switch an account on LDAP/AD or email that has MFA activated.  ##### Permissions No current authentication required except when switching from OAuth2/SAML to email. 
  ///
  /// Parameters:
  ///
  /// * [SwitchAccountTypeRequest] switchAccountTypeRequest (required):
  Future<SwitchAccountType200Response?> switchAccountType(SwitchAccountTypeRequest switchAccountTypeRequest,) async {
    final response = await switchAccountTypeWithHttpInfo(switchAccountTypeRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SwitchAccountType200Response',) as SwitchAccountType200Response;
    
    }
    return null;
  }

  /// Update a user
  ///
  /// Update a user by providing the user object. The fields that can be updated are defined in the request body, all other provided fields will be ignored. Any fields not included in the request body will be set to null or reverted to default values. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [UpdateUserRequest] updateUserRequest (required):
  ///   User object that is to be updated
  Future<Response> updateUserWithHttpInfo(String userId, UpdateUserRequest updateUserRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = updateUserRequest;

    final queryParams = <QueryParam>[];
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

  /// Update a user
  ///
  /// Update a user by providing the user object. The fields that can be updated are defined in the request body, all other provided fields will be ignored. Any fields not included in the request body will be set to null or reverted to default values. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [UpdateUserRequest] updateUserRequest (required):
  ///   User object that is to be updated
  Future<User?> updateUser(String userId, UpdateUserRequest updateUserRequest,) async {
    final response = await updateUserWithHttpInfo(userId, updateUserRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'User',) as User;
    
    }
    return null;
  }

  /// Update user active status
  ///
  /// Update user active or inactive status.  __Since server version 4.6, users using a SSO provider to login can be activated or deactivated with this endpoint. However, if their activation status in Mattermost does not reflect their status in the SSO provider, the next synchronization or login by that user will reset the activation status to that of their account in the SSO provider. Server versions 4.5 and before do not allow activation or deactivation of SSO users from this endpoint.__ ##### Permissions User can deactivate themselves. User with `manage_system` permission can activate or deactivate a user. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [UpdateUserActiveRequest] updateUserActiveRequest (required):
  ///   Use `true` to set the user active, `false` for inactive
  Future<Response> updateUserActiveWithHttpInfo(String userId, UpdateUserActiveRequest updateUserActiveRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/active'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = updateUserActiveRequest;

    final queryParams = <QueryParam>[];
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

  /// Update user active status
  ///
  /// Update user active or inactive status.  __Since server version 4.6, users using a SSO provider to login can be activated or deactivated with this endpoint. However, if their activation status in Mattermost does not reflect their status in the SSO provider, the next synchronization or login by that user will reset the activation status to that of their account in the SSO provider. Server versions 4.5 and before do not allow activation or deactivation of SSO users from this endpoint.__ ##### Permissions User can deactivate themselves. User with `manage_system` permission can activate or deactivate a user. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [UpdateUserActiveRequest] updateUserActiveRequest (required):
  ///   Use `true` to set the user active, `false` for inactive
  Future<StatusOK?> updateUserActive(String userId, UpdateUserActiveRequest updateUserActiveRequest,) async {
    final response = await updateUserActiveWithHttpInfo(userId, updateUserActiveRequest,);
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

  /// Update a user's authentication method
  ///
  /// Updates a user's authentication method. This can be used to change them to/from LDAP authentication for example.  __Minimum server version__: 4.6 ##### Permissions Must have the `edit_other_users` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [UserAuthData] userAuthData (required):
  Future<Response> updateUserAuthWithHttpInfo(String userId, UserAuthData userAuthData,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/auth'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = userAuthData;

    final queryParams = <QueryParam>[];
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

  /// Update a user's authentication method
  ///
  /// Updates a user's authentication method. This can be used to change them to/from LDAP authentication for example.  __Minimum server version__: 4.6 ##### Permissions Must have the `edit_other_users` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [UserAuthData] userAuthData (required):
  Future<UserAuthData?> updateUserAuth(String userId, UserAuthData userAuthData,) async {
    final response = await updateUserAuthWithHttpInfo(userId, userAuthData,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserAuthData',) as UserAuthData;
    
    }
    return null;
  }

  /// Update a user's MFA
  ///
  /// Activates multi-factor authentication for the user if `activate` is true and a valid `code` is provided. If activate is false, then `code` is not required and multi-factor authentication is disabled for the user. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [UpdateUserMfaRequest] updateUserMfaRequest (required):
  Future<Response> updateUserMfaWithHttpInfo(String userId, UpdateUserMfaRequest updateUserMfaRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/mfa'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = updateUserMfaRequest;

    final queryParams = <QueryParam>[];
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

  /// Update a user's MFA
  ///
  /// Activates multi-factor authentication for the user if `activate` is true and a valid `code` is provided. If activate is false, then `code` is not required and multi-factor authentication is disabled for the user. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [UpdateUserMfaRequest] updateUserMfaRequest (required):
  Future<StatusOK?> updateUserMfa(String userId, UpdateUserMfaRequest updateUserMfaRequest,) async {
    final response = await updateUserMfaWithHttpInfo(userId, updateUserMfaRequest,);
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

  /// Update a user's password
  ///
  /// Update a user's password. New password must meet password policy set by server configuration. Current password is required if you're updating your own password. ##### Permissions Must be logged in as the user the password is being changed for or have `manage_system` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [UpdateUserPasswordRequest] updateUserPasswordRequest (required):
  Future<Response> updateUserPasswordWithHttpInfo(String userId, UpdateUserPasswordRequest updateUserPasswordRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/password'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = updateUserPasswordRequest;

    final queryParams = <QueryParam>[];
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

  /// Update a user's password
  ///
  /// Update a user's password. New password must meet password policy set by server configuration. Current password is required if you're updating your own password. ##### Permissions Must be logged in as the user the password is being changed for or have `manage_system` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [UpdateUserPasswordRequest] updateUserPasswordRequest (required):
  Future<StatusOK?> updateUserPassword(String userId, UpdateUserPasswordRequest updateUserPasswordRequest,) async {
    final response = await updateUserPasswordWithHttpInfo(userId, updateUserPasswordRequest,);
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

  /// Update a user's roles
  ///
  /// Update a user's system-level roles. Valid user roles are \"system_user\", \"system_admin\" or both of them. Overwrites any previously assigned system-level roles. ##### Permissions Must have the `manage_roles` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [UpdateUserRolesRequest] updateUserRolesRequest (required):
  ///   Space-delimited system roles to assign to the user
  Future<Response> updateUserRolesWithHttpInfo(String userId, UpdateUserRolesRequest updateUserRolesRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/roles'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = updateUserRolesRequest;

    final queryParams = <QueryParam>[];
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

  /// Update a user's roles
  ///
  /// Update a user's system-level roles. Valid user roles are \"system_user\", \"system_admin\" or both of them. Overwrites any previously assigned system-level roles. ##### Permissions Must have the `manage_roles` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [UpdateUserRolesRequest] updateUserRolesRequest (required):
  ///   Space-delimited system roles to assign to the user
  Future<StatusOK?> updateUserRoles(String userId, UpdateUserRolesRequest updateUserRolesRequest,) async {
    final response = await updateUserRolesWithHttpInfo(userId, updateUserRolesRequest,);
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

  /// Verify user email
  ///
  /// Verify the email used by a user to sign-up their account with. ##### Permissions No permissions required. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [VerifyUserEmailRequest] verifyUserEmailRequest (required):
  Future<Response> verifyUserEmailWithHttpInfo(VerifyUserEmailRequest verifyUserEmailRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/email/verify';

    // ignore: prefer_final_locals
    Object? postBody = verifyUserEmailRequest;

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

  /// Verify user email
  ///
  /// Verify the email used by a user to sign-up their account with. ##### Permissions No permissions required. 
  ///
  /// Parameters:
  ///
  /// * [VerifyUserEmailRequest] verifyUserEmailRequest (required):
  Future<StatusOK?> verifyUserEmail(VerifyUserEmailRequest verifyUserEmailRequest,) async {
    final response = await verifyUserEmailWithHttpInfo(verifyUserEmailRequest,);
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

  /// Verify user email by ID
  ///
  /// Verify the email used by a user without a token.  __Minimum server version__: 5.24  ##### Permissions  Must have `manage_system` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<Response> verifyUserEmailWithoutTokenWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/email/verify/member'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
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

  /// Verify user email by ID
  ///
  /// Verify the email used by a user without a token.  __Minimum server version__: 5.24  ##### Permissions  Must have `manage_system` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<User?> verifyUserEmailWithoutToken(String userId,) async {
    final response = await verifyUserEmailWithoutTokenWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'User',) as User;
    
    }
    return null;
  }
}
