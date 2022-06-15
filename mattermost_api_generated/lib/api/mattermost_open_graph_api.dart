//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;


class MattermostOpenGraphApi {

  final MattermostApiClient apiClient;
  
  MattermostOpenGraphApi(this.apiClient);


  /// Get open graph metadata for url
  ///
  /// Get Open Graph Metadata for a specif URL. Use the Open Graph protocol to get some generic metadata about a URL. Used for creating link previews.  __Minimum server version__: 3.10  ##### Permissions No permission required but must be logged in. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MmOpenGraphRequest] mmOpenGraphRequest (required):
  Future<Response> openGraphWithHttpInfo(MmOpenGraphRequest mmOpenGraphRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/opengraph';

    // ignore: prefer_final_locals
    Object? postBody = mmOpenGraphRequest;

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

  /// Get open graph metadata for url
  ///
  /// Get Open Graph Metadata for a specif URL. Use the Open Graph protocol to get some generic metadata about a URL. Used for creating link previews.  __Minimum server version__: 3.10  ##### Permissions No permission required but must be logged in. 
  ///
  /// Parameters:
  ///
  /// * [MmOpenGraphRequest] mmOpenGraphRequest (required):
  Future<MmOpenGraph?> openGraph(MmOpenGraphRequest mmOpenGraphRequest,) async {
    final response = await openGraphWithHttpInfo(mmOpenGraphRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MmOpenGraph',) as MmOpenGraph;
    
    }
    return null;
  }
}
