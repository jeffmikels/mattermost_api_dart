# mattermost_api.api.PluginsApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**disablePlugin**](PluginsApi.md#disableplugin) | **POST** /plugins/{plugin_id}/disable | Disable plugin
[**enablePlugin**](PluginsApi.md#enableplugin) | **POST** /plugins/{plugin_id}/enable | Enable plugin
[**getMarketplacePlugins**](PluginsApi.md#getmarketplaceplugins) | **GET** /plugins/marketplace | Gets all the marketplace plugins
[**getMarketplaceVisitedByAdmin**](PluginsApi.md#getmarketplacevisitedbyadmin) | **GET** /plugins/marketplace/first_admin_visit | Get if the Plugin Marketplace has been visited by at least an admin.
[**getPluginStatuses**](PluginsApi.md#getpluginstatuses) | **GET** /plugins/statuses | Get plugins status
[**getPlugins**](PluginsApi.md#getplugins) | **GET** /plugins | Get plugins
[**getWebappPlugins**](PluginsApi.md#getwebappplugins) | **GET** /plugins/webapp | Get webapp plugins
[**installMarketplacePlugin**](PluginsApi.md#installmarketplaceplugin) | **POST** /plugins/marketplace | Installs a marketplace plugin
[**installPluginFromUrl**](PluginsApi.md#installpluginfromurl) | **POST** /plugins/install_from_url | Install plugin from url
[**removePlugin**](PluginsApi.md#removeplugin) | **DELETE** /plugins/{plugin_id} | Remove plugin
[**uploadPlugin**](PluginsApi.md#uploadplugin) | **POST** /plugins | Upload plugin


# **disablePlugin**
> StatusOK disablePlugin(pluginId)

Disable plugin

Disable a previously enabled plugin. Plugins must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.4 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PluginsApi();
final pluginId = pluginId_example; // String | 

try {
    final result = api_instance.disablePlugin(pluginId);
    print(result);
} catch (e) {
    print('Exception when calling PluginsApi->disablePlugin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pluginId** | **String**|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enablePlugin**
> StatusOK enablePlugin(pluginId)

Enable plugin

Enable a previously uploaded plugin. Plugins must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.4 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PluginsApi();
final pluginId = pluginId_example; // String | 

try {
    final result = api_instance.enablePlugin(pluginId);
    print(result);
} catch (e) {
    print('Exception when calling PluginsApi->enablePlugin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pluginId** | **String**|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMarketplacePlugins**
> List<MarketplacePlugin> getMarketplacePlugins(page, perPage, filter, serverVersion, localOnly)

Gets all the marketplace plugins

Gets all plugins from the marketplace server, merging data from locally installed plugins as well as prepackaged plugins shipped with the server.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.16 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PluginsApi();
final page = 56; // int | Page number to be fetched. (not yet implemented)
final perPage = 56; // int | Number of item per page. (not yet implemented)
final filter = filter_example; // String | Set to filter plugins by ID, name, or description.
final serverVersion = serverVersion_example; // String | Set to filter minimum plugin server version. (not yet implemented)
final localOnly = true; // bool | Set true to only retrieve local plugins.

try {
    final result = api_instance.getMarketplacePlugins(page, perPage, filter, serverVersion, localOnly);
    print(result);
} catch (e) {
    print('Exception when calling PluginsApi->getMarketplacePlugins: $e\n');
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

[**List<MarketplacePlugin>**](MarketplacePlugin.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMarketplaceVisitedByAdmin**
> System getMarketplaceVisitedByAdmin()

Get if the Plugin Marketplace has been visited by at least an admin.

Retrieves the status that specifies that at least one System Admin has visited the in-product Plugin Marketplace. __Minimum server version: 5.33__ ##### Permissions Must have `manage_system` permissions. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PluginsApi();

try {
    final result = api_instance.getMarketplaceVisitedByAdmin();
    print(result);
} catch (e) {
    print('Exception when calling PluginsApi->getMarketplaceVisitedByAdmin: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**System**](System.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPluginStatuses**
> List<PluginStatus> getPluginStatuses()

Get plugins status

Returns the status for plugins installed anywhere in the cluster  ##### Permissions No permissions required.  __Minimum server version__: 4.4 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PluginsApi();

try {
    final result = api_instance.getPluginStatuses();
    print(result);
} catch (e) {
    print('Exception when calling PluginsApi->getPluginStatuses: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<PluginStatus>**](PluginStatus.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlugins**
> GetPlugins200Response getPlugins()

Get plugins

Get a list of inactive and a list of active plugin manifests. Plugins must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.4 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PluginsApi();

try {
    final result = api_instance.getPlugins();
    print(result);
} catch (e) {
    print('Exception when calling PluginsApi->getPlugins: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetPlugins200Response**](GetPlugins200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWebappPlugins**
> List<PluginManifestWebapp> getWebappPlugins()

Get webapp plugins

Get a list of web app plugins installed and activated on the server.  ##### Permissions No permissions required.  __Minimum server version__: 4.4 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PluginsApi();

try {
    final result = api_instance.getWebappPlugins();
    print(result);
} catch (e) {
    print('Exception when calling PluginsApi->getWebappPlugins: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<PluginManifestWebapp>**](PluginManifestWebapp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **installMarketplacePlugin**
> PluginManifest installMarketplacePlugin(installMarketplacePluginRequest)

Installs a marketplace plugin

Installs a plugin listed in the marketplace server.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.16 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PluginsApi();
final installMarketplacePluginRequest = InstallMarketplacePluginRequest(); // InstallMarketplacePluginRequest | The metadata identifying the plugin to install.

try {
    final result = api_instance.installMarketplacePlugin(installMarketplacePluginRequest);
    print(result);
} catch (e) {
    print('Exception when calling PluginsApi->installMarketplacePlugin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **installMarketplacePluginRequest** | [**InstallMarketplacePluginRequest**](InstallMarketplacePluginRequest.md)| The metadata identifying the plugin to install. | 

### Return type

[**PluginManifest**](PluginManifest.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **installPluginFromUrl**
> StatusOK installPluginFromUrl(pluginDownloadUrl, force)

Install plugin from url

Supply a URL to a plugin compressed in a .tar.gz file. Plugins must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.14 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PluginsApi();
final pluginDownloadUrl = pluginDownloadUrl_example; // String | URL used to download the plugin
final force = force_example; // String | Set to 'true' to overwrite a previously installed plugin with the same ID, if any

try {
    final result = api_instance.installPluginFromUrl(pluginDownloadUrl, force);
    print(result);
} catch (e) {
    print('Exception when calling PluginsApi->installPluginFromUrl: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pluginDownloadUrl** | **String**| URL used to download the plugin | 
 **force** | **String**| Set to 'true' to overwrite a previously installed plugin with the same ID, if any | [optional] 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removePlugin**
> StatusOK removePlugin(pluginId)

Remove plugin

Remove the plugin with the provided ID from the server. All plugin files are deleted. Plugins must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.4 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PluginsApi();
final pluginId = pluginId_example; // String | 

try {
    final result = api_instance.removePlugin(pluginId);
    print(result);
} catch (e) {
    print('Exception when calling PluginsApi->removePlugin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pluginId** | **String**|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadPlugin**
> StatusOK uploadPlugin(plugin, force)

Upload plugin

Upload a plugin that is contained within a compressed .tar.gz file. Plugins and plugin uploads must be enabled in the server's config settings.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.4 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PluginsApi();
final plugin = BINARY_DATA_HERE; // MultipartFile | The plugin image to be uploaded
final force = force_example; // String | Set to 'true' to overwrite a previously installed plugin with the same ID, if any

try {
    final result = api_instance.uploadPlugin(plugin, force);
    print(result);
} catch (e) {
    print('Exception when calling PluginsApi->uploadPlugin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plugin** | **MultipartFile**| The plugin image to be uploaded | 
 **force** | **String**| Set to 'true' to overwrite a previously installed plugin with the same ID, if any | [optional] 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

