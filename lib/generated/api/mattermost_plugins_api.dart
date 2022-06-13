//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostPluginsApi {
  MattermostPluginsApi([MattermostApiClient? apiClient]) : apiClient = apiClient ?? defaultMattermostApiClient;

  final MattermostApiClient apiClient;

  /// Disable plugin
  ///
  /// Disable a previously enabled plugin. Plugins must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.4
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] pluginId (required):
  Future<Response> disablePluginWithHttpInfo(
    String pluginId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/plugins/{plugin_id}/disable'.replaceAll('{plugin_id}', pluginId);

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

  /// Disable plugin
  ///
  /// Disable a previously enabled plugin. Plugins must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.4
  ///
  /// Parameters:
  ///
  /// * [String] pluginId (required):
  Future<MattermostStatusOK?> disablePlugin(
    String pluginId,
  ) async {
    final response = await disablePluginWithHttpInfo(
      pluginId,
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

  /// Enable plugin
  ///
  /// Enable a previously uploaded plugin. Plugins must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.4
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] pluginId (required):
  Future<Response> enablePluginWithHttpInfo(
    String pluginId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/plugins/{plugin_id}/enable'.replaceAll('{plugin_id}', pluginId);

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

  /// Enable plugin
  ///
  /// Enable a previously uploaded plugin. Plugins must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.4
  ///
  /// Parameters:
  ///
  /// * [String] pluginId (required):
  Future<MattermostStatusOK?> enablePlugin(
    String pluginId,
  ) async {
    final response = await enablePluginWithHttpInfo(
      pluginId,
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

  /// Gets all the marketplace plugins
  ///
  /// Gets all plugins from the marketplace server, merging data from locally installed plugins as well as prepackaged plugins shipped with the server.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.16
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Page number to be fetched. (not yet implemented)
  ///
  /// * [int] perPage:
  ///   Number of item per page. (not yet implemented)
  ///
  /// * [String] filter:
  ///   Set to filter plugins by ID, name, or description.
  ///
  /// * [String] serverVersion:
  ///   Set to filter minimum plugin server version. (not yet implemented)
  ///
  /// * [bool] localOnly:
  ///   Set true to only retrieve local plugins.
  Future<Response> getMarketplacePluginsWithHttpInfo({
    int? page,
    int? perPage,
    String? filter,
    String? serverVersion,
    bool? localOnly,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/plugins/marketplace';

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
    if (filter != null) {
      queryParams.addAll(_queryParams('', 'filter', filter));
    }
    if (serverVersion != null) {
      queryParams.addAll(_queryParams('', 'server_version', serverVersion));
    }
    if (localOnly != null) {
      queryParams.addAll(_queryParams('', 'local_only', localOnly));
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

  /// Gets all the marketplace plugins
  ///
  /// Gets all plugins from the marketplace server, merging data from locally installed plugins as well as prepackaged plugins shipped with the server.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.16
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Page number to be fetched. (not yet implemented)
  ///
  /// * [int] perPage:
  ///   Number of item per page. (not yet implemented)
  ///
  /// * [String] filter:
  ///   Set to filter plugins by ID, name, or description.
  ///
  /// * [String] serverVersion:
  ///   Set to filter minimum plugin server version. (not yet implemented)
  ///
  /// * [bool] localOnly:
  ///   Set true to only retrieve local plugins.
  Future<List<MattermostMarketplacePlugin>?> getMarketplacePlugins({
    int? page,
    int? perPage,
    String? filter,
    String? serverVersion,
    bool? localOnly,
  }) async {
    final response = await getMarketplacePluginsWithHttpInfo(
      page: page,
      perPage: perPage,
      filter: filter,
      serverVersion: serverVersion,
      localOnly: localOnly,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MattermostMarketplacePlugin>') as List)
          .cast<MattermostMarketplacePlugin>()
          .toList();
    }
    return null;
  }

  /// Get if the Plugin Marketplace has been visited by at least an admin.
  ///
  /// Retrieves the status that specifies that at least one System Admin has visited the in-product Plugin Marketplace. __Minimum server version: 5.33__ ##### Permissions Must have `manage_system` permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMarketplaceVisitedByAdminWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/plugins/marketplace/first_admin_visit';

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

  /// Get if the Plugin Marketplace has been visited by at least an admin.
  ///
  /// Retrieves the status that specifies that at least one System Admin has visited the in-product Plugin Marketplace. __Minimum server version: 5.33__ ##### Permissions Must have `manage_system` permissions.
  Future<MattermostSystem?> getMarketplaceVisitedByAdmin() async {
    final response = await getMarketplaceVisitedByAdminWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MattermostSystem',
      ) as MattermostSystem;
    }
    return null;
  }

  /// Get plugins status
  ///
  /// Returns the status for plugins installed anywhere in the cluster  ##### Permissions No permissions required.  __Minimum server version__: 4.4
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPluginStatusesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/plugins/statuses';

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

  /// Get plugins status
  ///
  /// Returns the status for plugins installed anywhere in the cluster  ##### Permissions No permissions required.  __Minimum server version__: 4.4
  Future<List<MattermostPluginStatus>?> getPluginStatuses() async {
    final response = await getPluginStatusesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MattermostPluginStatus>') as List)
          .cast<MattermostPluginStatus>()
          .toList();
    }
    return null;
  }

  /// Get plugins
  ///
  /// Get a list of inactive and a list of active plugin manifests. Plugins must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.4
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPluginsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/plugins';

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

  /// Get plugins
  ///
  /// Get a list of inactive and a list of active plugin manifests. Plugins must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.4
  Future<MattermostGetPlugins200Response?> getPlugins() async {
    final response = await getPluginsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MattermostGetPlugins200Response',
      ) as MattermostGetPlugins200Response;
    }
    return null;
  }

  /// Get webapp plugins
  ///
  /// Get a list of web app plugins installed and activated on the server.  ##### Permissions No permissions required.  __Minimum server version__: 4.4
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getWebappPluginsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/plugins/webapp';

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

  /// Get webapp plugins
  ///
  /// Get a list of web app plugins installed and activated on the server.  ##### Permissions No permissions required.  __Minimum server version__: 4.4
  Future<List<MattermostPluginManifestWebapp>?> getWebappPlugins() async {
    final response = await getWebappPluginsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MattermostPluginManifestWebapp>') as List)
          .cast<MattermostPluginManifestWebapp>()
          .toList();
    }
    return null;
  }

  /// Installs a marketplace plugin
  ///
  /// Installs a plugin listed in the marketplace server.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.16
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MattermostInstallMarketplacePluginRequest] mattermostInstallMarketplacePluginRequest (required):
  ///   The metadata identifying the plugin to install.
  Future<Response> installMarketplacePluginWithHttpInfo(
    MattermostInstallMarketplacePluginRequest mattermostInstallMarketplacePluginRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/plugins/marketplace';

    // ignore: prefer_final_locals
    Object? postBody = mattermostInstallMarketplacePluginRequest;

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

  /// Installs a marketplace plugin
  ///
  /// Installs a plugin listed in the marketplace server.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.16
  ///
  /// Parameters:
  ///
  /// * [MattermostInstallMarketplacePluginRequest] mattermostInstallMarketplacePluginRequest (required):
  ///   The metadata identifying the plugin to install.
  Future<MattermostPluginManifest?> installMarketplacePlugin(
    MattermostInstallMarketplacePluginRequest mattermostInstallMarketplacePluginRequest,
  ) async {
    final response = await installMarketplacePluginWithHttpInfo(
      mattermostInstallMarketplacePluginRequest,
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
        'MattermostPluginManifest',
      ) as MattermostPluginManifest;
    }
    return null;
  }

  /// Install plugin from url
  ///
  /// Supply a URL to a plugin compressed in a .tar.gz file. Plugins must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.14
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] pluginDownloadUrl (required):
  ///   URL used to download the plugin
  ///
  /// * [String] force:
  ///   Set to 'true' to overwrite a previously installed plugin with the same ID, if any
  Future<Response> installPluginFromUrlWithHttpInfo(
    String pluginDownloadUrl, {
    String? force,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/plugins/install_from_url';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'plugin_download_url', pluginDownloadUrl));
    if (force != null) {
      queryParams.addAll(_queryParams('', 'force', force));
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

  /// Install plugin from url
  ///
  /// Supply a URL to a plugin compressed in a .tar.gz file. Plugins must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.14
  ///
  /// Parameters:
  ///
  /// * [String] pluginDownloadUrl (required):
  ///   URL used to download the plugin
  ///
  /// * [String] force:
  ///   Set to 'true' to overwrite a previously installed plugin with the same ID, if any
  Future<MattermostStatusOK?> installPluginFromUrl(
    String pluginDownloadUrl, {
    String? force,
  }) async {
    final response = await installPluginFromUrlWithHttpInfo(
      pluginDownloadUrl,
      force: force,
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

  /// Remove plugin
  ///
  /// Remove the plugin with the provided ID from the server. All plugin files are deleted. Plugins must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.4
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] pluginId (required):
  Future<Response> removePluginWithHttpInfo(
    String pluginId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/plugins/{plugin_id}'.replaceAll('{plugin_id}', pluginId);

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

  /// Remove plugin
  ///
  /// Remove the plugin with the provided ID from the server. All plugin files are deleted. Plugins must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.4
  ///
  /// Parameters:
  ///
  /// * [String] pluginId (required):
  Future<MattermostStatusOK?> removePlugin(
    String pluginId,
  ) async {
    final response = await removePluginWithHttpInfo(
      pluginId,
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

  /// Upload plugin
  ///
  /// Upload a plugin that is contained within a compressed .tar.gz file. Plugins and plugin uploads must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.4
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] plugin (required):
  ///   The plugin image to be uploaded
  ///
  /// * [String] force:
  ///   Set to 'true' to overwrite a previously installed plugin with the same ID, if any
  Future<Response> uploadPluginWithHttpInfo(
    MultipartFile plugin, {
    String? force,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/plugins';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (plugin != null) {
      hasFields = true;
      mp.fields[r'plugin'] = plugin.field;
      mp.files.add(plugin);
    }
    if (force != null) {
      hasFields = true;
      mp.fields[r'force'] = parameterToString(force);
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

  /// Upload plugin
  ///
  /// Upload a plugin that is contained within a compressed .tar.gz file. Plugins and plugin uploads must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.4
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] plugin (required):
  ///   The plugin image to be uploaded
  ///
  /// * [String] force:
  ///   Set to 'true' to overwrite a previously installed plugin with the same ID, if any
  Future<MattermostStatusOK?> uploadPlugin(
    MultipartFile plugin, {
    String? force,
  }) async {
    final response = await uploadPluginWithHttpInfo(
      plugin,
      force: force,
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
