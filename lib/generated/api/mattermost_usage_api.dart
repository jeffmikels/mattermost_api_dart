//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostUsageApi {
  final MattermostApiClient apiClient;

  MattermostUsageApi(this.apiClient);

  /// Get current usage of posts
  ///
  /// Retrieve rounded off total no. of posts for this instance. Example: returns 4000 instead of 4321 ##### Permissions Must be authenticated. __Minimum server version__: 7.0
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPostsUsageWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/usage/posts';

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

  /// Get current usage of posts
  ///
  /// Retrieve rounded off total no. of posts for this instance. Example: returns 4000 instead of 4321 ##### Permissions Must be authenticated. __Minimum server version__: 7.0
  Future<MmPostsUsage?> getPostsUsage() async {
    final response = await getPostsUsageWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmPostsUsage',
      ) as MmPostsUsage;
    }
    return null;
  }
}
