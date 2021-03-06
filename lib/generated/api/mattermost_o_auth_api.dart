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
  final MattermostApiClient apiClient;

  MattermostOAuthApi(this.apiClient);

  /// Register OAuth app
  ///
  /// Register an OAuth 2.0 client application with Mattermost as the service provider. ##### Permissions Must have `manage_oauth` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MmCreateOAuthAppRequest] mmCreateOAuthAppRequest (required):
  ///   OAuth application to register
  Future<Response> createOAuthAppWithHttpInfo(
    MmCreateOAuthAppRequest mmCreateOAuthAppRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth/apps';

    // ignore: prefer_final_locals
    Object? postBody = mmCreateOAuthAppRequest;

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

  /// Register OAuth app
  ///
  /// Register an OAuth 2.0 client application with Mattermost as the service provider. ##### Permissions Must have `manage_oauth` permission.
  ///
  /// Parameters:
  ///
  /// * [MmCreateOAuthAppRequest] mmCreateOAuthAppRequest (required):
  ///   OAuth application to register
  Future<MmOAuthApp?> createOAuthApp(
    MmCreateOAuthAppRequest mmCreateOAuthAppRequest,
  ) async {
    final response = await createOAuthAppWithHttpInfo(
      mmCreateOAuthAppRequest,
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
        'MmOAuthApp',
      ) as MmOAuthApp;
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

  /// Delete an OAuth app
  ///
  /// Delete and unregister an OAuth 2.0 client application  ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required.
  ///
  /// Parameters:
  ///
  /// * [String] appId (required):
  ///   Application client id
  Future<MmStatusOK?> deleteOAuthApp(
    String appId,
  ) async {
    final response = await deleteOAuthAppWithHttpInfo(
      appId,
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
  Future<List<MmOAuthApp>?> getAuthorizedOAuthAppsForUser(
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
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MmOAuthApp>') as List).cast<MmOAuthApp>().toList();
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

  /// Get an OAuth app
  ///
  /// Get an OAuth 2.0 client application registered with Mattermost. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required.
  ///
  /// Parameters:
  ///
  /// * [String] appId (required):
  ///   Application client id
  Future<MmOAuthApp?> getOAuthApp(
    String appId,
  ) async {
    final response = await getOAuthAppWithHttpInfo(
      appId,
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
        'MmOAuthApp',
      ) as MmOAuthApp;
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

  /// Get info on an OAuth app
  ///
  /// Get public information about an OAuth 2.0 client application registered with Mattermost. The application's client secret will be blanked out. ##### Permissions Must be authenticated.
  ///
  /// Parameters:
  ///
  /// * [String] appId (required):
  ///   Application client id
  Future<MmOAuthApp?> getOAuthAppInfo(
    String appId,
  ) async {
    final response = await getOAuthAppInfoWithHttpInfo(
      appId,
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
        'MmOAuthApp',
      ) as MmOAuthApp;
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
  Future<List<MmOAuthApp>?> getOAuthApps({
    int? page,
    int? perPage,
  }) async {
    final response = await getOAuthAppsWithHttpInfo(
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
      return (await apiClient.deserializeAsync(responseBody, 'List<MmOAuthApp>') as List).cast<MmOAuthApp>().toList();
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

  /// Regenerate OAuth app secret
  ///
  /// Regenerate the client secret for an OAuth 2.0 client application registered with Mattermost. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required.
  ///
  /// Parameters:
  ///
  /// * [String] appId (required):
  ///   Application client id
  Future<MmOAuthApp?> regenerateOAuthAppSecret(
    String appId,
  ) async {
    final response = await regenerateOAuthAppSecretWithHttpInfo(
      appId,
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
        'MmOAuthApp',
      ) as MmOAuthApp;
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
  /// * [MmUpdateOAuthAppRequest] mmUpdateOAuthAppRequest (required):
  ///   OAuth application to update
  Future<Response> updateOAuthAppWithHttpInfo(
    String appId,
    MmUpdateOAuthAppRequest mmUpdateOAuthAppRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth/apps/{app_id}'.replaceAll('{app_id}', appId);

    // ignore: prefer_final_locals
    Object? postBody = mmUpdateOAuthAppRequest;

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

  /// Update an OAuth app
  ///
  /// Update an OAuth 2.0 client application based on OAuth struct. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required.
  ///
  /// Parameters:
  ///
  /// * [String] appId (required):
  ///   Application client id
  ///
  /// * [MmUpdateOAuthAppRequest] mmUpdateOAuthAppRequest (required):
  ///   OAuth application to update
  Future<MmOAuthApp?> updateOAuthApp(
    String appId,
    MmUpdateOAuthAppRequest mmUpdateOAuthAppRequest,
  ) async {
    final response = await updateOAuthAppWithHttpInfo(
      appId,
      mmUpdateOAuthAppRequest,
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
        'MmOAuthApp',
      ) as MmOAuthApp;
    }
    return null;
  }
}
