//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;


class PermissionsApi {
  PermissionsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Return all system console subsection ancillary permissions
  ///
  /// Returns all the ancillary permissions for the corresponding system console subsection permissions appended to the requested permission subsections.  __Minimum server version__: 5.35 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] subsectionPermissions:
  ///   The subsection permissions to return the ancillary permissions for. These values are comma seperated. Ex. subsection_permissions=sysconsole_read_reporting_site_statistics,sysconsole_write_reporting_site_statistics,sysconsole_write_user_management_channels 
  Future<Response> getAncillaryPermissionsWithHttpInfo({ String? subsectionPermissions, }) async {
    // ignore: prefer_const_declarations
    final path = r'/permissions/ancillary';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (subsectionPermissions != null) {
      queryParams.addAll(_queryParams('', 'subsection_permissions', subsectionPermissions));
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

  /// Return all system console subsection ancillary permissions
  ///
  /// Returns all the ancillary permissions for the corresponding system console subsection permissions appended to the requested permission subsections.  __Minimum server version__: 5.35 
  ///
  /// Parameters:
  ///
  /// * [String] subsectionPermissions:
  ///   The subsection permissions to return the ancillary permissions for. These values are comma seperated. Ex. subsection_permissions=sysconsole_read_reporting_site_statistics,sysconsole_write_reporting_site_statistics,sysconsole_write_user_management_channels 
  Future<List<String>?> getAncillaryPermissions({ String? subsectionPermissions, }) async {
    final response = await getAncillaryPermissionsWithHttpInfo( subsectionPermissions: subsectionPermissions, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List)
        .cast<String>()
        .toList();

    }
    return null;
  }
}
