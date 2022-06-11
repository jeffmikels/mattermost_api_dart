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
> MattermostTermsOfService createTermsOfService()

Creates a new terms of service

Creates new terms of service  __Minimum server version__: 5.4 ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTermsOfServiceApi();

try {
    final result = api_instance.createTermsOfService();
    print(result);
} catch (e) {
    print('Exception when calling MattermostTermsOfServiceApi->createTermsOfService: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostTermsOfService**](MattermostTermsOfService.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTermsOfService**
> MattermostTermsOfService getTermsOfService()

Get latest terms of service

Get latest terms of service from the server  __Minimum server version__: 5.4 ##### Permissions Must be authenticated. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTermsOfServiceApi();

try {
    final result = api_instance.getTermsOfService();
    print(result);
} catch (e) {
    print('Exception when calling MattermostTermsOfServiceApi->getTermsOfService: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostTermsOfService**](MattermostTermsOfService.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserTermsOfService**
> MattermostUserTermsOfService getUserTermsOfService(userId)

Fetches user's latest terms of service action if the latest action was for acceptance.

Will be deprecated in v6.0 Fetches user's latest terms of service action if the latest action was for acceptance.  __Minimum server version__: 5.6 ##### Permissions Must be logged in as the user being acted on. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTermsOfServiceApi();
final userId = userId_example; // String | User GUID

try {
    final result = api_instance.getUserTermsOfService(userId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTermsOfServiceApi->getUserTermsOfService: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**MattermostUserTermsOfService**](MattermostUserTermsOfService.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerTermsOfServiceAction**
> MattermostStatusOK registerTermsOfServiceAction(userId, mattermostRegisterTermsOfServiceActionRequest)

Records user action when they accept or decline custom terms of service

Records user action when they accept or decline custom terms of service. Records the action in audit table. Updates user's last accepted terms of service ID if they accepted it.  __Minimum server version__: 5.4 ##### Permissions Must be logged in as the user being acted on. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTermsOfServiceApi();
final userId = userId_example; // String | User GUID
final mattermostRegisterTermsOfServiceActionRequest = MattermostRegisterTermsOfServiceActionRequest(); // MattermostRegisterTermsOfServiceActionRequest | terms of service details

try {
    final result = api_instance.registerTermsOfServiceAction(userId, mattermostRegisterTermsOfServiceActionRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTermsOfServiceApi->registerTermsOfServiceAction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mattermostRegisterTermsOfServiceActionRequest** | [**MattermostRegisterTermsOfServiceActionRequest**](MattermostRegisterTermsOfServiceActionRequest.md)| terms of service details | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

