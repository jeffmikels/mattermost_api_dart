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
> MMPushNotification acknowledgeNotification()

Acknowledge receiving of a notification

__Minimum server version__: 3.10 ##### Permissions Must be logged in. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MMPushNotification result = await client.root.acknowledgeNotification(); // returns MMPushNotification instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostRootApi->acknowledgeNotification: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MMPushNotification**](MMPushNotification.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

