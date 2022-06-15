//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;


class MattermostFilesApi {

  final MattermostApiClient apiClient;
  
  MattermostFilesApi(this.apiClient);


  /// Get a file
  ///
  /// Gets a file that has been uploaded previously. ##### Permissions Must have `read_channel` permission or be uploader of the file. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  ///   The ID of the file to get
  Future<Response> getFileWithHttpInfo(String fileId,) async {
    // ignore: prefer_const_declarations
    final path = r'/files/{file_id}'
      .replaceAll('{file_id}', fileId);

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

  /// Get a file
  ///
  /// Gets a file that has been uploaded previously. ##### Permissions Must have `read_channel` permission or be uploader of the file. 
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  ///   The ID of the file to get
  Future<void> getFile(String fileId,) async {
    final response = await getFileWithHttpInfo(fileId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get metadata for a file
  ///
  /// Gets a file's info. ##### Permissions Must have `read_channel` permission or be uploader of the file. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  ///   The ID of the file info to get
  Future<Response> getFileInfoWithHttpInfo(String fileId,) async {
    // ignore: prefer_const_declarations
    final path = r'/files/{file_id}/info'
      .replaceAll('{file_id}', fileId);

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

  /// Get metadata for a file
  ///
  /// Gets a file's info. ##### Permissions Must have `read_channel` permission or be uploader of the file. 
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  ///   The ID of the file info to get
  Future<MMFileInfo?> getFileInfo(String fileId,) async {
    final response = await getFileInfoWithHttpInfo(fileId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MMFileInfo',) as MMFileInfo;
    
    }
    return null;
  }

  /// Get a public file link
  ///
  /// Gets a public link for a file that can be accessed without logging into Mattermost. ##### Permissions Must have `read_channel` permission or be uploader of the file. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  ///   The ID of the file to get a link for
  Future<Response> getFileLinkWithHttpInfo(String fileId,) async {
    // ignore: prefer_const_declarations
    final path = r'/files/{file_id}/link'
      .replaceAll('{file_id}', fileId);

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

  /// Get a public file link
  ///
  /// Gets a public link for a file that can be accessed without logging into Mattermost. ##### Permissions Must have `read_channel` permission or be uploader of the file. 
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  ///   The ID of the file to get a link for
  Future<MMGetFileLink200Response?> getFileLink(String fileId,) async {
    final response = await getFileLinkWithHttpInfo(fileId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MMGetFileLink200Response',) as MMGetFileLink200Response;
    
    }
    return null;
  }

  /// Get a file's preview
  ///
  /// Gets a file's preview. ##### Permissions Must have `read_channel` permission or be uploader of the file. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  ///   The ID of the file to get
  Future<Response> getFilePreviewWithHttpInfo(String fileId,) async {
    // ignore: prefer_const_declarations
    final path = r'/files/{file_id}/preview'
      .replaceAll('{file_id}', fileId);

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

  /// Get a file's preview
  ///
  /// Gets a file's preview. ##### Permissions Must have `read_channel` permission or be uploader of the file. 
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  ///   The ID of the file to get
  Future<void> getFilePreview(String fileId,) async {
    final response = await getFilePreviewWithHttpInfo(fileId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get a public file
  ///
  /// ##### Permissions No permissions required. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  ///   The ID of the file to get
  ///
  /// * [String] h (required):
  ///   File hash
  Future<Response> getFilePublicWithHttpInfo(String fileId, String h,) async {
    // ignore: prefer_const_declarations
    final path = r'/files/{file_id}/public'
      .replaceAll('{file_id}', fileId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'h', h));

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

  /// Get a public file
  ///
  /// ##### Permissions No permissions required. 
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  ///   The ID of the file to get
  ///
  /// * [String] h (required):
  ///   File hash
  Future<void> getFilePublic(String fileId, String h,) async {
    final response = await getFilePublicWithHttpInfo(fileId, h,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get a file's thumbnail
  ///
  /// Gets a file's thumbnail. ##### Permissions Must have `read_channel` permission or be uploader of the file. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  ///   The ID of the file to get
  Future<Response> getFileThumbnailWithHttpInfo(String fileId,) async {
    // ignore: prefer_const_declarations
    final path = r'/files/{file_id}/thumbnail'
      .replaceAll('{file_id}', fileId);

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

  /// Get a file's thumbnail
  ///
  /// Gets a file's thumbnail. ##### Permissions Must have `read_channel` permission or be uploader of the file. 
  ///
  /// Parameters:
  ///
  /// * [String] fileId (required):
  ///   The ID of the file to get
  Future<void> getFileThumbnail(String fileId,) async {
    final response = await getFileThumbnailWithHttpInfo(fileId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

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

    final queryParams = <MMQueryParam>[];
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
  Future<MMFileInfoList?> searchFiles(String teamId, String terms, bool isOrSearch, { int? timeZoneOffset, bool? includeDeletedChannels, int? page, int? perPage, }) async {
    final response = await searchFilesWithHttpInfo(teamId, terms, isOrSearch,  timeZoneOffset: timeZoneOffset, includeDeletedChannels: includeDeletedChannels, page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MMFileInfoList',) as MMFileInfoList;
    
    }
    return null;
  }

  /// Upload a file
  ///
  /// Uploads a file that can later be attached to a post.  This request can either be a multipart/form-data request with a channel_id, files and optional client_ids defined in the FormData, or it can be a request with the channel_id and filename defined as query parameters with the contents of a single file in the body of the request.  Only multipart/form-data requests are supported by server versions up to and including 4.7. Server versions 4.8 and higher support both types of requests.  ##### Permissions Must have `upload_file` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channelId:
  ///   The ID of the channel that this file will be uploaded to
  ///
  /// * [String] filename:
  ///   The name of the file to be uploaded
  ///
  /// * [MultipartFile] files:
  ///   A file to be uploaded
  ///
  /// * [String] channelId2:
  ///   The ID of the channel that this file will be uploaded to
  ///
  /// * [String] clientIds:
  ///   A unique identifier for the file that will be returned in the response
  Future<Response> uploadFileWithHttpInfo({ String? channelId, String? filename, MultipartFile? files, String? channelId2, String? clientIds, }) async {
    // ignore: prefer_const_declarations
    final path = r'/files';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (channelId != null) {
      queryParams.addAll(_queryParams('', 'channel_id', channelId));
    }
    if (filename != null) {
      queryParams.addAll(_queryParams('', 'filename', filename));
    }

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (files != null) {
      hasFields = true;
      mp.fields[r'files'] = files.field;
      mp.files.add(files);
    }
    if (channelId2 != null) {
      hasFields = true;
      mp.fields[r'channel_id'] = parameterToString(channelId2);
    }
    if (clientIds != null) {
      hasFields = true;
      mp.fields[r'client_ids'] = parameterToString(clientIds);
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

  /// Upload a file
  ///
  /// Uploads a file that can later be attached to a post.  This request can either be a multipart/form-data request with a channel_id, files and optional client_ids defined in the FormData, or it can be a request with the channel_id and filename defined as query parameters with the contents of a single file in the body of the request.  Only multipart/form-data requests are supported by server versions up to and including 4.7. Server versions 4.8 and higher support both types of requests.  ##### Permissions Must have `upload_file` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] channelId:
  ///   The ID of the channel that this file will be uploaded to
  ///
  /// * [String] filename:
  ///   The name of the file to be uploaded
  ///
  /// * [MultipartFile] files:
  ///   A file to be uploaded
  ///
  /// * [String] channelId2:
  ///   The ID of the channel that this file will be uploaded to
  ///
  /// * [String] clientIds:
  ///   A unique identifier for the file that will be returned in the response
  Future<MMUploadFile201Response?> uploadFile({ String? channelId, String? filename, MultipartFile? files, String? channelId2, String? clientIds, }) async {
    final response = await uploadFileWithHttpInfo( channelId: channelId, filename: filename, files: files, channelId2: channelId2, clientIds: clientIds, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MMUploadFile201Response',) as MMUploadFile201Response;
    
    }
    return null;
  }
}
