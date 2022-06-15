# mattermost_api.api.MattermostTermsOfServiceApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTermsOfService**](MattermostTermsOfServiceApi.md#createtermsofservice) | **POST** /terms_of_service | Creates a new terms of service
[**getTermsOfService**](MattermostTermsOfServiceApi.md#gettermsofservice) | **GET** /terms_of_service | Get latest terms of service
[**getUserTermsOfService**](MattermostTermsOfServiceApi.md#getusertermsofservice) | **GET** /users/{user_id}/terms_of_service | Fetches user's latest terms of service action if the latest action was for acceptance.
[**registerTermsOfServiceAction**](MattermostTermsOfServiceApi.md#registertermsofserviceaction) | **POST** /users/{user_id}/terms_of_service | Records user action when they accept or decline custom terms of service


# **createTermsOfService**
> MmTermsOfService createTermsOfService()

Creates a new terms of service

Creates new terms of service  __Minimum server version__: 5.4 ##### Permissions Must have `manage_system` permission. 

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



try {
  final MmTermsOfService? result = await client.termsOfService.createTermsOfService(); // await the Future<MmTermsOfService?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTermsOfServiceApi->createTermsOfService: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MmTermsOfService**](MmTermsOfService.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getTermsOfService**
> MmTermsOfService getTermsOfService()

Get latest terms of service

Get latest terms of service from the server  __Minimum server version__: 5.4 ##### Permissions Must be authenticated. 

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



try {
  final MmTermsOfService? result = await client.termsOfService.getTermsOfService(); // await the Future<MmTermsOfService?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTermsOfServiceApi->getTermsOfService: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MmTermsOfService**](MmTermsOfService.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getUserTermsOfService**
> MmUserTermsOfService getUserTermsOfService(userId)

Fetches user's latest terms of service action if the latest action was for acceptance.

Will be deprecated in v6.0 Fetches user's latest terms of service action if the latest action was for acceptance.  __Minimum server version__: 5.6 ##### Permissions Must be logged in as the user being acted on. 

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

try {
  final MmUserTermsOfService? result = await client.termsOfService.getUserTermsOfService(userId); // await the Future<MmUserTermsOfService?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTermsOfServiceApi->getUserTermsOfService: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**MmUserTermsOfService**](MmUserTermsOfService.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **registerTermsOfServiceAction**
> MmStatusOK registerTermsOfServiceAction(userId, mmRegisterTermsOfServiceActionRequest)

Records user action when they accept or decline custom terms of service

Records user action when they accept or decline custom terms of service. Records the action in audit table. Updates user's last accepted terms of service ID if they accepted it.  __Minimum server version__: 5.4 ##### Permissions Must be logged in as the user being acted on. 

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
final MmRegisterTermsOfServiceActionRequest mmRegisterTermsOfServiceActionRequest = MmRegisterTermsOfServiceActionRequest(); // MmRegisterTermsOfServiceActionRequest | terms of service details

try {
  final MmStatusOK? result = await client.termsOfService.registerTermsOfServiceAction(userId, mmRegisterTermsOfServiceActionRequest); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTermsOfServiceApi->registerTermsOfServiceAction: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mmRegisterTermsOfServiceActionRequest** | [**MmRegisterTermsOfServiceActionRequest**](MmRegisterTermsOfServiceActionRequest.md)| terms of service details | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

