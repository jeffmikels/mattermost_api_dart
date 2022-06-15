//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;


class MattermostBrandApi {

  final MattermostApiClient apiClient;
  
  MattermostBrandApi(this.apiClient);


  /// Delete current brand image
  ///
  /// Deletes the previously uploaded brand image. Returns 404 if no brand image has been uploaded. ##### Permissions Must have `manage_system` permission. __Minimum server version: 5.6__ 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteBrandImageWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/brand/image';

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

  /// Delete current brand image
  ///
  /// Deletes the previously uploaded brand image. Returns 404 if no brand image has been uploaded. ##### Permissions Must have `manage_system` permission. __Minimum server version: 5.6__ 
  Future<MmStatusOK?> deleteBrandImage() async {
    final response = await deleteBrandImageWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MmStatusOK',) as MmStatusOK;
    
    }
    return null;
  }

  /// Get brand image
  ///
  /// Get the previously uploaded brand image. Returns 404 if no brand image has been uploaded. ##### Permissions No permission required. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBrandImageWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/brand/image';

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

  /// Get brand image
  ///
  /// Get the previously uploaded brand image. Returns 404 if no brand image has been uploaded. ##### Permissions No permission required. 
  Future<String?> getBrandImage() async {
    final response = await getBrandImageWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Upload brand image
  ///
  /// Uploads a brand image. ##### Permissions Must have `manage_system` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] image (required):
  ///   The image to be uploaded
  Future<Response> uploadBrandImageWithHttpInfo(MultipartFile image,) async {
    // ignore: prefer_const_declarations
    final path = r'/brand/image';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
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

  /// Upload brand image
  ///
  /// Uploads a brand image. ##### Permissions Must have `manage_system` permission. 
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] image (required):
  ///   The image to be uploaded
  Future<MmStatusOK?> uploadBrandImage(MultipartFile image,) async {
    final response = await uploadBrandImageWithHttpInfo(image,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MmStatusOK',) as MmStatusOK;
    
    }
    return null;
  }
}
