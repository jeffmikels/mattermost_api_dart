# mattermost_api.api.MattermostSchemesApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createScheme**](MattermostSchemesApi.md#createscheme) | **POST** /schemes | Create a scheme
[**deleteScheme**](MattermostSchemesApi.md#deletescheme) | **DELETE** /schemes/{scheme_id} | Delete a scheme
[**getChannelsForScheme**](MattermostSchemesApi.md#getchannelsforscheme) | **GET** /schemes/{scheme_id}/channels | Get a page of channels which use this scheme.
[**getScheme**](MattermostSchemesApi.md#getscheme) | **GET** /schemes/{scheme_id} | Get a scheme
[**getSchemes**](MattermostSchemesApi.md#getschemes) | **GET** /schemes | Get the schemes.
[**getTeamsForScheme**](MattermostSchemesApi.md#getteamsforscheme) | **GET** /schemes/{scheme_id}/teams | Get a page of teams which use this scheme.
[**patchScheme**](MattermostSchemesApi.md#patchscheme) | **PUT** /schemes/{scheme_id}/patch | Patch a scheme


# **createScheme**
> MattermostScheme createScheme(mattermostCreateSchemeRequest)

Create a scheme

Create a new scheme.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
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

// Then, access MattermostSchemesApi api instance
// final MattermostSchemesApi api_instance = client.schemes

final mattermostCreateSchemeRequest = MattermostCreateSchemeRequest(); // MattermostCreateSchemeRequest | Scheme object to create

try {
    final result = await client.schemes.createScheme(mattermostCreateSchemeRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSchemesApi->createScheme: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostCreateSchemeRequest** | [**MattermostCreateSchemeRequest**](MattermostCreateSchemeRequest.md)| Scheme object to create | 

### Return type

[**MattermostScheme**](MattermostScheme.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **deleteScheme**
> MattermostStatusOK deleteScheme(schemeId)

Delete a scheme

Soft deletes a scheme, by marking the scheme as deleted in the database.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
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

// Then, access MattermostSchemesApi api instance
// final MattermostSchemesApi api_instance = client.schemes

final schemeId = schemeId_example; // String | ID of the scheme to delete

try {
    final result = await client.schemes.deleteScheme(schemeId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSchemesApi->deleteScheme: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schemeId** | **String**| ID of the scheme to delete | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getChannelsForScheme**
> List<MattermostChannel> getChannelsForScheme(schemeId, page, perPage)

Get a page of channels which use this scheme.

Get a page of channels which use this scheme. The provided Scheme ID should be for a Channel-scoped Scheme. Use the query parameters to modify the behaviour of this endpoint.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 5.0 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
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

// Then, access MattermostSchemesApi api instance
// final MattermostSchemesApi api_instance = client.schemes

final schemeId = schemeId_example; // String | Scheme GUID
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of channels per page.

try {
    final result = await client.schemes.getChannelsForScheme(schemeId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSchemesApi->getChannelsForScheme: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schemeId** | **String**| Scheme GUID | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of channels per page. | [optional] [default to 60]

### Return type

[**List<MattermostChannel>**](MattermostChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getScheme**
> MattermostScheme getScheme(schemeId)

Get a scheme

Get a scheme from the provided scheme id.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
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

// Then, access MattermostSchemesApi api instance
// final MattermostSchemesApi api_instance = client.schemes

final schemeId = schemeId_example; // String | Scheme GUID

try {
    final result = await client.schemes.getScheme(schemeId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSchemesApi->getScheme: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schemeId** | **String**| Scheme GUID | 

### Return type

[**MattermostScheme**](MattermostScheme.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getSchemes**
> List<MattermostScheme> getSchemes(scope, page, perPage)

Get the schemes.

Get a page of schemes. Use the query parameters to modify the behaviour of this endpoint.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
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

// Then, access MattermostSchemesApi api instance
// final MattermostSchemesApi api_instance = client.schemes

final scope = scope_example; // String | Limit the results returned to the provided scope, either `team` or `channel`.
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of schemes per page.

try {
    final result = await client.schemes.getSchemes(scope, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSchemesApi->getSchemes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scope** | **String**| Limit the results returned to the provided scope, either `team` or `channel`. | [optional] [default to '']
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of schemes per page. | [optional] [default to 60]

### Return type

[**List<MattermostScheme>**](MattermostScheme.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getTeamsForScheme**
> List<MattermostTeam> getTeamsForScheme(schemeId, page, perPage)

Get a page of teams which use this scheme.

Get a page of teams which use this scheme. The provided Scheme ID should be for a Team-scoped Scheme. Use the query parameters to modify the behaviour of this endpoint.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 5.0 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
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

// Then, access MattermostSchemesApi api instance
// final MattermostSchemesApi api_instance = client.schemes

final schemeId = schemeId_example; // String | Scheme GUID
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of teams per page.

try {
    final result = await client.schemes.getTeamsForScheme(schemeId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSchemesApi->getTeamsForScheme: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schemeId** | **String**| Scheme GUID | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of teams per page. | [optional] [default to 60]

### Return type

[**List<MattermostTeam>**](MattermostTeam.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **patchScheme**
> MattermostScheme patchScheme(schemeId, mattermostPatchSchemeRequest)

Patch a scheme

Partially update a scheme by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 5.0 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
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

// Then, access MattermostSchemesApi api instance
// final MattermostSchemesApi api_instance = client.schemes

final schemeId = schemeId_example; // String | Scheme GUID
final mattermostPatchSchemeRequest = MattermostPatchSchemeRequest(); // MattermostPatchSchemeRequest | Scheme object to be updated

try {
    final result = await client.schemes.patchScheme(schemeId, mattermostPatchSchemeRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSchemesApi->patchScheme: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schemeId** | **String**| Scheme GUID | 
 **mattermostPatchSchemeRequest** | [**MattermostPatchSchemeRequest**](MattermostPatchSchemeRequest.md)| Scheme object to be updated | 

### Return type

[**MattermostScheme**](MattermostScheme.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

