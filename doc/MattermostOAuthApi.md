# mattermost_api.api.MattermostOAuthApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOAuthApp**](MattermostOAuthApi.md#createoauthapp) | **POST** /oauth/apps | Register OAuth app
[**deleteOAuthApp**](MattermostOAuthApi.md#deleteoauthapp) | **DELETE** /oauth/apps/{app_id} | Delete an OAuth app
[**getAuthorizedOAuthAppsForUser**](MattermostOAuthApi.md#getauthorizedoauthappsforuser) | **GET** /users/{user_id}/oauth/apps/authorized | Get authorized OAuth apps
[**getOAuthApp**](MattermostOAuthApi.md#getoauthapp) | **GET** /oauth/apps/{app_id} | Get an OAuth app
[**getOAuthAppInfo**](MattermostOAuthApi.md#getoauthappinfo) | **GET** /oauth/apps/{app_id}/info | Get info on an OAuth app
[**getOAuthApps**](MattermostOAuthApi.md#getoauthapps) | **GET** /oauth/apps | Get OAuth apps
[**regenerateOAuthAppSecret**](MattermostOAuthApi.md#regenerateoauthappsecret) | **POST** /oauth/apps/{app_id}/regen_secret | Regenerate OAuth app secret
[**updateOAuthApp**](MattermostOAuthApi.md#updateoauthapp) | **PUT** /oauth/apps/{app_id} | Update an OAuth app


# **createOAuthApp**
> MattermostOAuthApp createOAuthApp(mattermostCreateOAuthAppRequest)

Register OAuth app

Register an OAuth 2.0 client application with Mattermost as the service provider. ##### Permissions Must have `manage_oauth` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostOAuthApi();
final mattermostCreateOAuthAppRequest = MattermostCreateOAuthAppRequest(); // MattermostCreateOAuthAppRequest | OAuth application to register

try {
    final result = api_instance.createOAuthApp(mattermostCreateOAuthAppRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostOAuthApi->createOAuthApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostCreateOAuthAppRequest** | [**MattermostCreateOAuthAppRequest**](MattermostCreateOAuthAppRequest.md)| OAuth application to register | 

### Return type

[**MattermostOAuthApp**](MattermostOAuthApp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOAuthApp**
> MattermostStatusOK deleteOAuthApp(appId)

Delete an OAuth app

Delete and unregister an OAuth 2.0 client application  ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostOAuthApi();
final appId = appId_example; // String | Application client id

try {
    final result = api_instance.deleteOAuthApp(appId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostOAuthApi->deleteOAuthApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Application client id | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuthorizedOAuthAppsForUser**
> List<MattermostOAuthApp> getAuthorizedOAuthAppsForUser(userId, page, perPage)

Get authorized OAuth apps

Get a page of OAuth 2.0 client applications authorized to access a user's account. ##### Permissions Must be authenticated as the user or have `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostOAuthApi();
final userId = userId_example; // String | User GUID
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of apps per page.

try {
    final result = api_instance.getAuthorizedOAuthAppsForUser(userId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostOAuthApi->getAuthorizedOAuthAppsForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of apps per page. | [optional] [default to 60]

### Return type

[**List<MattermostOAuthApp>**](MattermostOAuthApp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOAuthApp**
> MattermostOAuthApp getOAuthApp(appId)

Get an OAuth app

Get an OAuth 2.0 client application registered with Mattermost. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostOAuthApi();
final appId = appId_example; // String | Application client id

try {
    final result = api_instance.getOAuthApp(appId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostOAuthApi->getOAuthApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Application client id | 

### Return type

[**MattermostOAuthApp**](MattermostOAuthApp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOAuthAppInfo**
> MattermostOAuthApp getOAuthAppInfo(appId)

Get info on an OAuth app

Get public information about an OAuth 2.0 client application registered with Mattermost. The application's client secret will be blanked out. ##### Permissions Must be authenticated. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostOAuthApi();
final appId = appId_example; // String | Application client id

try {
    final result = api_instance.getOAuthAppInfo(appId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostOAuthApi->getOAuthAppInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Application client id | 

### Return type

[**MattermostOAuthApp**](MattermostOAuthApp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOAuthApps**
> List<MattermostOAuthApp> getOAuthApps(page, perPage)

Get OAuth apps

Get a page of OAuth 2.0 client applications registered with Mattermost. ##### Permissions With `manage_oauth` permission, the apps registered by the logged in user are returned. With `manage_system_wide_oauth` permission, all apps regardless of creator are returned. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostOAuthApi();
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of apps per page.

try {
    final result = api_instance.getOAuthApps(page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostOAuthApi->getOAuthApps: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of apps per page. | [optional] [default to 60]

### Return type

[**List<MattermostOAuthApp>**](MattermostOAuthApp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **regenerateOAuthAppSecret**
> MattermostOAuthApp regenerateOAuthAppSecret(appId)

Regenerate OAuth app secret

Regenerate the client secret for an OAuth 2.0 client application registered with Mattermost. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostOAuthApi();
final appId = appId_example; // String | Application client id

try {
    final result = api_instance.regenerateOAuthAppSecret(appId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostOAuthApi->regenerateOAuthAppSecret: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Application client id | 

### Return type

[**MattermostOAuthApp**](MattermostOAuthApp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOAuthApp**
> MattermostOAuthApp updateOAuthApp(appId, mattermostUpdateOAuthAppRequest)

Update an OAuth app

Update an OAuth 2.0 client application based on OAuth struct. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostOAuthApi();
final appId = appId_example; // String | Application client id
final mattermostUpdateOAuthAppRequest = MattermostUpdateOAuthAppRequest(); // MattermostUpdateOAuthAppRequest | OAuth application to update

try {
    final result = api_instance.updateOAuthApp(appId, mattermostUpdateOAuthAppRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostOAuthApi->updateOAuthApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Application client id | 
 **mattermostUpdateOAuthAppRequest** | [**MattermostUpdateOAuthAppRequest**](MattermostUpdateOAuthAppRequest.md)| OAuth application to update | 

### Return type

[**MattermostOAuthApp**](MattermostOAuthApp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

