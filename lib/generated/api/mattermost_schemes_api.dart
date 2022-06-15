//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostSchemesApi {
  final MattermostApiClient apiClient;

  MattermostSchemesApi(this.apiClient);

  /// Create a scheme
  ///
  /// Create a new scheme.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MMCreateSchemeRequest] mMCreateSchemeRequest (required):
  ///   Scheme object to create
  Future<Response> createSchemeWithHttpInfo(
    MMCreateSchemeRequest mMCreateSchemeRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/schemes';

    // ignore: prefer_final_locals
    Object? postBody = mMCreateSchemeRequest;

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

  /// Create a scheme
  ///
  /// Create a new scheme.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0
  ///
  /// Parameters:
  ///
  /// * [MMCreateSchemeRequest] mMCreateSchemeRequest (required):
  ///   Scheme object to create
  Future<MMScheme?> createScheme(
    MMCreateSchemeRequest mMCreateSchemeRequest,
  ) async {
    final response = await createSchemeWithHttpInfo(
      mMCreateSchemeRequest,
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
        'MMScheme',
      ) as MMScheme;
    }
    return null;
  }

  /// Delete a scheme
  ///
  /// Soft deletes a scheme, by marking the scheme as deleted in the database.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] schemeId (required):
  ///   ID of the scheme to delete
  Future<Response> deleteSchemeWithHttpInfo(
    String schemeId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/schemes/{scheme_id}'.replaceAll('{scheme_id}', schemeId);

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

  /// Delete a scheme
  ///
  /// Soft deletes a scheme, by marking the scheme as deleted in the database.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0
  ///
  /// Parameters:
  ///
  /// * [String] schemeId (required):
  ///   ID of the scheme to delete
  Future<MMStatusOK?> deleteScheme(
    String schemeId,
  ) async {
    final response = await deleteSchemeWithHttpInfo(
      schemeId,
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

  /// Get a page of channels which use this scheme.
  ///
  /// Get a page of channels which use this scheme. The provided Scheme ID should be for a Channel-scoped Scheme. Use the query parameters to modify the behaviour of this endpoint.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 5.0
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] schemeId (required):
  ///   Scheme GUID
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of channels per page.
  Future<Response> getChannelsForSchemeWithHttpInfo(
    String schemeId, {
    int? page,
    int? perPage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/schemes/{scheme_id}/channels'.replaceAll('{scheme_id}', schemeId);

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

  /// Get a page of channels which use this scheme.
  ///
  /// Get a page of channels which use this scheme. The provided Scheme ID should be for a Channel-scoped Scheme. Use the query parameters to modify the behaviour of this endpoint.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 5.0
  ///
  /// Parameters:
  ///
  /// * [String] schemeId (required):
  ///   Scheme GUID
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of channels per page.
  Future<List<MMChannel>?> getChannelsForScheme(
    String schemeId, {
    int? page,
    int? perPage,
  }) async {
    final response = await getChannelsForSchemeWithHttpInfo(
      schemeId,
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
      return (await apiClient.deserializeAsync(responseBody, 'List<MMChannel>') as List).cast<MMChannel>().toList();
    }
    return null;
  }

  /// Get a scheme
  ///
  /// Get a scheme from the provided scheme id.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] schemeId (required):
  ///   Scheme GUID
  Future<Response> getSchemeWithHttpInfo(
    String schemeId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/schemes/{scheme_id}'.replaceAll('{scheme_id}', schemeId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
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

  /// Get a scheme
  ///
  /// Get a scheme from the provided scheme id.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0
  ///
  /// Parameters:
  ///
  /// * [String] schemeId (required):
  ///   Scheme GUID
  Future<MMScheme?> getScheme(
    String schemeId,
  ) async {
    final response = await getSchemeWithHttpInfo(
      schemeId,
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
        'MMScheme',
      ) as MMScheme;
    }
    return null;
  }

  /// Get the schemes.
  ///
  /// Get a page of schemes. Use the query parameters to modify the behaviour of this endpoint.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] scope:
  ///   Limit the results returned to the provided scope, either `team` or `channel`.
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of schemes per page.
  Future<Response> getSchemesWithHttpInfo({
    String? scope,
    int? page,
    int? perPage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/schemes';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (scope != null) {
      queryParams.addAll(_queryParams('', 'scope', scope));
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

  /// Get the schemes.
  ///
  /// Get a page of schemes. Use the query parameters to modify the behaviour of this endpoint.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0
  ///
  /// Parameters:
  ///
  /// * [String] scope:
  ///   Limit the results returned to the provided scope, either `team` or `channel`.
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of schemes per page.
  Future<List<MMScheme>?> getSchemes({
    String? scope,
    int? page,
    int? perPage,
  }) async {
    final response = await getSchemesWithHttpInfo(
      scope: scope,
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
      return (await apiClient.deserializeAsync(responseBody, 'List<MMScheme>') as List).cast<MMScheme>().toList();
    }
    return null;
  }

  /// Get a page of teams which use this scheme.
  ///
  /// Get a page of teams which use this scheme. The provided Scheme ID should be for a Team-scoped Scheme. Use the query parameters to modify the behaviour of this endpoint.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 5.0
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] schemeId (required):
  ///   Scheme GUID
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of teams per page.
  Future<Response> getTeamsForSchemeWithHttpInfo(
    String schemeId, {
    int? page,
    int? perPage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/schemes/{scheme_id}/teams'.replaceAll('{scheme_id}', schemeId);

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

  /// Get a page of teams which use this scheme.
  ///
  /// Get a page of teams which use this scheme. The provided Scheme ID should be for a Team-scoped Scheme. Use the query parameters to modify the behaviour of this endpoint.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 5.0
  ///
  /// Parameters:
  ///
  /// * [String] schemeId (required):
  ///   Scheme GUID
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of teams per page.
  Future<List<MMTeam>?> getTeamsForScheme(
    String schemeId, {
    int? page,
    int? perPage,
  }) async {
    final response = await getTeamsForSchemeWithHttpInfo(
      schemeId,
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
      return (await apiClient.deserializeAsync(responseBody, 'List<MMTeam>') as List).cast<MMTeam>().toList();
    }
    return null;
  }

  /// Patch a scheme
  ///
  /// Partially update a scheme by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 5.0
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] schemeId (required):
  ///   Scheme GUID
  ///
  /// * [MMPatchSchemeRequest] mMPatchSchemeRequest (required):
  ///   Scheme object to be updated
  Future<Response> patchSchemeWithHttpInfo(
    String schemeId,
    MMPatchSchemeRequest mMPatchSchemeRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/schemes/{scheme_id}/patch'.replaceAll('{scheme_id}', schemeId);

    // ignore: prefer_final_locals
    Object? postBody = mMPatchSchemeRequest;

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

  /// Patch a scheme
  ///
  /// Partially update a scheme by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 5.0
  ///
  /// Parameters:
  ///
  /// * [String] schemeId (required):
  ///   Scheme GUID
  ///
  /// * [MMPatchSchemeRequest] mMPatchSchemeRequest (required):
  ///   Scheme object to be updated
  Future<MMScheme?> patchScheme(
    String schemeId,
    MMPatchSchemeRequest mMPatchSchemeRequest,
  ) async {
    final response = await patchSchemeWithHttpInfo(
      schemeId,
      mMPatchSchemeRequest,
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
        'MMScheme',
      ) as MMScheme;
    }
    return null;
  }
}
