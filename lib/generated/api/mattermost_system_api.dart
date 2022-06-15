//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostSystemApi {
  final MattermostApiClient apiClient;

  MattermostSystemApi(this.apiClient);

  /// Perform a database integrity check
  ///
  /// Performs a database integrity check.   __Note__: This check may temporarily harm system performance.   __Minimum server version__: 5.28.0   __Local mode only__: This endpoint is only available through [local mode](https://docs.mattermost.com/administration/mmctl-cli-tool.html#local-mode).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> checkIntegrityWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/integrity';

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

  /// Perform a database integrity check
  ///
  /// Performs a database integrity check.   __Note__: This check may temporarily harm system performance.   __Minimum server version__: 5.28.0   __Local mode only__: This endpoint is only available through [local mode](https://docs.mattermost.com/administration/mmctl-cli-tool.html#local-mode).
  Future<List<MattermostIntegrityCheckResult>?> checkIntegrity() async {
    final response = await checkIntegrityWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MattermostIntegrityCheckResult>') as List)
          .cast<MattermostIntegrityCheckResult>()
          .toList();
    }
    return null;
  }

  /// Clears the server busy (high load) flag
  ///
  /// Marks the server as not having high load which re-enables non-critical services such as search, statuses and typing notifications.  __Minimum server version__: 5.20  ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> clearServerBusyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/server_busy';

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

  /// Clears the server busy (high load) flag
  ///
  /// Marks the server as not having high load which re-enables non-critical services such as search, statuses and typing notifications.  __Minimum server version__: 5.20  ##### Permissions Must have `manage_system` permission.
  Future<MattermostStatusOK?> clearServerBusy() async {
    final response = await clearServerBusyWithHttpInfo();
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

  /// Recycle database connections
  ///
  /// Recycle database connections by closing and reconnecting all connections to master and read replica databases. ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> databaseRecycleWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/database/recycle';

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

  /// Recycle database connections
  ///
  /// Recycle database connections by closing and reconnecting all connections to master and read replica databases. ##### Permissions Must have `manage_system` permission.
  Future<MattermostStatusOK?> databaseRecycle() async {
    final response = await databaseRecycleWithHttpInfo();
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

  /// Download a zip file which contains helpful and useful information for troubleshooting your mattermost instance.
  ///
  /// Download a zip file which contains helpful and useful information for troubleshooting your mattermost instance. __Minimum server version: 5.32__ ##### Permissions Must have any of the system console read permissions. ##### License Requires either a E10 or E20 license.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> generateSupportPacketWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/system/support_packet';

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

  /// Download a zip file which contains helpful and useful information for troubleshooting your mattermost instance.
  ///
  /// Download a zip file which contains helpful and useful information for troubleshooting your mattermost instance. __Minimum server version: 5.32__ ##### Permissions Must have any of the system console read permissions. ##### License Requires either a E10 or E20 license.
  Future<void> generateSupportPacket() async {
    final response = await generateSupportPacketWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get analytics
  ///
  /// Get some analytics data about the system. This endpoint uses the old format, the `/analytics` route is reserved for the new format when it gets implemented.  The returned JSON changes based on the `name` query parameter but is always key/value pairs.  __Minimum server version__: 4.0  ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name:
  ///   Possible values are \"standard\", \"bot_post_counts_day\", \"post_counts_day\", \"user_counts_with_posts_day\" or \"extra_counts\"
  ///
  /// * [String] teamId:
  ///   The team ID to filter the data by
  Future<Response> getAnalyticsOldWithHttpInfo({
    String? name,
    String? teamId,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/analytics/old';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (teamId != null) {
      queryParams.addAll(_queryParams('', 'team_id', teamId));
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

  /// Get analytics
  ///
  /// Get some analytics data about the system. This endpoint uses the old format, the `/analytics` route is reserved for the new format when it gets implemented.  The returned JSON changes based on the `name` query parameter but is always key/value pairs.  __Minimum server version__: 4.0  ##### Permissions Must have `manage_system` permission.
  ///
  /// Parameters:
  ///
  /// * [String] name:
  ///   Possible values are \"standard\", \"bot_post_counts_day\", \"post_counts_day\", \"user_counts_with_posts_day\" or \"extra_counts\"
  ///
  /// * [String] teamId:
  ///   The team ID to filter the data by
  Future<void> getAnalyticsOld({
    String? name,
    String? teamId,
  }) async {
    final response = await getAnalyticsOldWithHttpInfo(
      name: name,
      teamId: teamId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get audits
  ///
  /// Get a page of audits for all users on the system, selected with `page` and `per_page` query parameters. ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of audits per page.
  Future<Response> getAuditsWithHttpInfo({
    int? page,
    int? perPage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/audits';

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

  /// Get audits
  ///
  /// Get a page of audits for all users on the system, selected with `page` and `per_page` query parameters. ##### Permissions Must have `manage_system` permission.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of audits per page.
  Future<List<MattermostAudit>?> getAudits({
    int? page,
    int? perPage,
  }) async {
    final response = await getAuditsWithHttpInfo(
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
      return (await apiClient.deserializeAsync(responseBody, 'List<MattermostAudit>') as List)
          .cast<MattermostAudit>()
          .toList();
    }
    return null;
  }

  /// Get client configuration
  ///
  /// Get a subset of the server configuration needed by the client. ##### Permissions No permission required.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] format (required):
  ///   Must be `old`, other formats not implemented yet
  Future<Response> getClientConfigWithHttpInfo(
    String format,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/config/client';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'format', format));

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

  /// Get client configuration
  ///
  /// Get a subset of the server configuration needed by the client. ##### Permissions No permission required.
  ///
  /// Parameters:
  ///
  /// * [String] format (required):
  ///   Must be `old`, other formats not implemented yet
  Future<void> getClientConfig(
    String format,
  ) async {
    final response = await getClientConfigWithHttpInfo(
      format,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get client license
  ///
  /// Get a subset of the server license needed by the client. ##### Permissions No permission required but having the `manage_system` permission returns more information.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] format (required):
  ///   Must be `old`, other formats not implemented yet
  Future<Response> getClientLicenseWithHttpInfo(
    String format,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/license/client';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'format', format));

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

  /// Get client license
  ///
  /// Get a subset of the server license needed by the client. ##### Permissions No permission required but having the `manage_system` permission returns more information.
  ///
  /// Parameters:
  ///
  /// * [String] format (required):
  ///   Must be `old`, other formats not implemented yet
  Future<void> getClientLicense(
    String format,
  ) async {
    final response = await getClientLicenseWithHttpInfo(
      format,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get configuration
  ///
  /// Retrieve the current server configuration ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getConfigWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/config';

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

  /// Get configuration
  ///
  /// Retrieve the current server configuration ##### Permissions Must have `manage_system` permission.
  Future<MattermostConfig?> getConfig() async {
    final response = await getConfigWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MattermostConfig',
      ) as MattermostConfig;
    }
    return null;
  }

  /// Get configuration made through environment variables
  ///
  /// Retrieve a json object mirroring the server configuration where fields are set to true if the corresponding config setting is set through an environment variable. Settings that haven't been set through environment variables will be missing from the object.  __Minimum server version__: 4.10  ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getEnvironmentConfigWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/config/environment';

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

  /// Get configuration made through environment variables
  ///
  /// Retrieve a json object mirroring the server configuration where fields are set to true if the corresponding config setting is set through an environment variable. Settings that haven't been set through environment variables will be missing from the object.  __Minimum server version__: 4.10  ##### Permissions Must have `manage_system` permission.
  Future<MattermostEnvironmentConfig?> getEnvironmentConfig() async {
    final response = await getEnvironmentConfigWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MattermostEnvironmentConfig',
      ) as MattermostEnvironmentConfig;
    }
    return null;
  }

  /// Get an image by url
  ///
  /// Fetches an image via Mattermost image proxy. __Minimum server version__: 3.10 ##### Permissions Must be logged in.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getImageByUrlWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/image';

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

  /// Get an image by url
  ///
  /// Fetches an image via Mattermost image proxy. __Minimum server version__: 3.10 ##### Permissions Must be logged in.
  Future<MultipartFile?> getImageByUrl() async {
    final response = await getImageByUrlWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MultipartFile',
      ) as MultipartFile;
    }
    return null;
  }

  /// Get logs
  ///
  /// Get a page of server logs, selected with `page` and `logs_per_page` query parameters. ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [String] logsPerPage:
  ///   The number of logs per page. There is a maximum limit of 10000 logs per page.
  Future<Response> getLogsWithHttpInfo({
    int? page,
    String? logsPerPage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/logs';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (logsPerPage != null) {
      queryParams.addAll(_queryParams('', 'logs_per_page', logsPerPage));
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

  /// Get logs
  ///
  /// Get a page of server logs, selected with `page` and `logs_per_page` query parameters. ##### Permissions Must have `manage_system` permission.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [String] logsPerPage:
  ///   The number of logs per page. There is a maximum limit of 10000 logs per page.
  Future<List<String>?> getLogs({
    int? page,
    String? logsPerPage,
  }) async {
    final response = await getLogsWithHttpInfo(
      page: page,
      logsPerPage: logsPerPage,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List).cast<String>().toList();
    }
    return null;
  }

  /// Get notices for logged in user in specified team
  ///
  /// Will return appropriate product notices for current user in the team specified by teamId parameter. __Minimum server version__: 5.26 ##### Permissions Must be logged in.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] clientVersion (required):
  ///   Version of the client (desktop/mobile/web) that issues the request
  ///
  /// * [String] client (required):
  ///   Client type (web/mobile-ios/mobile-android/desktop)
  ///
  /// * [String] teamId (required):
  ///   ID of the team
  ///
  /// * [String] locale:
  ///   Client locale
  Future<Response> getNoticesWithHttpInfo(
    String clientVersion,
    String client,
    String teamId, {
    String? locale,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/system/notices/{teamId}'.replaceAll('{teamId}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'clientVersion', clientVersion));
    if (locale != null) {
      queryParams.addAll(_queryParams('', 'locale', locale));
    }
    queryParams.addAll(_queryParams('', 'client', client));

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

  /// Get notices for logged in user in specified team
  ///
  /// Will return appropriate product notices for current user in the team specified by teamId parameter. __Minimum server version__: 5.26 ##### Permissions Must be logged in.
  ///
  /// Parameters:
  ///
  /// * [String] clientVersion (required):
  ///   Version of the client (desktop/mobile/web) that issues the request
  ///
  /// * [String] client (required):
  ///   Client type (web/mobile-ios/mobile-android/desktop)
  ///
  /// * [String] teamId (required):
  ///   ID of the team
  ///
  /// * [String] locale:
  ///   Client locale
  Future<List<MattermostNotice>?> getNotices(
    String clientVersion,
    String client,
    String teamId, {
    String? locale,
  }) async {
    final response = await getNoticesWithHttpInfo(
      clientVersion,
      client,
      teamId,
      locale: locale,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MattermostNotice>') as List)
          .cast<MattermostNotice>()
          .toList();
    }
    return null;
  }

  /// Check system health
  ///
  /// Check if the server is up and healthy based on the configuration setting `GoRoutineHealthThreshold`. If `GoRoutineHealthThreshold` and the number of goroutines on the server exceeds that threshold the server is considered unhealthy. If `GoRoutineHealthThreshold` is not set or the number of goroutines is below the threshold the server is considered healthy. __Minimum server version__: 3.10 If a \"device_id\" is passed in the query, it will test the Push Notification Proxy in order to discover whether the device is able to receive notifications. The response will have a \"CanReceiveNotifications\" property with one of the following values: - true: It can receive notifications - false: It cannot receive notifications - unknown: There has been an unknown error, and it is not certain whether it can   receive notifications.  __Minimum server version__: 6.5 ##### Permissions None.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] getServerStatus:
  ///   Check the status of the database and file storage as well
  ///
  /// * [String] deviceId:
  ///   Check whether this device id can receive push notifications
  Future<Response> getPingWithHttpInfo({
    bool? getServerStatus,
    String? deviceId,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/system/ping';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (getServerStatus != null) {
      queryParams.addAll(_queryParams('', 'get_server_status', getServerStatus));
    }
    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'device_id', deviceId));
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

  /// Check system health
  ///
  /// Check if the server is up and healthy based on the configuration setting `GoRoutineHealthThreshold`. If `GoRoutineHealthThreshold` and the number of goroutines on the server exceeds that threshold the server is considered unhealthy. If `GoRoutineHealthThreshold` is not set or the number of goroutines is below the threshold the server is considered healthy. __Minimum server version__: 3.10 If a \"device_id\" is passed in the query, it will test the Push Notification Proxy in order to discover whether the device is able to receive notifications. The response will have a \"CanReceiveNotifications\" property with one of the following values: - true: It can receive notifications - false: It cannot receive notifications - unknown: There has been an unknown error, and it is not certain whether it can   receive notifications.  __Minimum server version__: 6.5 ##### Permissions None.
  ///
  /// Parameters:
  ///
  /// * [bool] getServerStatus:
  ///   Check the status of the database and file storage as well
  ///
  /// * [String] deviceId:
  ///   Check whether this device id can receive push notifications
  Future<MattermostSystemStatusResponse?> getPing({
    bool? getServerStatus,
    String? deviceId,
  }) async {
    final response = await getPingWithHttpInfo(
      getServerStatus: getServerStatus,
      deviceId: deviceId,
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
        'MattermostSystemStatusResponse',
      ) as MattermostSystemStatusResponse;
    }
    return null;
  }

  /// Get redirect location
  ///
  /// __Minimum server version__: 3.10 ##### Permissions Must be logged in.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   Url to check
  Future<Response> getRedirectLocationWithHttpInfo(
    String url,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/redirect_location';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'url', url));

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

  /// Get redirect location
  ///
  /// __Minimum server version__: 3.10 ##### Permissions Must be logged in.
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   Url to check
  Future<MattermostGetRedirectLocation200Response?> getRedirectLocation(
    String url,
  ) async {
    final response = await getRedirectLocationWithHttpInfo(
      url,
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
        'MattermostGetRedirectLocation200Response',
      ) as MattermostGetRedirectLocation200Response;
    }
    return null;
  }

  /// Get server busy expiry time.
  ///
  /// Gets the timestamp corresponding to when the server busy flag will be automatically cleared.  __Minimum server version__: 5.20  ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getServerBusyExpiresWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/server_busy';

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

  /// Get server busy expiry time.
  ///
  /// Gets the timestamp corresponding to when the server busy flag will be automatically cleared.  __Minimum server version__: 5.20  ##### Permissions Must have `manage_system` permission.
  Future<MattermostServerBusy?> getServerBusyExpires() async {
    final response = await getServerBusyExpiresWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MattermostServerBusy',
      ) as MattermostServerBusy;
    }
    return null;
  }

  /// Retrieve a list of supported timezones
  ///
  /// __Minimum server version__: 3.10 ##### Permissions Must be logged in.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSupportedTimezoneWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/system/timezones';

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

  /// Retrieve a list of supported timezones
  ///
  /// __Minimum server version__: 3.10 ##### Permissions Must be logged in.
  Future<List<String>?> getSupportedTimezone() async {
    final response = await getSupportedTimezoneWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List).cast<String>().toList();
    }
    return null;
  }

  /// Get the warn metrics status (enabled or disabled)
  ///
  /// Get the status of a set of metrics (enabled or disabled) from the Systems table.  The returned JSON contains the metrics that we need to warn the admin on with regard to their status (we return the ones whose status is \"true\", which means that they are in a \"warnable\" state - e.g. a threshold has been crossed or some other condition has been fulfilled).  __Minimum server version__: 5.26  ##### Permissions  Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getWarnMetricsStatusWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/warn_metrics/status';

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

  /// Get the warn metrics status (enabled or disabled)
  ///
  /// Get the status of a set of metrics (enabled or disabled) from the Systems table.  The returned JSON contains the metrics that we need to warn the admin on with regard to their status (we return the ones whose status is \"true\", which means that they are in a \"warnable\" state - e.g. a threshold has been crossed or some other condition has been fulfilled).  __Minimum server version__: 5.26  ##### Permissions  Must have `manage_system` permission.
  Future<MattermostStatusOK?> getWarnMetricsStatus() async {
    final response = await getWarnMetricsStatusWithHttpInfo();
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

  /// Invalidate all the caches
  ///
  /// Purge all the in-memory caches for the Mattermost server. This can have a temporary negative effect on performance while the caches are re-populated. ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> invalidateCachesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/caches/invalidate';

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

  /// Invalidate all the caches
  ///
  /// Purge all the in-memory caches for the Mattermost server. This can have a temporary negative effect on performance while the caches are re-populated. ##### Permissions Must have `manage_system` permission.
  Future<MattermostStatusOK?> invalidateCaches() async {
    final response = await invalidateCachesWithHttpInfo();
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

  /// Update notices as 'viewed'
  ///
  /// Will mark the specified notices as 'viewed' by the logged in user. __Minimum server version__: 5.26 ##### Permissions Must be logged in.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  ///   Array of notice IDs
  Future<Response> markNoticesViewedWithHttpInfo(
    List<String> requestBody,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/system/notices/view';

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update notices as 'viewed'
  ///
  /// Will mark the specified notices as 'viewed' by the logged in user. __Minimum server version__: 5.26 ##### Permissions Must be logged in.
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  ///   Array of notice IDs
  Future<MattermostStatusOK?> markNoticesViewed(
    List<String> requestBody,
  ) async {
    final response = await markNoticesViewedWithHttpInfo(
      requestBody,
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

  /// Patch configuration
  ///
  /// Submit configuration to patch. As of server version 4.8, the `PluginSettings.EnableUploads` setting cannot be modified by this endpoint. ##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.20
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MattermostConfig] mattermostConfig (required):
  ///   Mattermost configuration
  Future<Response> patchConfigWithHttpInfo(
    MattermostConfig mattermostConfig,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/config/patch';

    // ignore: prefer_final_locals
    Object? postBody = mattermostConfig;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Patch configuration
  ///
  /// Submit configuration to patch. As of server version 4.8, the `PluginSettings.EnableUploads` setting cannot be modified by this endpoint. ##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.20
  ///
  /// Parameters:
  ///
  /// * [MattermostConfig] mattermostConfig (required):
  ///   Mattermost configuration
  Future<MattermostConfig?> patchConfig(
    MattermostConfig mattermostConfig,
  ) async {
    final response = await patchConfigWithHttpInfo(
      mattermostConfig,
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
        'MattermostConfig',
      ) as MattermostConfig;
    }
    return null;
  }

  /// Add log message
  ///
  /// Add log messages to the server logs. ##### Permissions Users with `manage_system` permission can log ERROR or DEBUG messages. Logged in users can log ERROR or DEBUG messages when `ServiceSettings.EnableDeveloper` is `true` or just DEBUG messages when `false`. Non-logged in users can log ERROR or DEBUG messages when `ServiceSettings.EnableDeveloper` is `true` and cannot log when `false`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MattermostPostLogRequest] mattermostPostLogRequest (required):
  Future<Response> postLogWithHttpInfo(
    MattermostPostLogRequest mattermostPostLogRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/logs';

    // ignore: prefer_final_locals
    Object? postBody = mattermostPostLogRequest;

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

  /// Add log message
  ///
  /// Add log messages to the server logs. ##### Permissions Users with `manage_system` permission can log ERROR or DEBUG messages. Logged in users can log ERROR or DEBUG messages when `ServiceSettings.EnableDeveloper` is `true` or just DEBUG messages when `false`. Non-logged in users can log ERROR or DEBUG messages when `ServiceSettings.EnableDeveloper` is `true` and cannot log when `false`.
  ///
  /// Parameters:
  ///
  /// * [MattermostPostLogRequest] mattermostPostLogRequest (required):
  Future<List<String>?> postLog(
    MattermostPostLogRequest mattermostPostLogRequest,
  ) async {
    final response = await postLogWithHttpInfo(
      mattermostPostLogRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List).cast<String>().toList();
    }
    return null;
  }

  /// Reload configuration
  ///
  /// Reload the configuration file to pick up on any changes made to it. ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> reloadConfigWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/config/reload';

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

  /// Reload configuration
  ///
  /// Reload the configuration file to pick up on any changes made to it. ##### Permissions Must have `manage_system` permission.
  Future<MattermostStatusOK?> reloadConfig() async {
    final response = await reloadConfigWithHttpInfo();
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

  /// Remove license file
  ///
  /// Remove the license file from the server. This will disable all enterprise features.  __Minimum server version__: 4.0  ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> removeLicenseFileWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/license';

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

  /// Remove license file
  ///
  /// Remove the license file from the server. This will disable all enterprise features.  __Minimum server version__: 4.0  ##### Permissions Must have `manage_system` permission.
  Future<void> removeLicenseFile() async {
    final response = await removeLicenseFileWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Request the license renewal link
  ///
  /// Request the renewal link that would be used to start the license renewal process __Minimum server version__: 5.32 ##### Permissions Must have `sysconsole_write_about` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> requestLicenseRenewalLinkWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/license/renewal';

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

  /// Request the license renewal link
  ///
  /// Request the renewal link that would be used to start the license renewal process __Minimum server version__: 5.32 ##### Permissions Must have `sysconsole_write_about` permission.
  Future<MattermostLicenseRenewalLink?> requestLicenseRenewalLink() async {
    final response = await requestLicenseRenewalLinkWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MattermostLicenseRenewalLink',
      ) as MattermostLicenseRenewalLink;
    }
    return null;
  }

  /// Request and install a trial license for your server
  ///
  /// Request and install a trial license for your server __Minimum server version__: 5.25 ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MattermostRequestTrialLicenseRequest] mattermostRequestTrialLicenseRequest (required):
  ///   License request
  Future<Response> requestTrialLicenseWithHttpInfo(
    MattermostRequestTrialLicenseRequest mattermostRequestTrialLicenseRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/trial-license';

    // ignore: prefer_final_locals
    Object? postBody = mattermostRequestTrialLicenseRequest;

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

  /// Request and install a trial license for your server
  ///
  /// Request and install a trial license for your server __Minimum server version__: 5.25 ##### Permissions Must have `manage_system` permission.
  ///
  /// Parameters:
  ///
  /// * [MattermostRequestTrialLicenseRequest] mattermostRequestTrialLicenseRequest (required):
  ///   License request
  Future<void> requestTrialLicense(
    MattermostRequestTrialLicenseRequest mattermostRequestTrialLicenseRequest,
  ) async {
    final response = await requestTrialLicenseWithHttpInfo(
      mattermostRequestTrialLicenseRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Restart the system after an upgrade from Team Edition to Enterprise Edition
  ///
  /// It restarts the current running mattermost instance to execute the new Enterprise binary. __Minimum server version__: 5.27 ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> restartServerWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/restart';

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

  /// Restart the system after an upgrade from Team Edition to Enterprise Edition
  ///
  /// It restarts the current running mattermost instance to execute the new Enterprise binary. __Minimum server version__: 5.27 ##### Permissions Must have `manage_system` permission.
  Future<MattermostStatusOK?> restartServer() async {
    final response = await restartServerWithHttpInfo();
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

  /// Request trial license and acknowledge a warning of a metric status
  ///
  /// Request a trial license and acknowledge a warning for the warn_metric_id metric crossing a threshold (or some similar condition being fulfilled) - sets the \"ack\" status for all the warn metrics in the system.  __Minimum server version__: 5.28  ##### Permissions  Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] warnMetricId (required):
  ///   Warn Metric Id.
  Future<Response> sendTrialLicenseWarnMetricAckWithHttpInfo(
    String warnMetricId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/warn_metrics/trial-license-ack/{warn_metric_id}'.replaceAll('{warn_metric_id}', warnMetricId);

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

  /// Request trial license and acknowledge a warning of a metric status
  ///
  /// Request a trial license and acknowledge a warning for the warn_metric_id metric crossing a threshold (or some similar condition being fulfilled) - sets the \"ack\" status for all the warn metrics in the system.  __Minimum server version__: 5.28  ##### Permissions  Must have `manage_system` permission.
  ///
  /// Parameters:
  ///
  /// * [String] warnMetricId (required):
  ///   Warn Metric Id.
  Future<MattermostStatusOK?> sendTrialLicenseWarnMetricAck(
    String warnMetricId,
  ) async {
    final response = await sendTrialLicenseWarnMetricAckWithHttpInfo(
      warnMetricId,
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

  /// Acknowledge a warning of a metric status
  ///
  /// Acknowledge a warning for the warn_metric_id metric crossing a threshold (or some similar condition being fulfilled) - attempts to send an ack email to acknowledge@mattermost.com and sets the \"ack\" status for all the warn metrics in the system.  __Minimum server version__: 5.26  ##### Permissions  Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] warnMetricId (required):
  ///   Warn Metric Id.
  ///
  /// * [MattermostSendWarnMetricAckRequest] mattermostSendWarnMetricAckRequest (required):
  ///   payload that contains the ack flag
  Future<Response> sendWarnMetricAckWithHttpInfo(
    String warnMetricId,
    MattermostSendWarnMetricAckRequest mattermostSendWarnMetricAckRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/warn_metrics/ack/{warn_metric_id}'.replaceAll('{warn_metric_id}', warnMetricId);

    // ignore: prefer_final_locals
    Object? postBody = mattermostSendWarnMetricAckRequest;

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

  /// Acknowledge a warning of a metric status
  ///
  /// Acknowledge a warning for the warn_metric_id metric crossing a threshold (or some similar condition being fulfilled) - attempts to send an ack email to acknowledge@mattermost.com and sets the \"ack\" status for all the warn metrics in the system.  __Minimum server version__: 5.26  ##### Permissions  Must have `manage_system` permission.
  ///
  /// Parameters:
  ///
  /// * [String] warnMetricId (required):
  ///   Warn Metric Id.
  ///
  /// * [MattermostSendWarnMetricAckRequest] mattermostSendWarnMetricAckRequest (required):
  ///   payload that contains the ack flag
  Future<MattermostStatusOK?> sendWarnMetricAck(
    String warnMetricId,
    MattermostSendWarnMetricAckRequest mattermostSendWarnMetricAckRequest,
  ) async {
    final response = await sendWarnMetricAckWithHttpInfo(
      warnMetricId,
      mattermostSendWarnMetricAckRequest,
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

  /// Set the server busy (high load) flag
  ///
  /// Marks the server as currently having high load which disables non-critical services such as search, statuses and typing notifications.  __Minimum server version__: 5.20  ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] seconds:
  ///   Number of seconds until server is automatically marked as not busy.
  Future<Response> setServerBusyWithHttpInfo({
    String? seconds,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/server_busy';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (seconds != null) {
      queryParams.addAll(_queryParams('', 'seconds', seconds));
    }

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

  /// Set the server busy (high load) flag
  ///
  /// Marks the server as currently having high load which disables non-critical services such as search, statuses and typing notifications.  __Minimum server version__: 5.20  ##### Permissions Must have `manage_system` permission.
  ///
  /// Parameters:
  ///
  /// * [String] seconds:
  ///   Number of seconds until server is automatically marked as not busy.
  Future<MattermostStatusOK?> setServerBusy({
    String? seconds,
  }) async {
    final response = await setServerBusyWithHttpInfo(
      seconds: seconds,
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

  /// Send a test email
  ///
  /// Send a test email to make sure you have your email settings configured correctly. Optionally provide a configuration in the request body to test. If no valid configuration is present in the request body the current server configuration will be tested. ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MattermostConfig] mattermostConfig (required):
  ///   Mattermost configuration
  Future<Response> testEmailWithHttpInfo(
    MattermostConfig mattermostConfig,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/email/test';

    // ignore: prefer_final_locals
    Object? postBody = mattermostConfig;

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

  /// Send a test email
  ///
  /// Send a test email to make sure you have your email settings configured correctly. Optionally provide a configuration in the request body to test. If no valid configuration is present in the request body the current server configuration will be tested. ##### Permissions Must have `manage_system` permission.
  ///
  /// Parameters:
  ///
  /// * [MattermostConfig] mattermostConfig (required):
  ///   Mattermost configuration
  Future<MattermostStatusOK?> testEmail(
    MattermostConfig mattermostConfig,
  ) async {
    final response = await testEmailWithHttpInfo(
      mattermostConfig,
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

  /// Test AWS S3 connection
  ///
  /// Send a test to validate if can connect to AWS S3. Optionally provide a configuration in the request body to test. If no valid configuration is present in the request body the current server configuration will be tested. ##### Permissions Must have `manage_system` permission. __Minimum server version__: 4.8
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MattermostConfig] mattermostConfig (required):
  ///   Mattermost configuration
  Future<Response> testS3ConnectionWithHttpInfo(
    MattermostConfig mattermostConfig,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/file/s3_test';

    // ignore: prefer_final_locals
    Object? postBody = mattermostConfig;

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

  /// Test AWS S3 connection
  ///
  /// Send a test to validate if can connect to AWS S3. Optionally provide a configuration in the request body to test. If no valid configuration is present in the request body the current server configuration will be tested. ##### Permissions Must have `manage_system` permission. __Minimum server version__: 4.8
  ///
  /// Parameters:
  ///
  /// * [MattermostConfig] mattermostConfig (required):
  ///   Mattermost configuration
  Future<MattermostStatusOK?> testS3Connection(
    MattermostConfig mattermostConfig,
  ) async {
    final response = await testS3ConnectionWithHttpInfo(
      mattermostConfig,
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

  /// Checks the validity of a Site URL
  ///
  /// Sends a Ping request to the mattermost server using the specified Site URL.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.16
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MattermostTestSiteURLRequest] mattermostTestSiteURLRequest (required):
  Future<Response> testSiteURLWithHttpInfo(
    MattermostTestSiteURLRequest mattermostTestSiteURLRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/site_url/test';

    // ignore: prefer_final_locals
    Object? postBody = mattermostTestSiteURLRequest;

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

  /// Checks the validity of a Site URL
  ///
  /// Sends a Ping request to the mattermost server using the specified Site URL.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.16
  ///
  /// Parameters:
  ///
  /// * [MattermostTestSiteURLRequest] mattermostTestSiteURLRequest (required):
  Future<MattermostStatusOK?> testSiteURL(
    MattermostTestSiteURLRequest mattermostTestSiteURLRequest,
  ) async {
    final response = await testSiteURLWithHttpInfo(
      mattermostTestSiteURLRequest,
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

  /// Get last trial license used
  ///
  /// Get the last trial license used on the sevrer __Minimum server version__: 5.36 ##### Permissions Must have `manage_systems` permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> trialLicensePrevGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/trial-license/prev';

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

  /// Get last trial license used
  ///
  /// Get the last trial license used on the sevrer __Minimum server version__: 5.36 ##### Permissions Must have `manage_systems` permissions.
  Future<void> trialLicensePrevGet() async {
    final response = await trialLicensePrevGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update configuration
  ///
  /// Submit a new configuration for the server to use. As of server version 4.8, the `PluginSettings.EnableUploads` setting cannot be modified by this endpoint. Note that the parameters that aren't set in the configuration that you provide will be reset to default values. Therefore, if you want to change a configuration parameter and leave the other ones unchanged, you need to get the existing configuration first, change the field that you want, then put that new configuration. ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MattermostConfig] mattermostConfig (required):
  ///   Mattermost configuration
  Future<Response> updateConfigWithHttpInfo(
    MattermostConfig mattermostConfig,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/config';

    // ignore: prefer_final_locals
    Object? postBody = mattermostConfig;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update configuration
  ///
  /// Submit a new configuration for the server to use. As of server version 4.8, the `PluginSettings.EnableUploads` setting cannot be modified by this endpoint. Note that the parameters that aren't set in the configuration that you provide will be reset to default values. Therefore, if you want to change a configuration parameter and leave the other ones unchanged, you need to get the existing configuration first, change the field that you want, then put that new configuration. ##### Permissions Must have `manage_system` permission.
  ///
  /// Parameters:
  ///
  /// * [MattermostConfig] mattermostConfig (required):
  ///   Mattermost configuration
  Future<MattermostConfig?> updateConfig(
    MattermostConfig mattermostConfig,
  ) async {
    final response = await updateConfigWithHttpInfo(
      mattermostConfig,
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
        'MattermostConfig',
      ) as MattermostConfig;
    }
    return null;
  }

  /// Stores that the Plugin Marketplace has been visited by at least an admin.
  ///
  /// Stores the system-level status that specifies that at least an admin has visited the in-product Plugin Marketplace. __Minimum server version: 5.33__ ##### Permissions Must have `manage_system` permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MattermostSystem] mattermostSystem (required):
  Future<Response> updateMarketplaceVisitedByAdminWithHttpInfo(
    MattermostSystem mattermostSystem,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/plugins/marketplace/first_admin_visit';

    // ignore: prefer_final_locals
    Object? postBody = mattermostSystem;

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

  /// Stores that the Plugin Marketplace has been visited by at least an admin.
  ///
  /// Stores the system-level status that specifies that at least an admin has visited the in-product Plugin Marketplace. __Minimum server version: 5.33__ ##### Permissions Must have `manage_system` permissions.
  ///
  /// Parameters:
  ///
  /// * [MattermostSystem] mattermostSystem (required):
  Future<MattermostStatusOK?> updateMarketplaceVisitedByAdmin(
    MattermostSystem mattermostSystem,
  ) async {
    final response = await updateMarketplaceVisitedByAdminWithHttpInfo(
      mattermostSystem,
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

  /// Executes an inplace upgrade from Team Edition to Enterprise Edition
  ///
  /// It downloads the Mattermost Enterprise Edition of your current version and replace your current version with it. After the upgrade you need to restart the Mattermost server. __Minimum server version__: 5.27 ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> upgradeToEnterpriseWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/upgrade_to_enterprise';

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

  /// Executes an inplace upgrade from Team Edition to Enterprise Edition
  ///
  /// It downloads the Mattermost Enterprise Edition of your current version and replace your current version with it. After the upgrade you need to restart the Mattermost server. __Minimum server version__: 5.27 ##### Permissions Must have `manage_system` permission.
  Future<MattermostPushNotification?> upgradeToEnterprise() async {
    final response = await upgradeToEnterpriseWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MattermostPushNotification',
      ) as MattermostPushNotification;
    }
    return null;
  }

  /// Get the current status for the inplace upgrade from Team Edition to Enterprise Edition
  ///
  /// It returns the percentage of completion of the current upgrade or the error if there is any. __Minimum server version__: 5.27 ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> upgradeToEnterpriseStatusWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/upgrade_to_enterprise/status';

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

  /// Get the current status for the inplace upgrade from Team Edition to Enterprise Edition
  ///
  /// It returns the percentage of completion of the current upgrade or the error if there is any. __Minimum server version__: 5.27 ##### Permissions Must have `manage_system` permission.
  Future<MattermostUpgradeToEnterpriseStatus200Response?> upgradeToEnterpriseStatus() async {
    final response = await upgradeToEnterpriseStatusWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MattermostUpgradeToEnterpriseStatus200Response',
      ) as MattermostUpgradeToEnterpriseStatus200Response;
    }
    return null;
  }

  /// Upload license file
  ///
  /// Upload a license to enable enterprise features.  __Minimum server version__: 4.0  ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] license (required):
  ///   The license to be uploaded
  Future<Response> uploadLicenseFileWithHttpInfo(
    MultipartFile license,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/license';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (license != null) {
      hasFields = true;
      mp.fields[r'license'] = license.field;
      mp.files.add(license);
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

  /// Upload license file
  ///
  /// Upload a license to enable enterprise features.  __Minimum server version__: 4.0  ##### Permissions Must have `manage_system` permission.
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] license (required):
  ///   The license to be uploaded
  Future<MattermostStatusOK?> uploadLicenseFile(
    MultipartFile license,
  ) async {
    final response = await uploadLicenseFileWithHttpInfo(
      license,
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
}
