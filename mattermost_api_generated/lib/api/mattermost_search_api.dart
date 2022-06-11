//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;


class MattermostSearchApi {
  MattermostSearchApi([MattermostApiClient? apiClient]) : apiClient = apiClient ?? defaultMattermostApiClient;

  final MattermostApiClient apiClient;

  /// Search files in a team
  ///
  /// Search for files in a team based on file name, extention and file content (if file content extraction is enabled and supported for the files). __Minimum server version__: 5.34 ##### Permissions Must be authenticated and have the `view_team` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] terms (required):
  ///   The search terms as inputed by the user. To search for files from a user include `from:someusername`, using a user's username. To search in a specific channel include `in:somechannel`, using the channel name (not the display name). To search for specific extensions included `ext:extension`.
  ///
  /// * [bool] isOrSearch (required):
  ///   Set to true if an Or search should be performed vs an And search.
  ///
  /// * [int] timeZoneOffset:
  ///   Offset from UTC of user timezone for date searches.
  ///
  /// * [bool] includeDeletedChannels:
  ///   Set to true if deleted channels should be included in the search. (archived channels)
  ///
  /// * [int] page:
  ///   The page to select. (Only works with Elasticsearch)
  ///
  /// * [int] perPage:
  ///   The number of posts per page. (Only works with Elasticsearch)
  Future<Response> searchFilesWithHttpInfo(String teamId, String terms, bool isOrSearch, { int? timeZoneOffset, bool? includeDeletedChannels, int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/files/search'
      .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (terms != null) {
      hasFields = true;
      mp.fields[r'terms'] = parameterToString(terms);
    }
    if (isOrSearch != null) {
      hasFields = true;
      mp.fields[r'is_or_search'] = parameterToString(isOrSearch);
    }
    if (timeZoneOffset != null) {
      hasFields = true;
      mp.fields[r'time_zone_offset'] = parameterToString(timeZoneOffset);
    }
    if (includeDeletedChannels != null) {
      hasFields = true;
      mp.fields[r'include_deleted_channels'] = parameterToString(includeDeletedChannels);
    }
    if (page != null) {
      hasFields = true;
      mp.fields[r'page'] = parameterToString(page);
    }
    if (perPage != null) {
      hasFields = true;
      mp.fields[r'per_page'] = parameterToString(perPage);
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

  /// Search files in a team
  ///
  /// Search for files in a team based on file name, extention and file content (if file content extraction is enabled and supported for the files). __Minimum server version__: 5.34 ##### Permissions Must be authenticated and have the `view_team` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] terms (required):
  ///   The search terms as inputed by the user. To search for files from a user include `from:someusername`, using a user's username. To search in a specific channel include `in:somechannel`, using the channel name (not the display name). To search for specific extensions included `ext:extension`.
  ///
  /// * [bool] isOrSearch (required):
  ///   Set to true if an Or search should be performed vs an And search.
  ///
  /// * [int] timeZoneOffset:
  ///   Offset from UTC of user timezone for date searches.
  ///
  /// * [bool] includeDeletedChannels:
  ///   Set to true if deleted channels should be included in the search. (archived channels)
  ///
  /// * [int] page:
  ///   The page to select. (Only works with Elasticsearch)
  ///
  /// * [int] perPage:
  ///   The number of posts per page. (Only works with Elasticsearch)
  Future<MattermostFileInfoList?> searchFiles(String teamId, String terms, bool isOrSearch, { int? timeZoneOffset, bool? includeDeletedChannels, int? page, int? perPage, }) async {
    final response = await searchFilesWithHttpInfo(teamId, terms, isOrSearch,  timeZoneOffset: timeZoneOffset, includeDeletedChannels: includeDeletedChannels, page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MattermostFileInfoList',) as MattermostFileInfoList;
    
    }
    return null;
  }
}
