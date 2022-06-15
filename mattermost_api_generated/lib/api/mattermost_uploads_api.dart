//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;


class MattermostUploadsApi {

  final MattermostApiClient apiClient;
  
  MattermostUploadsApi(this.apiClient);


  /// Create an upload
  ///
  /// Creates a new upload session.  __Minimum server version__: 5.28 ##### Permissions Must have `upload_file` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MattermostCreateUploadRequest] mattermostCreateUploadRequest (required):
  Future<Response> createUploadWithHttpInfo(MattermostCreateUploadRequest mattermostCreateUploadRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/uploads';

    // ignore: prefer_final_locals
    Object? postBody = mattermostCreateUploadRequest;

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

  /// Create an upload
  ///
  /// Creates a new upload session.  __Minimum server version__: 5.28 ##### Permissions Must have `upload_file` permission. 
  ///
  /// Parameters:
  ///
  /// * [MattermostCreateUploadRequest] mattermostCreateUploadRequest (required):
  Future<MattermostUploadSession?> createUpload(MattermostCreateUploadRequest mattermostCreateUploadRequest,) async {
    final response = await createUploadWithHttpInfo(mattermostCreateUploadRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MattermostUploadSession',) as MattermostUploadSession;
    
    }
    return null;
  }

  /// Get an upload session
  ///
  /// Gets an upload session that has been previously created.  ##### Permissions Must be logged in as the user who created the upload session. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uploadId (required):
  ///   The ID of the upload session to get.
  Future<Response> getUploadWithHttpInfo(String uploadId,) async {
    // ignore: prefer_const_declarations
    final path = r'/uploads/{upload_id}'
      .replaceAll('{upload_id}', uploadId);

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

  /// Get an upload session
  ///
  /// Gets an upload session that has been previously created.  ##### Permissions Must be logged in as the user who created the upload session. 
  ///
  /// Parameters:
  ///
  /// * [String] uploadId (required):
  ///   The ID of the upload session to get.
  Future<void> getUpload(String uploadId,) async {
    final response = await getUploadWithHttpInfo(uploadId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Perform a file upload
  ///
  /// Starts or resumes a file upload.   To resume an existing (incomplete) upload, data should be sent starting from the offset specified in the upload session object.  The request body can be in one of two formats: - Binary file content streamed in request's body - multipart/form-data  ##### Permissions Must be logged in as the user who created the upload session. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uploadId (required):
  ///   The ID of the upload session the data belongs to.
  Future<Response> uploadDataWithHttpInfo(String uploadId,) async {
    // ignore: prefer_const_declarations
    final path = r'/uploads/{upload_id}'
      .replaceAll('{upload_id}', uploadId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];


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

  /// Perform a file upload
  ///
  /// Starts or resumes a file upload.   To resume an existing (incomplete) upload, data should be sent starting from the offset specified in the upload session object.  The request body can be in one of two formats: - Binary file content streamed in request's body - multipart/form-data  ##### Permissions Must be logged in as the user who created the upload session. 
  ///
  /// Parameters:
  ///
  /// * [String] uploadId (required):
  ///   The ID of the upload session the data belongs to.
  Future<MattermostFileInfo?> uploadData(String uploadId,) async {
    final response = await uploadDataWithHttpInfo(uploadId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MattermostFileInfo',) as MattermostFileInfo;
    
    }
    return null;
  }
}
