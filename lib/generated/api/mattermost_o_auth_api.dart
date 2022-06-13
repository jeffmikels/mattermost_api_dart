//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostOAuthApi {
  MattermostOAuthApi([MattermostApiClient? apiClient]) : apiClient = apiClient ?? defaultMattermostApiClient;

  final MattermostApiClient apiClient;

  /// Register OAuth app
  ///
  /// Register an OAuth 2.0 client application with Mattermost as the service provider. ##### Permissions Must have `manage_oauth` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MattermostCreateOAuthAppRequest] mattermostCreateOAuthAppRequest (required):
  ///   OAuth application to register
  Future<Response> createOAuthAppWithHttpInfo(
    MattermostCreateOAuthAppRequest mattermostCreateOAuthAppRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth/apps';

    // ignore: prefer_final_locals
    Object? postBody = mattermostCreateOAuthAppRequest;

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

  /// Register OAuth app
  ///
  /// Register an OAuth 2.0 client application with Mattermost as the service provider. ##### Permissions Must have `manage_oauth` permission.
  ///
  /// Parameters:
  ///
  /// * [MattermostCreateOAuthAppRequest] mattermostCreateOAuthAppRequest (required):
  ///   OAuth application to register
  Future<MattermostOAuthApp?> createOAuthApp(
    MattermostCreateOAuthAppRequest mattermostCreateOAuthAppRequest,
  ) async {
    final response = await createOAuthAppWithHttpInfo(
      mattermostCreateOAuthAppRequest,
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
        'MattermostOAuthApp',
      ) as MattermostOAuthApp;
    }
    return null;
  }

  /// Delete an OAuth app
  ///
  /// Delete and unregister an OAuth 2.0 client application  ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appId (required):
  ///   Application client id
  Future<Response> deleteOAuthAppWithHttpInfo(
    String appId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth/apps/{app_id}'.replaceAll('{app_id}', appId);

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

  /// Delete an OAuth app
  ///
  /// Delete and unregister an OAuth 2.0 client application  ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required.
  ///
  /// Parameters:
  ///
  /// * [String] appId (required):
  ///   Application client id
  Future<MattermostStatusOK?> deleteOAuthApp(
    String appId,
  ) async {
    final response = await deleteOAuthAppWithHttpInfo(
      appId,
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
        'MattermostStatusOK',
      ) as MattermostStatusOK;
    }
    return null;
  }

  /// Get authorized OAuth apps
  ///
  /// Get a page of OAuth 2.0 client applications authorized to access a user's account. ##### Permissions Must be authenticated as the user or have `edit_other_users` permission.
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
  ///   The number of apps per page.
  Future<Response> getAuthorizedOAuthAppsForUserWithHttpInfo(
    String userId, {
    int? page,
    int? perPage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/oauth/apps/authorized'.replaceAll('{user_id}', userId);

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

  /// Get authorized OAuth apps
  ///
  /// Get a page of OAuth 2.0 client applications authorized to access a user's account. ##### Permissions Must be authenticated as the user or have `edit_other_users` permission.
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
  ///   The number of apps per page.
  Future<List<MattermostOAuthApp>?> getAuthorizedOAuthAppsForUser(
    String userId, {
    int? page,
    int? perPage,
  }) async {
    final response = await getAuthorizedOAuthAppsForUserWithHttpInfo(
      userId,
      page: page,
      perPage: perPage,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MattermostOAuthApp>') as List)
          .cast<MattermostOAuthApp>()
          .toList();
    }
    return null;
  }

  /// Get an OAuth app
  ///
  /// Get an OAuth 2.0 client application registered with Mattermost. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appId (required):
  ///   Application client id
  Future<Response> getOAuthAppWithHttpInfo(
    String appId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth/apps/{app_id}'.replaceAll('{app_id}', appId);

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

  /// Get an OAuth app
  ///
  /// Get an OAuth 2.0 client application registered with Mattermost. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required.
  ///
  /// Parameters:
  ///
  /// * [String] appId (required):
  ///   Application client id
  Future<MattermostOAuthApp?> getOAuthApp(
    String appId,
  ) async {
    final response = await getOAuthAppWithHttpInfo(
      appId,
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
        'MattermostOAuthApp',
      ) as MattermostOAuthApp;
    }
    return null;
  }

  /// Get info on an OAuth app
  ///
  /// Get public information about an OAuth 2.0 client application registered with Mattermost. The application's client secret will be blanked out. ##### Permissions Must be authenticated.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appId (required):
  ///   Application client id
  Future<Response> getOAuthAppInfoWithHttpInfo(
    String appId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth/apps/{app_id}/info'.replaceAll('{app_id}', appId);

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

  /// Get info on an OAuth app
  ///
  /// Get public information about an OAuth 2.0 client application registered with Mattermost. The application's client secret will be blanked out. ##### Permissions Must be authenticated.
  ///
  /// Parameters:
  ///
  /// * [String] appId (required):
  ///   Application client id
  Future<MattermostOAuthApp?> getOAuthAppInfo(
    String appId,
  ) async {
    final response = await getOAuthAppInfoWithHttpInfo(
      appId,
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
        'MattermostOAuthApp',
      ) as MattermostOAuthApp;
    }
    return null;
  }

  /// Get OAuth apps
  ///
  /// Get a page of OAuth 2.0 client applications registered with Mattermost. ##### Permissions With `manage_oauth` permission, the apps registered by the logged in user are returned. With `manage_system_wide_oauth` permission, all apps regardless of creator are returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of apps per page.
  Future<Response> getOAuthAppsWithHttpInfo({
    int? page,
    int? perPage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth/apps';

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

  /// Get OAuth apps
  ///
  /// Get a page of OAuth 2.0 client applications registered with Mattermost. ##### Permissions With `manage_oauth` permission, the apps registered by the logged in user are returned. With `manage_system_wide_oauth` permission, all apps regardless of creator are returned.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of apps per page.
  Future<List<MattermostOAuthApp>?> getOAuthApps({
    int? page,
    int? perPage,
  }) async {
    final response = await getOAuthAppsWithHttpInfo(
      page: page,
      perPage: perPage,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MattermostOAuthApp>') as List)
          .cast<MattermostOAuthApp>()
          .toList();
    }
    return null;
  }

  /// Regenerate OAuth app secret
  ///
  /// Regenerate the client secret for an OAuth 2.0 client application registered with Mattermost. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appId (required):
  ///   Application client id
  Future<Response> regenerateOAuthAppSecretWithHttpInfo(
    String appId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth/apps/{app_id}/regen_secret'.replaceAll('{app_id}', appId);

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

  /// Regenerate OAuth app secret
  ///
  /// Regenerate the client secret for an OAuth 2.0 client application registered with Mattermost. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required.
  ///
  /// Parameters:
  ///
  /// * [String] appId (required):
  ///   Application client id
  Future<MattermostOAuthApp?> regenerateOAuthAppSecret(
    String appId,
  ) async {
    final response = await regenerateOAuthAppSecretWithHttpInfo(
      appId,
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
        'MattermostOAuthApp',
      ) as MattermostOAuthApp;
    }
    return null;
  }

  /// Update an OAuth app
  ///
  /// Update an OAuth 2.0 client application based on OAuth struct. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appId (required):
  ///   Application client id
  ///
  /// * [MattermostUpdateOAuthAppRequest] mattermostUpdateOAuthAppRequest (required):
  ///   OAuth application to update
  Future<Response> updateOAuthAppWithHttpInfo(
    String appId,
    MattermostUpdateOAuthAppRequest mattermostUpdateOAuthAppRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth/apps/{app_id}'.replaceAll('{app_id}', appId);

    // ignore: prefer_final_locals
    Object? postBody = mattermostUpdateOAuthAppRequest;

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

  /// Update an OAuth app
  ///
  /// Update an OAuth 2.0 client application based on OAuth struct. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required.
  ///
  /// Parameters:
  ///
  /// * [String] appId (required):
  ///   Application client id
  ///
  /// * [MattermostUpdateOAuthAppRequest] mattermostUpdateOAuthAppRequest (required):
  ///   OAuth application to update
  Future<MattermostOAuthApp?> updateOAuthApp(
    String appId,
    MattermostUpdateOAuthAppRequest mattermostUpdateOAuthAppRequest,
  ) async {
    final response = await updateOAuthAppWithHttpInfo(
      appId,
      mattermostUpdateOAuthAppRequest,
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
        'MattermostOAuthApp',
      ) as MattermostOAuthApp;
    }
    return null;
  }
}
