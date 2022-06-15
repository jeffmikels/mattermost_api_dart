//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;


class MattermostSharedChannelsApi {

  final MattermostApiClient apiClient;
  
  MattermostSharedChannelsApi(this.apiClient);


  /// Get all shared channels for team.
  ///
  /// Get all shared channels for a team.  __Minimum server version__: 5.50  ##### Permissions Must be authenticated. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team Id
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<Response> getAllSharedChannelsWithHttpInfo(String teamId, { int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/sharedchannels/{team_id}'
      .replaceAll('{team_id}', teamId);

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

  /// Get all shared channels for team.
  ///
  /// Get all shared channels for a team.  __Minimum server version__: 5.50  ##### Permissions Must be authenticated. 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team Id
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<List<MMSharedChannel>?> getAllSharedChannels(String teamId, { int? page, int? perPage, }) async {
    final response = await getAllSharedChannelsWithHttpInfo(teamId,  page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MMSharedChannel>') as List)
        .cast<MMSharedChannel>()
        .toList();

    }
    return null;
  }

  /// Get remote cluster info by ID for user.
  ///
  /// Get remote cluster info based on remoteId.  __Minimum server version__: 5.50  ##### Permissions Must be authenticated and user must belong to at least one channel shared with the remote cluster. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] remoteId (required):
  ///   Remote Cluster GUID
  Future<Response> getRemoteClusterInfoWithHttpInfo(String remoteId,) async {
    // ignore: prefer_const_declarations
    final path = r'/sharedchannels/remote_info/{remote_id}'
      .replaceAll('{remote_id}', remoteId);

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

  /// Get remote cluster info by ID for user.
  ///
  /// Get remote cluster info based on remoteId.  __Minimum server version__: 5.50  ##### Permissions Must be authenticated and user must belong to at least one channel shared with the remote cluster. 
  ///
  /// Parameters:
  ///
  /// * [String] remoteId (required):
  ///   Remote Cluster GUID
  Future<MMRemoteClusterInfo?> getRemoteClusterInfo(String remoteId,) async {
    final response = await getRemoteClusterInfoWithHttpInfo(remoteId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MMRemoteClusterInfo',) as MMRemoteClusterInfo;
    
    }
    return null;
  }
}
