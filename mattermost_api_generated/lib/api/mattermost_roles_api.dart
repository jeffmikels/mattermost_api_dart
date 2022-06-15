//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;


class MattermostRolesApi {

  final MattermostApiClient apiClient;
  
  MattermostRolesApi(this.apiClient);


  /// Get a list of all the roles
  ///
  /// ##### Permissions  `manage_system` permission is required.  __Minimum server version__: 5.33 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAllRolesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/roles';

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

  /// Get a list of all the roles
  ///
  /// ##### Permissions  `manage_system` permission is required.  __Minimum server version__: 5.33 
  Future<List<MMRole>?> getAllRoles() async {
    final response = await getAllRolesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MMRole>') as List)
        .cast<MMRole>()
        .toList();

    }
    return null;
  }

  /// Get a role
  ///
  /// Get a role from the provided role id.  ##### Permissions Requires an active session but no other permissions.  __Minimum server version__: 4.9 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] roleId (required):
  ///   Role GUID
  Future<Response> getRoleWithHttpInfo(String roleId,) async {
    // ignore: prefer_const_declarations
    final path = r'/roles/{role_id}'
      .replaceAll('{role_id}', roleId);

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

  /// Get a role
  ///
  /// Get a role from the provided role id.  ##### Permissions Requires an active session but no other permissions.  __Minimum server version__: 4.9 
  ///
  /// Parameters:
  ///
  /// * [String] roleId (required):
  ///   Role GUID
  Future<MMRole?> getRole(String roleId,) async {
    final response = await getRoleWithHttpInfo(roleId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MMRole',) as MMRole;
    
    }
    return null;
  }

  /// Get a role
  ///
  /// Get a role from the provided role name.  ##### Permissions Requires an active session but no other permissions.  __Minimum server version__: 4.9 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] roleName (required):
  ///   Role Name
  Future<Response> getRoleByNameWithHttpInfo(String roleName,) async {
    // ignore: prefer_const_declarations
    final path = r'/roles/name/{role_name}'
      .replaceAll('{role_name}', roleName);

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

  /// Get a role
  ///
  /// Get a role from the provided role name.  ##### Permissions Requires an active session but no other permissions.  __Minimum server version__: 4.9 
  ///
  /// Parameters:
  ///
  /// * [String] roleName (required):
  ///   Role Name
  Future<MMRole?> getRoleByName(String roleName,) async {
    final response = await getRoleByNameWithHttpInfo(roleName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MMRole',) as MMRole;
    
    }
    return null;
  }

  /// Get a list of roles by name
  ///
  /// Get a list of roles from their names.  ##### Permissions Requires an active session but no other permissions.  __Minimum server version__: 4.9 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  ///   List of role names
  Future<Response> getRolesByNamesWithHttpInfo(List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/roles/names';

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

  /// Get a list of roles by name
  ///
  /// Get a list of roles from their names.  ##### Permissions Requires an active session but no other permissions.  __Minimum server version__: 4.9 
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  ///   List of role names
  Future<List<MMRole>?> getRolesByNames(List<String> requestBody,) async {
    final response = await getRolesByNamesWithHttpInfo(requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MMRole>') as List)
        .cast<MMRole>()
        .toList();

    }
    return null;
  }

  /// Patch a role
  ///
  /// Partially update a role by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 4.9 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] roleId (required):
  ///   Role GUID
  ///
  /// * [MMPatchRoleRequest] mMPatchRoleRequest (required):
  ///   Role object to be updated
  Future<Response> patchRoleWithHttpInfo(String roleId, MMPatchRoleRequest mMPatchRoleRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/roles/{role_id}/patch'
      .replaceAll('{role_id}', roleId);

    // ignore: prefer_final_locals
    Object? postBody = mMPatchRoleRequest;

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

  /// Patch a role
  ///
  /// Partially update a role by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 4.9 
  ///
  /// Parameters:
  ///
  /// * [String] roleId (required):
  ///   Role GUID
  ///
  /// * [MMPatchRoleRequest] mMPatchRoleRequest (required):
  ///   Role object to be updated
  Future<MMRole?> patchRole(String roleId, MMPatchRoleRequest mMPatchRoleRequest,) async {
    final response = await patchRoleWithHttpInfo(roleId, mMPatchRoleRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MMRole',) as MMRole;
    
    }
    return null;
  }
}
