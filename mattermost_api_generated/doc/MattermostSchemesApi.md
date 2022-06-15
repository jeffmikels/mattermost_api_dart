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
> MmScheme createScheme(mmCreateSchemeRequest)

Create a scheme

Create a new scheme.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 

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


final MmCreateSchemeRequest mmCreateSchemeRequest = MmCreateSchemeRequest(); // MmCreateSchemeRequest | Scheme object to create

try {
  final MmScheme? result = await client.schemes.createScheme(mmCreateSchemeRequest); // await the Future<MmScheme?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostSchemesApi->createScheme: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmCreateSchemeRequest** | [**MmCreateSchemeRequest**](MmCreateSchemeRequest.md)| Scheme object to create | 

### Return type

[**MmScheme**](MmScheme.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **deleteScheme**
> MmStatusOK deleteScheme(schemeId)

Delete a scheme

Soft deletes a scheme, by marking the scheme as deleted in the database.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 

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


final String schemeId = 'schemeId_example'; // String | ID of the scheme to delete

try {
  final MmStatusOK? result = await client.schemes.deleteScheme(schemeId); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostSchemesApi->deleteScheme: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schemeId** | **String**| ID of the scheme to delete | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getChannelsForScheme**
> List<MmChannel> getChannelsForScheme(schemeId, page, perPage)

Get a page of channels which use this scheme.

Get a page of channels which use this scheme. The provided Scheme ID should be for a Channel-scoped Scheme. Use the query parameters to modify the behaviour of this endpoint.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 5.0 

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


final String schemeId = 'schemeId_example'; // String | Scheme GUID
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of channels per page.

try {
  final List&lt;MmChannel&gt;? result = await client.schemes.getChannelsForScheme(schemeId, page, perPage); // await the Future<List&lt;MmChannel&gt;?>
  print(result ?? 'resolved to null');
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

[**List<MmChannel>**](MmChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getScheme**
> MmScheme getScheme(schemeId)

Get a scheme

Get a scheme from the provided scheme id.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 

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


final String schemeId = 'schemeId_example'; // String | Scheme GUID

try {
  final MmScheme? result = await client.schemes.getScheme(schemeId); // await the Future<MmScheme?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostSchemesApi->getScheme: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schemeId** | **String**| Scheme GUID | 

### Return type

[**MmScheme**](MmScheme.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getSchemes**
> List<MmScheme> getSchemes(scope, page, perPage)

Get the schemes.

Get a page of schemes. Use the query parameters to modify the behaviour of this endpoint.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 

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


final String scope = 'scope_example'; // String | Limit the results returned to the provided scope, either `team` or `channel`.
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of schemes per page.

try {
  final List&lt;MmScheme&gt;? result = await client.schemes.getSchemes(scope, page, perPage); // await the Future<List&lt;MmScheme&gt;?>
  print(result ?? 'resolved to null');
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

[**List<MmScheme>**](MmScheme.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getTeamsForScheme**
> List<MmTeam> getTeamsForScheme(schemeId, page, perPage)

Get a page of teams which use this scheme.

Get a page of teams which use this scheme. The provided Scheme ID should be for a Team-scoped Scheme. Use the query parameters to modify the behaviour of this endpoint.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 5.0 

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


final String schemeId = 'schemeId_example'; // String | Scheme GUID
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of teams per page.

try {
  final List&lt;MmTeam&gt;? result = await client.schemes.getTeamsForScheme(schemeId, page, perPage); // await the Future<List&lt;MmTeam&gt;?>
  print(result ?? 'resolved to null');
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

[**List<MmTeam>**](MmTeam.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **patchScheme**
> MmScheme patchScheme(schemeId, mmPatchSchemeRequest)

Patch a scheme

Partially update a scheme by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 5.0 

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


final String schemeId = 'schemeId_example'; // String | Scheme GUID
final MmPatchSchemeRequest mmPatchSchemeRequest = MmPatchSchemeRequest(); // MmPatchSchemeRequest | Scheme object to be updated

try {
  final MmScheme? result = await client.schemes.patchScheme(schemeId, mmPatchSchemeRequest); // await the Future<MmScheme?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostSchemesApi->patchScheme: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schemeId** | **String**| Scheme GUID | 
 **mmPatchSchemeRequest** | [**MmPatchSchemeRequest**](MmPatchSchemeRequest.md)| Scheme object to be updated | 

### Return type

[**MmScheme**](MmScheme.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

