//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostImportsApi {
  final MattermostApiClient apiClient;

  MattermostImportsApi(this.apiClient);

  /// List import files
  ///
  /// Lists all available import files.  __Minimum server version__: 5.31 ##### Permissions Must have `manage_system` permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listImportsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/imports';

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

  /// List import files
  ///
  /// Lists all available import files.  __Minimum server version__: 5.31 ##### Permissions Must have `manage_system` permissions.
  Future<void> listImports() async {
    final response = await listImportsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
