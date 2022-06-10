//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;


class DataRetentionApi {
  DataRetentionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add channels to a granular data retention policy
  ///
  /// Adds channels to a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  ///   The ID of the granular retention policy.
  ///
  /// * [List<String>] requestBody (required):
  Future<Response> addChannelsToRetentionPolicyWithHttpInfo(String policyId, List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/data_retention/policies/{policy_id}/channels'
      .replaceAll('{policy_id}', policyId);

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

  /// Add channels to a granular data retention policy
  ///
  /// Adds channels to a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  ///   The ID of the granular retention policy.
  ///
  /// * [List<String>] requestBody (required):
  Future<StatusOK?> addChannelsToRetentionPolicy(String policyId, List<String> requestBody,) async {
    final response = await addChannelsToRetentionPolicyWithHttpInfo(policyId, requestBody,);
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

  /// Add teams to a granular data retention policy
  ///
  /// Adds teams to a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  ///   The ID of the granular retention policy.
  ///
  /// * [List<String>] requestBody (required):
  Future<Response> addTeamsToRetentionPolicyWithHttpInfo(String policyId, List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/data_retention/policies/{policy_id}/teams'
      .replaceAll('{policy_id}', policyId);

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

  /// Add teams to a granular data retention policy
  ///
  /// Adds teams to a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  ///   The ID of the granular retention policy.
  ///
  /// * [List<String>] requestBody (required):
  Future<StatusOK?> addTeamsToRetentionPolicy(String policyId, List<String> requestBody,) async {
    final response = await addTeamsToRetentionPolicyWithHttpInfo(policyId, requestBody,);
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

  /// Create a new granular data retention policy
  ///
  /// Creates a new granular data retention policy with the specified display name and post duration.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DataRetentionPolicyCreate] dataRetentionPolicyCreate (required):
  Future<Response> createDataRetentionPolicyWithHttpInfo(DataRetentionPolicyCreate dataRetentionPolicyCreate,) async {
    // ignore: prefer_const_declarations
    final path = r'/data_retention/policies';

    // ignore: prefer_final_locals
    Object? postBody = dataRetentionPolicyCreate;

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

  /// Create a new granular data retention policy
  ///
  /// Creates a new granular data retention policy with the specified display name and post duration.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Parameters:
  ///
  /// * [DataRetentionPolicyCreate] dataRetentionPolicyCreate (required):
  Future<DataRetentionPolicyWithTeamAndChannelCounts?> createDataRetentionPolicy(DataRetentionPolicyCreate dataRetentionPolicyCreate,) async {
    final response = await createDataRetentionPolicyWithHttpInfo(dataRetentionPolicyCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DataRetentionPolicyWithTeamAndChannelCounts',) as DataRetentionPolicyWithTeamAndChannelCounts;
    
    }
    return null;
  }

  /// Delete a granular data retention policy
  ///
  /// Deletes a granular data retention policy.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  ///   The ID of the granular retention policy.
  Future<Response> deleteDataRetentionPolicyWithHttpInfo(String policyId,) async {
    // ignore: prefer_const_declarations
    final path = r'/data_retention/policies/{policy_id}'
      .replaceAll('{policy_id}', policyId);

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

  /// Delete a granular data retention policy
  ///
  /// Deletes a granular data retention policy.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  ///   The ID of the granular retention policy.
  Future<StatusOK?> deleteDataRetentionPolicy(String policyId,) async {
    final response = await deleteDataRetentionPolicyWithHttpInfo(policyId,);
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

  /// Get the policies which are applied to a user's channels
  ///
  /// Gets the policies which are applied to the all of the channels to which a user belongs.  __Minimum server version__: 5.35  ##### Permissions Must be logged in as the user or have the `manage_system` permission.  ##### License Requires an E20 license. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user. This can also be \"me\" which will point to the current user.
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of policies per page. There is a maximum limit of 200 per page.
  Future<Response> getChannelPoliciesForUserWithHttpInfo(String userId, { int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/data_retention/channel_policies'
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

  /// Get the policies which are applied to a user's channels
  ///
  /// Gets the policies which are applied to the all of the channels to which a user belongs.  __Minimum server version__: 5.35  ##### Permissions Must be logged in as the user or have the `manage_system` permission.  ##### License Requires an E20 license. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user. This can also be \"me\" which will point to the current user.
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of policies per page. There is a maximum limit of 200 per page.
  Future<RetentionPolicyForChannelList?> getChannelPoliciesForUser(String userId, { int? page, int? perPage, }) async {
    final response = await getChannelPoliciesForUserWithHttpInfo(userId,  page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetentionPolicyForChannelList',) as RetentionPolicyForChannelList;
    
    }
    return null;
  }

  /// Get the channels for a granular data retention policy
  ///
  /// Gets the channels to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  ///   The ID of the granular retention policy.
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of channels per page. There is a maximum limit of 200 per page.
  Future<Response> getChannelsForRetentionPolicyWithHttpInfo(String policyId, { int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/data_retention/policies/{policy_id}/channels'
      .replaceAll('{policy_id}', policyId);

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

  /// Get the channels for a granular data retention policy
  ///
  /// Gets the channels to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  ///   The ID of the granular retention policy.
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of channels per page. There is a maximum limit of 200 per page.
  Future<List<ChannelWithTeamData>?> getChannelsForRetentionPolicy(String policyId, { int? page, int? perPage, }) async {
    final response = await getChannelsForRetentionPolicyWithHttpInfo(policyId,  page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ChannelWithTeamData>') as List)
        .cast<ChannelWithTeamData>()
        .toList();

    }
    return null;
  }

  /// Get the granular data retention policies
  ///
  /// Gets details about the granular (i.e. team or channel-specific) data retention policies from the server.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of policies per page. There is a maximum limit of 200 per page.
  Future<Response> getDataRetentionPoliciesWithHttpInfo({ int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/data_retention/policies';

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

  /// Get the granular data retention policies
  ///
  /// Gets details about the granular (i.e. team or channel-specific) data retention policies from the server.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of policies per page. There is a maximum limit of 200 per page.
  Future<List<DataRetentionPolicyWithTeamAndChannelCounts>?> getDataRetentionPolicies({ int? page, int? perPage, }) async {
    final response = await getDataRetentionPoliciesWithHttpInfo( page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DataRetentionPolicyWithTeamAndChannelCounts>') as List)
        .cast<DataRetentionPolicyWithTeamAndChannelCounts>()
        .toList();

    }
    return null;
  }

  /// Get the number of granular data retention policies
  ///
  /// Gets the number of granular (i.e. team or channel-specific) data retention policies from the server.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDataRetentionPoliciesCountWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/data_retention/policies_count';

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

  /// Get the number of granular data retention policies
  ///
  /// Gets the number of granular (i.e. team or channel-specific) data retention policies from the server.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  Future<GetDataRetentionPoliciesCount200Response?> getDataRetentionPoliciesCount() async {
    final response = await getDataRetentionPoliciesCountWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetDataRetentionPoliciesCount200Response',) as GetDataRetentionPoliciesCount200Response;
    
    }
    return null;
  }

  /// Get the global data retention policy
  ///
  /// Gets the current global data retention policy details from the server, including what data should be purged and the cutoff times for each data type that should be purged.  __Minimum server version__: 4.3  ##### Permissions Requires an active session but no other permissions.  ##### License Requires an E20 license. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDataRetentionPolicyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/data_retention/policy';

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

  /// Get the global data retention policy
  ///
  /// Gets the current global data retention policy details from the server, including what data should be purged and the cutoff times for each data type that should be purged.  __Minimum server version__: 4.3  ##### Permissions Requires an active session but no other permissions.  ##### License Requires an E20 license. 
  Future<GlobalDataRetentionPolicy?> getDataRetentionPolicy() async {
    final response = await getDataRetentionPolicyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GlobalDataRetentionPolicy',) as GlobalDataRetentionPolicy;
    
    }
    return null;
  }

  /// Get a granular data retention policy
  ///
  /// Gets details about a granular data retention policies by ID.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  ///   The ID of the granular retention policy.
  Future<Response> getDataRetentionPolicyByIDWithHttpInfo(String policyId,) async {
    // ignore: prefer_const_declarations
    final path = r'/data_retention/policies/{policy_id}'
      .replaceAll('{policy_id}', policyId);

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

  /// Get a granular data retention policy
  ///
  /// Gets details about a granular data retention policies by ID.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  ///   The ID of the granular retention policy.
  Future<DataRetentionPolicyWithTeamAndChannelCounts?> getDataRetentionPolicyByID(String policyId,) async {
    final response = await getDataRetentionPolicyByIDWithHttpInfo(policyId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DataRetentionPolicyWithTeamAndChannelCounts',) as DataRetentionPolicyWithTeamAndChannelCounts;
    
    }
    return null;
  }

  /// Get the policies which are applied to a user's teams
  ///
  /// Gets the policies which are applied to the all of the teams to which a user belongs.  __Minimum server version__: 5.35  ##### Permissions Must be logged in as the user or have the `manage_system` permission.  ##### License Requires an E20 license. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user. This can also be \"me\" which will point to the current user.
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of policies per page. There is a maximum limit of 200 per page.
  Future<Response> getTeamPoliciesForUserWithHttpInfo(String userId, { int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/data_retention/team_policies'
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

  /// Get the policies which are applied to a user's teams
  ///
  /// Gets the policies which are applied to the all of the teams to which a user belongs.  __Minimum server version__: 5.35  ##### Permissions Must be logged in as the user or have the `manage_system` permission.  ##### License Requires an E20 license. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user. This can also be \"me\" which will point to the current user.
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of policies per page. There is a maximum limit of 200 per page.
  Future<RetentionPolicyForTeamList?> getTeamPoliciesForUser(String userId, { int? page, int? perPage, }) async {
    final response = await getTeamPoliciesForUserWithHttpInfo(userId,  page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetentionPolicyForTeamList',) as RetentionPolicyForTeamList;
    
    }
    return null;
  }

  /// Get the teams for a granular data retention policy
  ///
  /// Gets the teams to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  ///   The ID of the granular retention policy.
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of teams per page. There is a maximum limit of 200 per page.
  Future<Response> getTeamsForRetentionPolicyWithHttpInfo(String policyId, { int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/data_retention/policies/{policy_id}/teams'
      .replaceAll('{policy_id}', policyId);

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

  /// Get the teams for a granular data retention policy
  ///
  /// Gets the teams to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  ///   The ID of the granular retention policy.
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of teams per page. There is a maximum limit of 200 per page.
  Future<List<Team>?> getTeamsForRetentionPolicy(String policyId, { int? page, int? perPage, }) async {
    final response = await getTeamsForRetentionPolicyWithHttpInfo(policyId,  page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Team>') as List)
        .cast<Team>()
        .toList();

    }
    return null;
  }

  /// Patch a granular data retention policy
  ///
  /// Patches (i.e. replaces the fields of) a granular data retention policy. If any fields are omitted, they will not be changed.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  ///   The ID of the granular retention policy.
  ///
  /// * [DataRetentionPolicyWithTeamAndChannelIds] dataRetentionPolicyWithTeamAndChannelIds (required):
  Future<Response> patchDataRetentionPolicyWithHttpInfo(String policyId, DataRetentionPolicyWithTeamAndChannelIds dataRetentionPolicyWithTeamAndChannelIds,) async {
    // ignore: prefer_const_declarations
    final path = r'/data_retention/policies/{policy_id}'
      .replaceAll('{policy_id}', policyId);

    // ignore: prefer_final_locals
    Object? postBody = dataRetentionPolicyWithTeamAndChannelIds;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Patch a granular data retention policy
  ///
  /// Patches (i.e. replaces the fields of) a granular data retention policy. If any fields are omitted, they will not be changed.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  ///   The ID of the granular retention policy.
  ///
  /// * [DataRetentionPolicyWithTeamAndChannelIds] dataRetentionPolicyWithTeamAndChannelIds (required):
  Future<DataRetentionPolicyWithTeamAndChannelCounts?> patchDataRetentionPolicy(String policyId, DataRetentionPolicyWithTeamAndChannelIds dataRetentionPolicyWithTeamAndChannelIds,) async {
    final response = await patchDataRetentionPolicyWithHttpInfo(policyId, dataRetentionPolicyWithTeamAndChannelIds,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DataRetentionPolicyWithTeamAndChannelCounts',) as DataRetentionPolicyWithTeamAndChannelCounts;
    
    }
    return null;
  }

  /// Delete channels from a granular data retention policy
  ///
  /// Delete channels from a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  ///   The ID of the granular retention policy.
  ///
  /// * [List<String>] requestBody (required):
  Future<Response> removeChannelsFromRetentionPolicyWithHttpInfo(String policyId, List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/data_retention/policies/{policy_id}/channels'
      .replaceAll('{policy_id}', policyId);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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

  /// Delete channels from a granular data retention policy
  ///
  /// Delete channels from a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  ///   The ID of the granular retention policy.
  ///
  /// * [List<String>] requestBody (required):
  Future<StatusOK?> removeChannelsFromRetentionPolicy(String policyId, List<String> requestBody,) async {
    final response = await removeChannelsFromRetentionPolicyWithHttpInfo(policyId, requestBody,);
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

  /// Delete teams from a granular data retention policy
  ///
  /// Delete teams from a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  ///   The ID of the granular retention policy.
  ///
  /// * [List<String>] requestBody (required):
  Future<Response> removeTeamsFromRetentionPolicyWithHttpInfo(String policyId, List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/data_retention/policies/{policy_id}/teams'
      .replaceAll('{policy_id}', policyId);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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

  /// Delete teams from a granular data retention policy
  ///
  /// Delete teams from a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  ///   The ID of the granular retention policy.
  ///
  /// * [List<String>] requestBody (required):
  Future<StatusOK?> removeTeamsFromRetentionPolicy(String policyId, List<String> requestBody,) async {
    final response = await removeTeamsFromRetentionPolicyWithHttpInfo(policyId, requestBody,);
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

  /// Search for the channels in a granular data retention policy
  ///
  /// Searches for the channels to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  ///   The ID of the granular retention policy.
  ///
  /// * [SearchChannelsForRetentionPolicyRequest] searchChannelsForRetentionPolicyRequest (required):
  Future<Response> searchChannelsForRetentionPolicyWithHttpInfo(String policyId, SearchChannelsForRetentionPolicyRequest searchChannelsForRetentionPolicyRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/data_retention/policies/{policy_id}/channels/search'
      .replaceAll('{policy_id}', policyId);

    // ignore: prefer_final_locals
    Object? postBody = searchChannelsForRetentionPolicyRequest;

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

  /// Search for the channels in a granular data retention policy
  ///
  /// Searches for the channels to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  ///   The ID of the granular retention policy.
  ///
  /// * [SearchChannelsForRetentionPolicyRequest] searchChannelsForRetentionPolicyRequest (required):
  Future<List<ChannelWithTeamData>?> searchChannelsForRetentionPolicy(String policyId, SearchChannelsForRetentionPolicyRequest searchChannelsForRetentionPolicyRequest,) async {
    final response = await searchChannelsForRetentionPolicyWithHttpInfo(policyId, searchChannelsForRetentionPolicyRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ChannelWithTeamData>') as List)
        .cast<ChannelWithTeamData>()
        .toList();

    }
    return null;
  }

  /// Search for the teams in a granular data retention policy
  ///
  /// Searches for the teams to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  ///   The ID of the granular retention policy.
  ///
  /// * [SearchTeamsForRetentionPolicyRequest] searchTeamsForRetentionPolicyRequest (required):
  Future<Response> searchTeamsForRetentionPolicyWithHttpInfo(String policyId, SearchTeamsForRetentionPolicyRequest searchTeamsForRetentionPolicyRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/data_retention/policies/{policy_id}/teams/search'
      .replaceAll('{policy_id}', policyId);

    // ignore: prefer_final_locals
    Object? postBody = searchTeamsForRetentionPolicyRequest;

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

  /// Search for the teams in a granular data retention policy
  ///
  /// Searches for the teams to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  ///   The ID of the granular retention policy.
  ///
  /// * [SearchTeamsForRetentionPolicyRequest] searchTeamsForRetentionPolicyRequest (required):
  Future<List<Team>?> searchTeamsForRetentionPolicy(String policyId, SearchTeamsForRetentionPolicyRequest searchTeamsForRetentionPolicyRequest,) async {
    final response = await searchTeamsForRetentionPolicyWithHttpInfo(policyId, searchTeamsForRetentionPolicyRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Team>') as List)
        .cast<Team>()
        .toList();

    }
    return null;
  }
}
