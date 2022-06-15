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
> MmStatusOK openInteractiveDialog(mmOpenInteractiveDialogRequest)

Open a dialog

Open an interactive dialog using a trigger ID provided by a slash command, or some other action payload. See https://docs.mattermost.com/developer/interactive-dialogs.html for more information on interactive dialogs. __Minimum server version: 5.6__ 

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


final MmOpenInteractiveDialogRequest mmOpenInteractiveDialogRequest = MmOpenInteractiveDialogRequest(); // MmOpenInteractiveDialogRequest | Metadata for the dialog to be opened

try {
  final MmStatusOK? result = await client.integrationActions.openInteractiveDialog(mmOpenInteractiveDialogRequest); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostIntegrationActionsApi->openInteractiveDialog: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmOpenInteractiveDialogRequest** | [**MmOpenInteractiveDialogRequest**](MmOpenInteractiveDialogRequest.md)| Metadata for the dialog to be opened | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **submitInteractiveDialog**
> MmStatusOK submitInteractiveDialog(mmSubmitInteractiveDialogRequest)

Submit a dialog

Endpoint used by the Mattermost clients to submit a dialog. See https://docs.mattermost.com/developer/interactive-dialogs.html for more information on interactive dialogs. __Minimum server version: 5.6__ 

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


final MmSubmitInteractiveDialogRequest mmSubmitInteractiveDialogRequest = MmSubmitInteractiveDialogRequest(); // MmSubmitInteractiveDialogRequest | Dialog submission data

try {
  final MmStatusOK? result = await client.integrationActions.submitInteractiveDialog(mmSubmitInteractiveDialogRequest); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostIntegrationActionsApi->submitInteractiveDialog: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmSubmitInteractiveDialogRequest** | [**MmSubmitInteractiveDialogRequest**](MmSubmitInteractiveDialogRequest.md)| Dialog submission data | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

