//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostComplianceApi {
  final MattermostApiClient apiClient;

  MattermostComplianceApi(this.apiClient);

  /// Create report
  ///
  /// Create and save a compliance report. ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> createComplianceReportWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/compliance/reports';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

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

  /// Create report
  ///
  /// Create and save a compliance report. ##### Permissions Must have `manage_system` permission.
  Future<MattermostCompliance?> createComplianceReport() async {
    final response = await createComplianceReportWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MattermostCompliance',
      ) as MattermostCompliance;
    }
    return null;
  }

  /// Download a report
  ///
  /// Download the full contents of a report as a file. ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] reportId (required):
  ///   Compliance report GUID
  Future<Response> downloadComplianceReportWithHttpInfo(
    String reportId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/compliance/reports/{report_id}/download'.replaceAll('{report_id}', reportId);

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

  /// Download a report
  ///
  /// Download the full contents of a report as a file. ##### Permissions Must have `manage_system` permission.
  ///
  /// Parameters:
  ///
  /// * [String] reportId (required):
  ///   Compliance report GUID
  Future<void> downloadComplianceReport(
    String reportId,
  ) async {
    final response = await downloadComplianceReportWithHttpInfo(
      reportId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get a report
  ///
  /// Get a compliance reports previously created. ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] reportId (required):
  ///   Compliance report GUID
  Future<Response> getComplianceReportWithHttpInfo(
    String reportId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/compliance/reports/{report_id}'.replaceAll('{report_id}', reportId);

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

  /// Get a report
  ///
  /// Get a compliance reports previously created. ##### Permissions Must have `manage_system` permission.
  ///
  /// Parameters:
  ///
  /// * [String] reportId (required):
  ///   Compliance report GUID
  Future<MattermostCompliance?> getComplianceReport(
    String reportId,
  ) async {
    final response = await getComplianceReportWithHttpInfo(
      reportId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MattermostCompliance',
      ) as MattermostCompliance;
    }
    return null;
  }

  /// Get reports
  ///
  /// Get a list of compliance reports previously created by page, selected with `page` and `per_page` query parameters. ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of reports per page.
  Future<Response> getComplianceReportsWithHttpInfo({
    int? page,
    int? perPage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/compliance/reports';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
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

  /// Get reports
  ///
  /// Get a list of compliance reports previously created by page, selected with `page` and `per_page` query parameters. ##### Permissions Must have `manage_system` permission.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of reports per page.
  Future<List<MattermostCompliance>?> getComplianceReports({
    int? page,
    int? perPage,
  }) async {
    final response = await getComplianceReportsWithHttpInfo(
      page: page,
      perPage: perPage,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MattermostCompliance>') as List)
          .cast<MattermostCompliance>()
          .toList();
    }
    return null;
  }
}
