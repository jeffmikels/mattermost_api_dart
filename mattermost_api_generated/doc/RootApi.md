# mattermost_api.api.RootApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acknowledgeNotification**](RootApi.md#acknowledgenotification) | **POST** /notifications/ack | Acknowledge receiving of a notification


# **acknowledgeNotification**
> PushNotification acknowledgeNotification()

Acknowledge receiving of a notification

__Minimum server version__: 3.10 ##### Permissions Must be logged in. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RootApi();

try {
    final result = api_instance.acknowledgeNotification();
    print(result);
} catch (e) {
    print('Exception when calling RootApi->acknowledgeNotification: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PushNotification**](PushNotification.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

