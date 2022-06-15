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
> MMStatusOK openInteractiveDialog(mMOpenInteractiveDialogRequest)

Open a dialog

Open an interactive dialog using a trigger ID provided by a slash command, or some other action payload. See https://docs.mattermost.com/developer/interactive-dialogs.html for more information on interactive dialogs. __Minimum server version: 5.6__ 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final MMOpenInteractiveDialogRequest mMOpenInteractiveDialogRequest = MMOpenInteractiveDialogRequest(); // MMOpenInteractiveDialogRequest | Metadata for the dialog to be opened

try {
  final result = await client.integrationActions.openInteractiveDialog(mMOpenInteractiveDialogRequest);
  print(result);
} catch (e) {
  print('Exception when calling MattermostIntegrationActionsApi->openInteractiveDialog: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mMOpenInteractiveDialogRequest** | [**MMOpenInteractiveDialogRequest**](MMOpenInteractiveDialogRequest.md)| Metadata for the dialog to be opened | 

### Return type

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **submitInteractiveDialog**
> MMStatusOK submitInteractiveDialog(mMSubmitInteractiveDialogRequest)

Submit a dialog

Endpoint used by the Mattermost clients to submit a dialog. See https://docs.mattermost.com/developer/interactive-dialogs.html for more information on interactive dialogs. __Minimum server version: 5.6__ 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final MMSubmitInteractiveDialogRequest mMSubmitInteractiveDialogRequest = MMSubmitInteractiveDialogRequest(); // MMSubmitInteractiveDialogRequest | Dialog submission data

try {
  final result = await client.integrationActions.submitInteractiveDialog(mMSubmitInteractiveDialogRequest);
  print(result);
} catch (e) {
  print('Exception when calling MattermostIntegrationActionsApi->submitInteractiveDialog: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mMSubmitInteractiveDialogRequest** | [**MMSubmitInteractiveDialogRequest**](MMSubmitInteractiveDialogRequest.md)| Dialog submission data | 

### Return type

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

