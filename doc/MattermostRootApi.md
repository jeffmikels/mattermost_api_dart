# mattermost_api.api.MattermostRootApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acknowledgeNotification**](MattermostRootApi.md#acknowledgenotification) | **POST** /notifications/ack | Acknowledge receiving of a notification


# **acknowledgeNotification**
> MattermostPushNotification acknowledgeNotification()

Acknowledge receiving of a notification

__Minimum server version__: 3.10 ##### Permissions Must be logged in. 

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

// Then, access MattermostRootApi api instance
// final MattermostRootApi api_instance = client.root


try {
    final result = await client.root.acknowledgeNotification();
    print(result);
} catch (e) {
    print('Exception when calling MattermostRootApi->acknowledgeNotification: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostPushNotification**](MattermostPushNotification.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
