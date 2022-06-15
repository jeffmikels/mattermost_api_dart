//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;


class MattermostExportsApi {

  final MattermostApiClient apiClient;
  
  MattermostExportsApi(this.apiClient);


  /// Delete an export file
  ///
  /// Deletes an export file.   __Minimum server version__: 5.33  ##### Permissions  Must have `manage_system` permissions. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] exportName (required):
  ///   The name of the export file to delete
  Future<Response> deleteExportWithHttpInfo(String exportName,) async {
    // ignore: prefer_const_declarations
    final path = r'/exports/{export_name}'
      .replaceAll('{export_name}', exportName);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
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

  /// Delete an export file
  ///
  /// Deletes an export file.   __Minimum server version__: 5.33  ##### Permissions  Must have `manage_system` permissions. 
  ///
  /// Parameters:
  ///
  /// * [String] exportName (required):
  ///   The name of the export file to delete
  Future<void> deleteExport(String exportName,) async {
    final response = await deleteExportWithHttpInfo(exportName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Download an export file
  ///
  /// Downloads an export file.   __Minimum server version__: 5.33  ##### Permissions  Must have `manage_system` permissions. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] exportName (required):
  ///   The name of the export file to download
  Future<Response> downloadExportWithHttpInfo(String exportName,) async {
    // ignore: prefer_const_declarations
    final path = r'/exports/{export_name}'
      .replaceAll('{export_name}', exportName);

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

  /// Download an export file
  ///
  /// Downloads an export file.   __Minimum server version__: 5.33  ##### Permissions  Must have `manage_system` permissions. 
  ///
  /// Parameters:
  ///
  /// * [String] exportName (required):
  ///   The name of the export file to download
  Future<void> downloadExport(String exportName,) async {
    final response = await downloadExportWithHttpInfo(exportName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List export files
  ///
  /// Lists all available export files. __Minimum server version__: 5.33 ##### Permissions Must have `manage_system` permissions. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listExportsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/exports';

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

  /// List export files
  ///
  /// Lists all available export files. __Minimum server version__: 5.33 ##### Permissions Must have `manage_system` permissions. 
  Future<void> listExports() async {
    final response = await listExportsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
