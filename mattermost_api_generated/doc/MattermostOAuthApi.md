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
> MmOAuthApp createOAuthApp(mmCreateOAuthAppRequest)

Register OAuth app

Register an OAuth 2.0 client application with Mattermost as the service provider. ##### Permissions Must have `manage_oauth` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final MmCreateOAuthAppRequest mmCreateOAuthAppRequest = MmCreateOAuthAppRequest(); // MmCreateOAuthAppRequest | OAuth application to register

try {
  final MmOAuthApp? result = await client.oAuth.createOAuthApp(mmCreateOAuthAppRequest); // await the Future<MmOAuthApp?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostOAuthApi->createOAuthApp: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmCreateOAuthAppRequest** | [**MmCreateOAuthAppRequest**](MmCreateOAuthAppRequest.md)| OAuth application to register | 

### Return type

[**MmOAuthApp**](MmOAuthApp.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **deleteOAuthApp**
> MmStatusOK deleteOAuthApp(appId)

Delete an OAuth app

Delete and unregister an OAuth 2.0 client application  ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String appId = 'appId_example'; // String | Application client id

try {
  final MmStatusOK? result = await client.oAuth.deleteOAuthApp(appId); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostOAuthApi->deleteOAuthApp: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Application client id | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getAuthorizedOAuthAppsForUser**
> List<MmOAuthApp> getAuthorizedOAuthAppsForUser(userId, page, perPage)

Get authorized OAuth apps

Get a page of OAuth 2.0 client applications authorized to access a user's account. ##### Permissions Must be authenticated as the user or have `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String userId = 'userId_example'; // String | User GUID
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of apps per page.

try {
  final List&lt;MmOAuthApp&gt;? result = await client.oAuth.getAuthorizedOAuthAppsForUser(userId, page, perPage); // await the Future<List&lt;MmOAuthApp&gt;?>
  print(result ?? 'resolved to null');
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

[**List<MmOAuthApp>**](MmOAuthApp.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getOAuthApp**
> MmOAuthApp getOAuthApp(appId)

Get an OAuth app

Get an OAuth 2.0 client application registered with Mattermost. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String appId = 'appId_example'; // String | Application client id

try {
  final MmOAuthApp? result = await client.oAuth.getOAuthApp(appId); // await the Future<MmOAuthApp?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostOAuthApi->getOAuthApp: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Application client id | 

### Return type

[**MmOAuthApp**](MmOAuthApp.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getOAuthAppInfo**
> MmOAuthApp getOAuthAppInfo(appId)

Get info on an OAuth app

Get public information about an OAuth 2.0 client application registered with Mattermost. The application's client secret will be blanked out. ##### Permissions Must be authenticated. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String appId = 'appId_example'; // String | Application client id

try {
  final MmOAuthApp? result = await client.oAuth.getOAuthAppInfo(appId); // await the Future<MmOAuthApp?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostOAuthApi->getOAuthAppInfo: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Application client id | 

### Return type

[**MmOAuthApp**](MmOAuthApp.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getOAuthApps**
> List<MmOAuthApp> getOAuthApps(page, perPage)

Get OAuth apps

Get a page of OAuth 2.0 client applications registered with Mattermost. ##### Permissions With `manage_oauth` permission, the apps registered by the logged in user are returned. With `manage_system_wide_oauth` permission, all apps regardless of creator are returned. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of apps per page.

try {
  final List&lt;MmOAuthApp&gt;? result = await client.oAuth.getOAuthApps(page, perPage); // await the Future<List&lt;MmOAuthApp&gt;?>
  print(result ?? 'resolved to null');
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

[**List<MmOAuthApp>**](MmOAuthApp.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **regenerateOAuthAppSecret**
> MmOAuthApp regenerateOAuthAppSecret(appId)

Regenerate OAuth app secret

Regenerate the client secret for an OAuth 2.0 client application registered with Mattermost. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String appId = 'appId_example'; // String | Application client id

try {
  final MmOAuthApp? result = await client.oAuth.regenerateOAuthAppSecret(appId); // await the Future<MmOAuthApp?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostOAuthApi->regenerateOAuthAppSecret: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Application client id | 

### Return type

[**MmOAuthApp**](MmOAuthApp.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateOAuthApp**
> MmOAuthApp updateOAuthApp(appId, mmUpdateOAuthAppRequest)

Update an OAuth app

Update an OAuth 2.0 client application based on OAuth struct. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String appId = 'appId_example'; // String | Application client id
final MmUpdateOAuthAppRequest mmUpdateOAuthAppRequest = MmUpdateOAuthAppRequest(); // MmUpdateOAuthAppRequest | OAuth application to update

try {
  final MmOAuthApp? result = await client.oAuth.updateOAuthApp(appId, mmUpdateOAuthAppRequest); // await the Future<MmOAuthApp?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostOAuthApi->updateOAuthApp: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **String**| Application client id | 
 **mmUpdateOAuthAppRequest** | [**MmUpdateOAuthAppRequest**](MmUpdateOAuthAppRequest.md)| OAuth application to update | 

### Return type

[**MmOAuthApp**](MmOAuthApp.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

