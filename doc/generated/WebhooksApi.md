# mattermost_api.api.WebhooksApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createIncomingWebhook**](WebhooksApi.md#createincomingwebhook) | **POST** /hooks/incoming | Create an incoming webhook
[**createOutgoingWebhook**](WebhooksApi.md#createoutgoingwebhook) | **POST** /hooks/outgoing | Create an outgoing webhook
[**deleteIncomingWebhook**](WebhooksApi.md#deleteincomingwebhook) | **DELETE** /hooks/incoming/{hook_id} | Delete an incoming webhook
[**deleteOutgoingWebhook**](WebhooksApi.md#deleteoutgoingwebhook) | **DELETE** /hooks/outgoing/{hook_id} | Delete an outgoing webhook
[**getIncomingWebhook**](WebhooksApi.md#getincomingwebhook) | **GET** /hooks/incoming/{hook_id} | Get an incoming webhook
[**getIncomingWebhooks**](WebhooksApi.md#getincomingwebhooks) | **GET** /hooks/incoming | List incoming webhooks
[**getOutgoingWebhook**](WebhooksApi.md#getoutgoingwebhook) | **GET** /hooks/outgoing/{hook_id} | Get an outgoing webhook
[**getOutgoingWebhooks**](WebhooksApi.md#getoutgoingwebhooks) | **GET** /hooks/outgoing | List outgoing webhooks
[**regenOutgoingHookToken**](WebhooksApi.md#regenoutgoinghooktoken) | **POST** /hooks/outgoing/{hook_id}/regen_token | Regenerate the token for the outgoing webhook.
[**updateIncomingWebhook**](WebhooksApi.md#updateincomingwebhook) | **PUT** /hooks/incoming/{hook_id} | Update an incoming webhook
[**updateOutgoingWebhook**](WebhooksApi.md#updateoutgoingwebhook) | **PUT** /hooks/outgoing/{hook_id} | Update an outgoing webhook


# **createIncomingWebhook**
> IncomingWebhook createIncomingWebhook(createIncomingWebhookRequest)

Create an incoming webhook

Create an incoming webhook for a channel. ##### Permissions `manage_webhooks` for the team the webhook is in.  `manage_others_incoming_webhooks` for the team the webhook is in if the user is different than the requester. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WebhooksApi();
final createIncomingWebhookRequest = CreateIncomingWebhookRequest(); // CreateIncomingWebhookRequest | Incoming webhook to be created

try {
    final result = api_instance.createIncomingWebhook(createIncomingWebhookRequest);
    print(result);
} catch (e) {
    print('Exception when calling WebhooksApi->createIncomingWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createIncomingWebhookRequest** | [**CreateIncomingWebhookRequest**](CreateIncomingWebhookRequest.md)| Incoming webhook to be created | 

### Return type

[**IncomingWebhook**](IncomingWebhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOutgoingWebhook**
> OutgoingWebhook createOutgoingWebhook(createOutgoingWebhookRequest)

Create an outgoing webhook

Create an outgoing webhook for a team. ##### Permissions `manage_webhooks` for the team the webhook is in.  `manage_others_outgoing_webhooks` for the team the webhook is in if the user is different than the requester. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WebhooksApi();
final createOutgoingWebhookRequest = CreateOutgoingWebhookRequest(); // CreateOutgoingWebhookRequest | Outgoing webhook to be created

try {
    final result = api_instance.createOutgoingWebhook(createOutgoingWebhookRequest);
    print(result);
} catch (e) {
    print('Exception when calling WebhooksApi->createOutgoingWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createOutgoingWebhookRequest** | [**CreateOutgoingWebhookRequest**](CreateOutgoingWebhookRequest.md)| Outgoing webhook to be created | 

### Return type

[**OutgoingWebhook**](OutgoingWebhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteIncomingWebhook**
> StatusOK deleteIncomingWebhook(hookId)

Delete an incoming webhook

Delete an incoming webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WebhooksApi();
final hookId = hookId_example; // String | Incoming webhook GUID

try {
    final result = api_instance.deleteIncomingWebhook(hookId);
    print(result);
} catch (e) {
    print('Exception when calling WebhooksApi->deleteIncomingWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hookId** | **String**| Incoming webhook GUID | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOutgoingWebhook**
> StatusOK deleteOutgoingWebhook(hookId)

Delete an outgoing webhook

Delete an outgoing webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WebhooksApi();
final hookId = hookId_example; // String | Outgoing webhook GUID

try {
    final result = api_instance.deleteOutgoingWebhook(hookId);
    print(result);
} catch (e) {
    print('Exception when calling WebhooksApi->deleteOutgoingWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hookId** | **String**| Outgoing webhook GUID | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIncomingWebhook**
> IncomingWebhook getIncomingWebhook(hookId)

Get an incoming webhook

Get an incoming webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WebhooksApi();
final hookId = hookId_example; // String | Incoming Webhook GUID

try {
    final result = api_instance.getIncomingWebhook(hookId);
    print(result);
} catch (e) {
    print('Exception when calling WebhooksApi->getIncomingWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hookId** | **String**| Incoming Webhook GUID | 

### Return type

[**IncomingWebhook**](IncomingWebhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIncomingWebhooks**
> List<IncomingWebhook> getIncomingWebhooks(page, perPage, teamId)

List incoming webhooks

Get a page of a list of incoming webhooks. Optionally filter for a specific team using query parameters. ##### Permissions `manage_webhooks` for the system or `manage_webhooks` for the specific team. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WebhooksApi();
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of hooks per page.
final teamId = teamId_example; // String | The ID of the team to get hooks for.

try {
    final result = api_instance.getIncomingWebhooks(page, perPage, teamId);
    print(result);
} catch (e) {
    print('Exception when calling WebhooksApi->getIncomingWebhooks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of hooks per page. | [optional] [default to 60]
 **teamId** | **String**| The ID of the team to get hooks for. | [optional] 

### Return type

[**List<IncomingWebhook>**](IncomingWebhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOutgoingWebhook**
> OutgoingWebhook getOutgoingWebhook(hookId)

Get an outgoing webhook

Get an outgoing webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WebhooksApi();
final hookId = hookId_example; // String | Outgoing webhook GUID

try {
    final result = api_instance.getOutgoingWebhook(hookId);
    print(result);
} catch (e) {
    print('Exception when calling WebhooksApi->getOutgoingWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hookId** | **String**| Outgoing webhook GUID | 

### Return type

[**OutgoingWebhook**](OutgoingWebhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOutgoingWebhooks**
> List<OutgoingWebhook> getOutgoingWebhooks(page, perPage, teamId, channelId)

List outgoing webhooks

Get a page of a list of outgoing webhooks. Optionally filter for a specific team or channel using query parameters. ##### Permissions `manage_webhooks` for the system or `manage_webhooks` for the specific team/channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WebhooksApi();
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of hooks per page.
final teamId = teamId_example; // String | The ID of the team to get hooks for.
final channelId = channelId_example; // String | The ID of the channel to get hooks for.

try {
    final result = api_instance.getOutgoingWebhooks(page, perPage, teamId, channelId);
    print(result);
} catch (e) {
    print('Exception when calling WebhooksApi->getOutgoingWebhooks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of hooks per page. | [optional] [default to 60]
 **teamId** | **String**| The ID of the team to get hooks for. | [optional] 
 **channelId** | **String**| The ID of the channel to get hooks for. | [optional] 

### Return type

[**List<OutgoingWebhook>**](OutgoingWebhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **regenOutgoingHookToken**
> StatusOK regenOutgoingHookToken(hookId)

Regenerate the token for the outgoing webhook.

Regenerate the token for the outgoing webhook. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WebhooksApi();
final hookId = hookId_example; // String | Outgoing webhook GUID

try {
    final result = api_instance.regenOutgoingHookToken(hookId);
    print(result);
} catch (e) {
    print('Exception when calling WebhooksApi->regenOutgoingHookToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hookId** | **String**| Outgoing webhook GUID | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateIncomingWebhook**
> IncomingWebhook updateIncomingWebhook(hookId, updateIncomingWebhookRequest)

Update an incoming webhook

Update an incoming webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WebhooksApi();
final hookId = hookId_example; // String | Incoming Webhook GUID
final updateIncomingWebhookRequest = UpdateIncomingWebhookRequest(); // UpdateIncomingWebhookRequest | Incoming webhook to be updated

try {
    final result = api_instance.updateIncomingWebhook(hookId, updateIncomingWebhookRequest);
    print(result);
} catch (e) {
    print('Exception when calling WebhooksApi->updateIncomingWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hookId** | **String**| Incoming Webhook GUID | 
 **updateIncomingWebhookRequest** | [**UpdateIncomingWebhookRequest**](UpdateIncomingWebhookRequest.md)| Incoming webhook to be updated | 

### Return type

[**IncomingWebhook**](IncomingWebhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOutgoingWebhook**
> OutgoingWebhook updateOutgoingWebhook(hookId, updateOutgoingWebhookRequest)

Update an outgoing webhook

Update an outgoing webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WebhooksApi();
final hookId = hookId_example; // String | outgoing Webhook GUID
final updateOutgoingWebhookRequest = UpdateOutgoingWebhookRequest(); // UpdateOutgoingWebhookRequest | Outgoing webhook to be updated

try {
    final result = api_instance.updateOutgoingWebhook(hookId, updateOutgoingWebhookRequest);
    print(result);
} catch (e) {
    print('Exception when calling WebhooksApi->updateOutgoingWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hookId** | **String**| outgoing Webhook GUID | 
 **updateOutgoingWebhookRequest** | [**UpdateOutgoingWebhookRequest**](UpdateOutgoingWebhookRequest.md)| Outgoing webhook to be updated | 

### Return type

[**OutgoingWebhook**](OutgoingWebhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

