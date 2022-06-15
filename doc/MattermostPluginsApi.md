# mattermost_api.api.MattermostPluginsApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**disablePlugin**](MattermostPluginsApi.md#disableplugin) | **POST** /plugins/{plugin_id}/disable | Disable plugin
[**enablePlugin**](MattermostPluginsApi.md#enableplugin) | **POST** /plugins/{plugin_id}/enable | Enable plugin
[**getMarketplacePlugins**](MattermostPluginsApi.md#getmarketplaceplugins) | **GET** /plugins/marketplace | Gets all the marketplace plugins
[**getMarketplaceVisitedByAdmin**](MattermostPluginsApi.md#getmarketplacevisitedbyadmin) | **GET** /plugins/marketplace/first_admin_visit | Get if the Plugin Marketplace has been visited by at least an admin.
[**getPluginStatuses**](MattermostPluginsApi.md#getpluginstatuses) | **GET** /plugins/statuses | Get plugins status
[**getPlugins**](MattermostPluginsApi.md#getplugins) | **GET** /plugins | Get plugins
[**getWebappPlugins**](MattermostPluginsApi.md#getwebappplugins) | **GET** /plugins/webapp | Get webapp plugins
[**installMarketplacePlugin**](MattermostPluginsApi.md#installmarketplaceplugin) | **POST** /plugins/marketplace | Installs a marketplace plugin
[**installPluginFromUrl**](MattermostPluginsApi.md#installpluginfromurl) | **POST** /plugins/install_from_url | Install plugin from url
[**removePlugin**](MattermostPluginsApi.md#removeplugin) | **DELETE** /plugins/{plugin_id} | Remove plugin
[**uploadPlugin**](MattermostPluginsApi.md#uploadplugin) | **POST** /plugins | Upload plugin


# **disablePlugin**
> MattermostStatusOK disablePlugin(pluginId)

Disable plugin

Disable a previously enabled plugin. Plugins must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.4 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final String pluginId = 'pluginId_example'; // String | 

try {
  final result = await client.plugins.disablePlugin(pluginId);
  print(result);
} catch (e) {
  print('Exception when calling MattermostPluginsApi->disablePlugin: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pluginId** | **String**|  | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **enablePlugin**
> MattermostStatusOK enablePlugin(pluginId)

Enable plugin

Enable a previously uploaded plugin. Plugins must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.4 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final String pluginId = 'pluginId_example'; // String | 

try {
  final result = await client.plugins.enablePlugin(pluginId);
  print(result);
} catch (e) {
  print('Exception when calling MattermostPluginsApi->enablePlugin: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pluginId** | **String**|  | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getMarketplacePlugins**
> List<MattermostMarketplacePlugin> getMarketplacePlugins(page, perPage, filter, serverVersion, localOnly)

Gets all the marketplace plugins

Gets all plugins from the marketplace server, merging data from locally installed plugins as well as prepackaged plugins shipped with the server.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.16 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final int page = 56; // int | Page number to be fetched. (not yet implemented)
final int perPage = 56; // int | Number of item per page. (not yet implemented)
final String filter = 'filter_example'; // String | Set to filter plugins by ID, name, or description.
final String serverVersion = 'serverVersion_example'; // String | Set to filter minimum plugin server version. (not yet implemented)
final bool localOnly = true; // bool | Set true to only retrieve local plugins.

try {
  final result = await client.plugins.getMarketplacePlugins(page, perPage, filter, serverVersion, localOnly);
  print(result);
} catch (e) {
  print('Exception when calling MattermostPluginsApi->getMarketplacePlugins: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number to be fetched. (not yet implemented) | [optional] 
 **perPage** | **int**| Number of item per page. (not yet implemented) | [optional] 
 **filter** | **String**| Set to filter plugins by ID, name, or description. | [optional] 
 **serverVersion** | **String**| Set to filter minimum plugin server version. (not yet implemented) | [optional] 
 **localOnly** | **bool**| Set true to only retrieve local plugins. | [optional] 

### Return type

[**List<MattermostMarketplacePlugin>**](MattermostMarketplacePlugin.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getMarketplaceVisitedByAdmin**
> MattermostSystem getMarketplaceVisitedByAdmin()

Get if the Plugin Marketplace has been visited by at least an admin.

Retrieves the status that specifies that at least one System Admin has visited the in-product Plugin Marketplace. __Minimum server version: 5.33__ ##### Permissions Must have `manage_system` permissions. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final result = await client.plugins.getMarketplaceVisitedByAdmin();
  print(result);
} catch (e) {
  print('Exception when calling MattermostPluginsApi->getMarketplaceVisitedByAdmin: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostSystem**](MattermostSystem.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getPluginStatuses**
> List<MattermostPluginStatus> getPluginStatuses()

Get plugins status

Returns the status for plugins installed anywhere in the cluster  ##### Permissions No permissions required.  __Minimum server version__: 4.4 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final result = await client.plugins.getPluginStatuses();
  print(result);
} catch (e) {
  print('Exception when calling MattermostPluginsApi->getPluginStatuses: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<MattermostPluginStatus>**](MattermostPluginStatus.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getPlugins**
> MattermostGetPlugins200Response getPlugins()

Get plugins

Get a list of inactive and a list of active plugin manifests. Plugins must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.4 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final result = await client.plugins.getPlugins();
  print(result);
} catch (e) {
  print('Exception when calling MattermostPluginsApi->getPlugins: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostGetPlugins200Response**](MattermostGetPlugins200Response.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getWebappPlugins**
> List<MattermostPluginManifestWebapp> getWebappPlugins()

Get webapp plugins

Get a list of web app plugins installed and activated on the server.  ##### Permissions No permissions required.  __Minimum server version__: 4.4 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final result = await client.plugins.getWebappPlugins();
  print(result);
} catch (e) {
  print('Exception when calling MattermostPluginsApi->getWebappPlugins: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<MattermostPluginManifestWebapp>**](MattermostPluginManifestWebapp.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **installMarketplacePlugin**
> MattermostPluginManifest installMarketplacePlugin(mattermostInstallMarketplacePluginRequest)

Installs a marketplace plugin

Installs a plugin listed in the marketplace server.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.16 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final MattermostInstallMarketplacePluginRequest mattermostInstallMarketplacePluginRequest = MattermostInstallMarketplacePluginRequest(); // MattermostInstallMarketplacePluginRequest | The metadata identifying the plugin to install.

try {
  final result = await client.plugins.installMarketplacePlugin(mattermostInstallMarketplacePluginRequest);
  print(result);
} catch (e) {
  print('Exception when calling MattermostPluginsApi->installMarketplacePlugin: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostInstallMarketplacePluginRequest** | [**MattermostInstallMarketplacePluginRequest**](MattermostInstallMarketplacePluginRequest.md)| The metadata identifying the plugin to install. | 

### Return type

[**MattermostPluginManifest**](MattermostPluginManifest.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **installPluginFromUrl**
> MattermostStatusOK installPluginFromUrl(pluginDownloadUrl, force)

Install plugin from url

Supply a URL to a plugin compressed in a .tar.gz file. Plugins must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.14 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final String pluginDownloadUrl = 'pluginDownloadUrl_example'; // String | URL used to download the plugin
final String force = 'force_example'; // String | Set to 'true' to overwrite a previously installed plugin with the same ID, if any

try {
  final result = await client.plugins.installPluginFromUrl(pluginDownloadUrl, force);
  print(result);
} catch (e) {
  print('Exception when calling MattermostPluginsApi->installPluginFromUrl: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pluginDownloadUrl** | **String**| URL used to download the plugin | 
 **force** | **String**| Set to 'true' to overwrite a previously installed plugin with the same ID, if any | [optional] 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **removePlugin**
> MattermostStatusOK removePlugin(pluginId)

Remove plugin

Remove the plugin with the provided ID from the server. All plugin files are deleted. Plugins must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.4 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final String pluginId = 'pluginId_example'; // String | 

try {
  final result = await client.plugins.removePlugin(pluginId);
  print(result);
} catch (e) {
  print('Exception when calling MattermostPluginsApi->removePlugin: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pluginId** | **String**|  | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **uploadPlugin**
> MattermostStatusOK uploadPlugin(plugin, force)

Upload plugin

Upload a plugin that is contained within a compressed .tar.gz file. Plugins and plugin uploads must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.4 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final MultipartFile plugin = BINARY_DATA_HERE; // MultipartFile | The plugin image to be uploaded
final String force = 'force_example'; // String | Set to 'true' to overwrite a previously installed plugin with the same ID, if any

try {
  final result = await client.plugins.uploadPlugin(plugin, force);
  print(result);
} catch (e) {
  print('Exception when calling MattermostPluginsApi->uploadPlugin: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plugin** | **MultipartFile**| The plugin image to be uploaded | 
 **force** | **String**| Set to 'true' to overwrite a previously installed plugin with the same ID, if any | [optional] 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

