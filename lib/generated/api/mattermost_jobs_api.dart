//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostJobsApi {
  MattermostJobsApi([MattermostApiClient? apiClient]) : apiClient = apiClient ?? defaultMattermostApiClient;

  final MattermostApiClient apiClient;

  /// Cancel a job.
  ///
  /// Cancel a job. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] jobId (required):
  ///   Job GUID
  Future<Response> cancelJobWithHttpInfo(
    String jobId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/jobs/{job_id}/cancel'.replaceAll('{job_id}', jobId);

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

  /// Cancel a job.
  ///
  /// Cancel a job. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission.
  ///
  /// Parameters:
  ///
  /// * [String] jobId (required):
  ///   Job GUID
  Future<MattermostStatusOK?> cancelJob(
    String jobId,
  ) async {
    final response = await cancelJobWithHttpInfo(
      jobId,
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
        'MattermostStatusOK',
      ) as MattermostStatusOK;
    }
    return null;
  }

  /// Create a new job.
  ///
  /// Create a new job. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MattermostCreateJobRequest] mattermostCreateJobRequest (required):
  ///   Job object to be created
  Future<Response> createJobWithHttpInfo(
    MattermostCreateJobRequest mattermostCreateJobRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/jobs';

    // ignore: prefer_final_locals
    Object? postBody = mattermostCreateJobRequest;

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

  /// Create a new job.
  ///
  /// Create a new job. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission.
  ///
  /// Parameters:
  ///
  /// * [MattermostCreateJobRequest] mattermostCreateJobRequest (required):
  ///   Job object to be created
  Future<MattermostJob?> createJob(
    MattermostCreateJobRequest mattermostCreateJobRequest,
  ) async {
    final response = await createJobWithHttpInfo(
      mattermostCreateJobRequest,
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
        'MattermostJob',
      ) as MattermostJob;
    }
    return null;
  }

  /// Download the results of a job.
  ///
  /// Download the result of a single job. __Minimum server version: 5.28__ ##### Permissions Must have `manage_jobs` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] jobId (required):
  ///   Job GUID
  Future<Response> downloadJobWithHttpInfo(
    String jobId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/jobs/{job_id}/download'.replaceAll('{job_id}', jobId);

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

  /// Download the results of a job.
  ///
  /// Download the result of a single job. __Minimum server version: 5.28__ ##### Permissions Must have `manage_jobs` permission.
  ///
  /// Parameters:
  ///
  /// * [String] jobId (required):
  ///   Job GUID
  Future<void> downloadJob(
    String jobId,
  ) async {
    final response = await downloadJobWithHttpInfo(
      jobId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get a job.
  ///
  /// Gets a single job. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] jobId (required):
  ///   Job GUID
  Future<Response> getJobWithHttpInfo(
    String jobId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/jobs/{job_id}'.replaceAll('{job_id}', jobId);

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

  /// Get a job.
  ///
  /// Gets a single job. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission.
  ///
  /// Parameters:
  ///
  /// * [String] jobId (required):
  ///   Job GUID
  Future<MattermostJob?> getJob(
    String jobId,
  ) async {
    final response = await getJobWithHttpInfo(
      jobId,
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
        'MattermostJob',
      ) as MattermostJob;
    }
    return null;
  }

  /// Get the jobs.
  ///
  /// Get a page of jobs. Use the query parameters to modify the behaviour of this endpoint. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of jobs per page.
  Future<Response> getJobsWithHttpInfo({
    int? page,
    int? perPage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/jobs';

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

  /// Get the jobs.
  ///
  /// Get a page of jobs. Use the query parameters to modify the behaviour of this endpoint. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of jobs per page.
  Future<List<MattermostJob>?> getJobs({
    int? page,
    int? perPage,
  }) async {
    final response = await getJobsWithHttpInfo(
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
      return (await apiClient.deserializeAsync(responseBody, 'List<MattermostJob>') as List)
          .cast<MattermostJob>()
          .toList();
    }
    return null;
  }

  /// Get the jobs of the given type.
  ///
  /// Get a page of jobs of the given type. Use the query parameters to modify the behaviour of this endpoint. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///   Job type
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of jobs per page.
  Future<Response> getJobsByTypeWithHttpInfo(
    String type, {
    int? page,
    int? perPage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/jobs/type/{type}'.replaceAll('{type}', type);

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

  /// Get the jobs of the given type.
  ///
  /// Get a page of jobs of the given type. Use the query parameters to modify the behaviour of this endpoint. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission.
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///   Job type
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of jobs per page.
  Future<List<MattermostJob>?> getJobsByType(
    String type, {
    int? page,
    int? perPage,
  }) async {
    final response = await getJobsByTypeWithHttpInfo(
      type,
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
      return (await apiClient.deserializeAsync(responseBody, 'List<MattermostJob>') as List)
          .cast<MattermostJob>()
          .toList();
    }
    return null;
  }
}
