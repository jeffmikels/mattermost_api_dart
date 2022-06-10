# mattermost_api.api.IntegrationActionsApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**openInteractiveDialog**](IntegrationActionsApi.md#openinteractivedialog) | **POST** /actions/dialogs/open | Open a dialog
[**submitInteractiveDialog**](IntegrationActionsApi.md#submitinteractivedialog) | **POST** /actions/dialogs/submit | Submit a dialog


# **openInteractiveDialog**
> StatusOK openInteractiveDialog(openInteractiveDialogRequest)

Open a dialog

Open an interactive dialog using a trigger ID provided by a slash command, or some other action payload. See https://docs.mattermost.com/developer/interactive-dialogs.html for more information on interactive dialogs. __Minimum server version: 5.6__ 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = IntegrationActionsApi();
final openInteractiveDialogRequest = OpenInteractiveDialogRequest(); // OpenInteractiveDialogRequest | Metadata for the dialog to be opened

try {
    final result = api_instance.openInteractiveDialog(openInteractiveDialogRequest);
    print(result);
} catch (e) {
    print('Exception when calling IntegrationActionsApi->openInteractiveDialog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **openInteractiveDialogRequest** | [**OpenInteractiveDialogRequest**](OpenInteractiveDialogRequest.md)| Metadata for the dialog to be opened | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitInteractiveDialog**
> StatusOK submitInteractiveDialog(submitInteractiveDialogRequest)

Submit a dialog

Endpoint used by the Mattermost clients to submit a dialog. See https://docs.mattermost.com/developer/interactive-dialogs.html for more information on interactive dialogs. __Minimum server version: 5.6__ 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = IntegrationActionsApi();
final submitInteractiveDialogRequest = SubmitInteractiveDialogRequest(); // SubmitInteractiveDialogRequest | Dialog submission data

try {
    final result = api_instance.submitInteractiveDialog(submitInteractiveDialogRequest);
    print(result);
} catch (e) {
    print('Exception when calling IntegrationActionsApi->submitInteractiveDialog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submitInteractiveDialogRequest** | [**SubmitInteractiveDialogRequest**](SubmitInteractiveDialogRequest.md)| Dialog submission data | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

