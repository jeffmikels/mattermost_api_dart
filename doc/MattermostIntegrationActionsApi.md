# mattermost_api.api.MattermostIntegrationActionsApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**openInteractiveDialog**](MattermostIntegrationActionsApi.md#openinteractivedialog) | **POST** /actions/dialogs/open | Open a dialog
[**submitInteractiveDialog**](MattermostIntegrationActionsApi.md#submitinteractivedialog) | **POST** /actions/dialogs/submit | Submit a dialog


# **openInteractiveDialog**
> MattermostStatusOK openInteractiveDialog(mattermostOpenInteractiveDialogRequest)

Open a dialog

Open an interactive dialog using a trigger ID provided by a slash command, or some other action payload. See https://docs.mattermost.com/developer/interactive-dialogs.html for more information on interactive dialogs. __Minimum server version: 5.6__ 

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

// Then, access MattermostIntegrationActionsApi api instance
// final MattermostIntegrationActionsApi api_instance = client.integrationActions

final mattermostOpenInteractiveDialogRequest = MattermostOpenInteractiveDialogRequest(); // MattermostOpenInteractiveDialogRequest | Metadata for the dialog to be opened

try {
    final result = await client.integrationActions.openInteractiveDialog(mattermostOpenInteractiveDialogRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostIntegrationActionsApi->openInteractiveDialog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostOpenInteractiveDialogRequest** | [**MattermostOpenInteractiveDialogRequest**](MattermostOpenInteractiveDialogRequest.md)| Metadata for the dialog to be opened | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitInteractiveDialog**
> MattermostStatusOK submitInteractiveDialog(mattermostSubmitInteractiveDialogRequest)

Submit a dialog

Endpoint used by the Mattermost clients to submit a dialog. See https://docs.mattermost.com/developer/interactive-dialogs.html for more information on interactive dialogs. __Minimum server version: 5.6__ 

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

// Then, access MattermostIntegrationActionsApi api instance
// final MattermostIntegrationActionsApi api_instance = client.integrationActions

final mattermostSubmitInteractiveDialogRequest = MattermostSubmitInteractiveDialogRequest(); // MattermostSubmitInteractiveDialogRequest | Dialog submission data

try {
    final result = await client.integrationActions.submitInteractiveDialog(mattermostSubmitInteractiveDialogRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostIntegrationActionsApi->submitInteractiveDialog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostSubmitInteractiveDialogRequest** | [**MattermostSubmitInteractiveDialogRequest**](MattermostSubmitInteractiveDialogRequest.md)| Dialog submission data | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
