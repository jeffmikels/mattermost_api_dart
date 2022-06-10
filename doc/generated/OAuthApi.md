# mattermost_api.api.OAuthApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOAuthApp**](OAuthApi.md#createoauthapp) | **POST** /oauth/apps | Register OAuth app
[**deleteOAuthApp**](OAuthApi.md#deleteoauthapp) | **DELETE** /oauth/apps/{app_id} | Delete an OAuth app
[**getAuthorizedOAuthAppsForUser**](OAuthApi.md#getauthorizedoauthappsforuser) | **GET** /users/{user_id}/oauth/apps/authorized | Get authorized OAuth apps
[**getOAuthApp**](OAuthApi.md#getoauthapp) | **GET** /oauth/apps/{app_id} | Get an OAuth app
[**getOAuthAppInfo**](OAuthApi.md#getoauthappinfo) | **GET** /oauth/apps/{app_id}/info | Get info on an OAuth app
[**getOAuthApps**](OAuthApi.md#getoauthapps) | **GET** /oauth/apps | Get OAuth apps
[**regenerateOAuthAppSecret**](OAuthApi.md#regenerateoauthappsecret) | **POST** /oauth/apps/{app_id}/regen_secret | Regenerate OAuth app secret
[**updateOAuthApp**](OAuthApi.md#updateoauthapp) | **PUT** /oauth/apps/{app_id} | Update an OAuth app


# **createOAuthApp**
> OAuthApp createOAuthApp(createOAuthAppRequest)

Register OAuth app

Register an OAuth 2.0 client application with Mattermost as the service provider. ##### Permissions Must have `manage_oauth` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OAuthApi();
final createOAuthAppRequest = CreateOAuthAppRequest(); // CreateOAuthAppRequest | OAuth application to register

try {
    final result = api_instance.createOAuthApp(createOAuthAppRequest);
    print(result);
} catch (e) {
    print('Exception when calling OAuthApi->createOAuthApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createOAuthAppRequest** | [**CreateOAuthAppRequest**](CreateOAuthAppRequest.md)| OAuth application to register | 

### Return type

[**OAuthApp**](OAuthApp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOAuthApp**
> StatusOK deleteOAuthApp(appId)

Delete an OAuth app

Delete and unregister an OAuth 2.0 client application  ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OAuthApi();
final appId = appId_example; // String | Application client id

try {
    final result = api_instance.deleteOAuthApp(appId);
    print(result);
} catch (e) {
    print('Exception when calling OAuthApi->deleteOAuthApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Application client id | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuthorizedOAuthAppsForUser**
> List<OAuthApp> getAuthorizedOAuthAppsForUser(userId, page, perPage)

Get authorized OAuth apps

Get a page of OAuth 2.0 client applications authorized to access a user's account. ##### Permissions Must be authenticated as the user or have `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OAuthApi();
final userId = userId_example; // String | User GUID
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of apps per page.

try {
    final result = api_instance.getAuthorizedOAuthAppsForUser(userId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling OAuthApi->getAuthorizedOAuthAppsForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of apps per page. | [optional] [default to 60]

### Return type

[**List<OAuthApp>**](OAuthApp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOAuthApp**
> OAuthApp getOAuthApp(appId)

Get an OAuth app

Get an OAuth 2.0 client application registered with Mattermost. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OAuthApi();
final appId = appId_example; // String | Application client id

try {
    final result = api_instance.getOAuthApp(appId);
    print(result);
} catch (e) {
    print('Exception when calling OAuthApi->getOAuthApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Application client id | 

### Return type

[**OAuthApp**](OAuthApp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOAuthAppInfo**
> OAuthApp getOAuthAppInfo(appId)

Get info on an OAuth app

Get public information about an OAuth 2.0 client application registered with Mattermost. The application's client secret will be blanked out. ##### Permissions Must be authenticated. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OAuthApi();
final appId = appId_example; // String | Application client id

try {
    final result = api_instance.getOAuthAppInfo(appId);
    print(result);
} catch (e) {
    print('Exception when calling OAuthApi->getOAuthAppInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Application client id | 

### Return type

[**OAuthApp**](OAuthApp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOAuthApps**
> List<OAuthApp> getOAuthApps(page, perPage)

Get OAuth apps

Get a page of OAuth 2.0 client applications registered with Mattermost. ##### Permissions With `manage_oauth` permission, the apps registered by the logged in user are returned. With `manage_system_wide_oauth` permission, all apps regardless of creator are returned. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OAuthApi();
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of apps per page.

try {
    final result = api_instance.getOAuthApps(page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling OAuthApi->getOAuthApps: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of apps per page. | [optional] [default to 60]

### Return type

[**List<OAuthApp>**](OAuthApp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **regenerateOAuthAppSecret**
> OAuthApp regenerateOAuthAppSecret(appId)

Regenerate OAuth app secret

Regenerate the client secret for an OAuth 2.0 client application registered with Mattermost. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OAuthApi();
final appId = appId_example; // String | Application client id

try {
    final result = api_instance.regenerateOAuthAppSecret(appId);
    print(result);
} catch (e) {
    print('Exception when calling OAuthApi->regenerateOAuthAppSecret: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Application client id | 

### Return type

[**OAuthApp**](OAuthApp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOAuthApp**
> OAuthApp updateOAuthApp(appId, updateOAuthAppRequest)

Update an OAuth app

Update an OAuth 2.0 client application based on OAuth struct. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OAuthApi();
final appId = appId_example; // String | Application client id
final updateOAuthAppRequest = UpdateOAuthAppRequest(); // UpdateOAuthAppRequest | OAuth application to update

try {
    final result = api_instance.updateOAuthApp(appId, updateOAuthAppRequest);
    print(result);
} catch (e) {
    print('Exception when calling OAuthApi->updateOAuthApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Application client id | 
 **updateOAuthAppRequest** | [**UpdateOAuthAppRequest**](UpdateOAuthAppRequest.md)| OAuth application to update | 

### Return type

[**OAuthApp**](OAuthApp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

