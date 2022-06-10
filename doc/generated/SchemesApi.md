# mattermost_api.api.SchemesApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createScheme**](SchemesApi.md#createscheme) | **POST** /schemes | Create a scheme
[**deleteScheme**](SchemesApi.md#deletescheme) | **DELETE** /schemes/{scheme_id} | Delete a scheme
[**getChannelsForScheme**](SchemesApi.md#getchannelsforscheme) | **GET** /schemes/{scheme_id}/channels | Get a page of channels which use this scheme.
[**getScheme**](SchemesApi.md#getscheme) | **GET** /schemes/{scheme_id} | Get a scheme
[**getSchemes**](SchemesApi.md#getschemes) | **GET** /schemes | Get the schemes.
[**getTeamsForScheme**](SchemesApi.md#getteamsforscheme) | **GET** /schemes/{scheme_id}/teams | Get a page of teams which use this scheme.
[**patchScheme**](SchemesApi.md#patchscheme) | **PUT** /schemes/{scheme_id}/patch | Patch a scheme


# **createScheme**
> Scheme createScheme(createSchemeRequest)

Create a scheme

Create a new scheme.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SchemesApi();
final createSchemeRequest = CreateSchemeRequest(); // CreateSchemeRequest | Scheme object to create

try {
    final result = api_instance.createScheme(createSchemeRequest);
    print(result);
} catch (e) {
    print('Exception when calling SchemesApi->createScheme: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createSchemeRequest** | [**CreateSchemeRequest**](CreateSchemeRequest.md)| Scheme object to create | 

### Return type

[**Scheme**](Scheme.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteScheme**
> StatusOK deleteScheme(schemeId)

Delete a scheme

Soft deletes a scheme, by marking the scheme as deleted in the database.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SchemesApi();
final schemeId = schemeId_example; // String | ID of the scheme to delete

try {
    final result = api_instance.deleteScheme(schemeId);
    print(result);
} catch (e) {
    print('Exception when calling SchemesApi->deleteScheme: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schemeId** | **String**| ID of the scheme to delete | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelsForScheme**
> List<Channel> getChannelsForScheme(schemeId, page, perPage)

Get a page of channels which use this scheme.

Get a page of channels which use this scheme. The provided Scheme ID should be for a Channel-scoped Scheme. Use the query parameters to modify the behaviour of this endpoint.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 5.0 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SchemesApi();
final schemeId = schemeId_example; // String | Scheme GUID
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of channels per page.

try {
    final result = api_instance.getChannelsForScheme(schemeId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling SchemesApi->getChannelsForScheme: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schemeId** | **String**| Scheme GUID | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of channels per page. | [optional] [default to 60]

### Return type

[**List<Channel>**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScheme**
> Scheme getScheme(schemeId)

Get a scheme

Get a scheme from the provided scheme id.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SchemesApi();
final schemeId = schemeId_example; // String | Scheme GUID

try {
    final result = api_instance.getScheme(schemeId);
    print(result);
} catch (e) {
    print('Exception when calling SchemesApi->getScheme: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schemeId** | **String**| Scheme GUID | 

### Return type

[**Scheme**](Scheme.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSchemes**
> List<Scheme> getSchemes(scope, page, perPage)

Get the schemes.

Get a page of schemes. Use the query parameters to modify the behaviour of this endpoint.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SchemesApi();
final scope = scope_example; // String | Limit the results returned to the provided scope, either `team` or `channel`.
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of schemes per page.

try {
    final result = api_instance.getSchemes(scope, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling SchemesApi->getSchemes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scope** | **String**| Limit the results returned to the provided scope, either `team` or `channel`. | [optional] [default to '']
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of schemes per page. | [optional] [default to 60]

### Return type

[**List<Scheme>**](Scheme.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTeamsForScheme**
> List<Team> getTeamsForScheme(schemeId, page, perPage)

Get a page of teams which use this scheme.

Get a page of teams which use this scheme. The provided Scheme ID should be for a Team-scoped Scheme. Use the query parameters to modify the behaviour of this endpoint.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 5.0 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SchemesApi();
final schemeId = schemeId_example; // String | Scheme GUID
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of teams per page.

try {
    final result = api_instance.getTeamsForScheme(schemeId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling SchemesApi->getTeamsForScheme: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schemeId** | **String**| Scheme GUID | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of teams per page. | [optional] [default to 60]

### Return type

[**List<Team>**](Team.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchScheme**
> Scheme patchScheme(schemeId, patchSchemeRequest)

Patch a scheme

Partially update a scheme by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 5.0 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SchemesApi();
final schemeId = schemeId_example; // String | Scheme GUID
final patchSchemeRequest = PatchSchemeRequest(); // PatchSchemeRequest | Scheme object to be updated

try {
    final result = api_instance.patchScheme(schemeId, patchSchemeRequest);
    print(result);
} catch (e) {
    print('Exception when calling SchemesApi->patchScheme: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schemeId** | **String**| Scheme GUID | 
 **patchSchemeRequest** | [**PatchSchemeRequest**](PatchSchemeRequest.md)| Scheme object to be updated | 

### Return type

[**Scheme**](Scheme.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

