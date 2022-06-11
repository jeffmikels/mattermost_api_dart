# mattermost_api.api.MattermostWebhooksApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createIncomingWebhook**](MattermostWebhooksApi.md#createincomingwebhook) | **POST** /hooks/incoming | Create an incoming webhook
[**createOutgoingWebhook**](MattermostWebhooksApi.md#createoutgoingwebhook) | **POST** /hooks/outgoing | Create an outgoing webhook
[**deleteIncomingWebhook**](MattermostWebhooksApi.md#deleteincomingwebhook) | **DELETE** /hooks/incoming/{hook_id} | Delete an incoming webhook
[**deleteOutgoingWebhook**](MattermostWebhooksApi.md#deleteoutgoingwebhook) | **DELETE** /hooks/outgoing/{hook_id} | Delete an outgoing webhook
[**getIncomingWebhook**](MattermostWebhooksApi.md#getincomingwebhook) | **GET** /hooks/incoming/{hook_id} | Get an incoming webhook
[**getIncomingWebhooks**](MattermostWebhooksApi.md#getincomingwebhooks) | **GET** /hooks/incoming | List incoming webhooks
[**getOutgoingWebhook**](MattermostWebhooksApi.md#getoutgoingwebhook) | **GET** /hooks/outgoing/{hook_id} | Get an outgoing webhook
[**getOutgoingWebhooks**](MattermostWebhooksApi.md#getoutgoingwebhooks) | **GET** /hooks/outgoing | List outgoing webhooks
[**regenOutgoingHookToken**](MattermostWebhooksApi.md#regenoutgoinghooktoken) | **POST** /hooks/outgoing/{hook_id}/regen_token | Regenerate the token for the outgoing webhook.
[**updateIncomingWebhook**](MattermostWebhooksApi.md#updateincomingwebhook) | **PUT** /hooks/incoming/{hook_id} | Update an incoming webhook
[**updateOutgoingWebhook**](MattermostWebhooksApi.md#updateoutgoingwebhook) | **PUT** /hooks/outgoing/{hook_id} | Update an outgoing webhook


# **createIncomingWebhook**
> MattermostIncomingWebhook createIncomingWebhook(mattermostCreateIncomingWebhookRequest)

Create an incoming webhook

Create an incoming webhook for a channel. ##### Permissions `manage_webhooks` for the team the webhook is in.  `manage_others_incoming_webhooks` for the team the webhook is in if the user is different than the requester. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostWebhooksApi();
final mattermostCreateIncomingWebhookRequest = MattermostCreateIncomingWebhookRequest(); // MattermostCreateIncomingWebhookRequest | Incoming webhook to be created

try {
    final result = api_instance.createIncomingWebhook(mattermostCreateIncomingWebhookRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostWebhooksApi->createIncomingWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostCreateIncomingWebhookRequest** | [**MattermostCreateIncomingWebhookRequest**](MattermostCreateIncomingWebhookRequest.md)| Incoming webhook to be created | 

### Return type

[**MattermostIncomingWebhook**](MattermostIncomingWebhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOutgoingWebhook**
> MattermostOutgoingWebhook createOutgoingWebhook(mattermostCreateOutgoingWebhookRequest)

Create an outgoing webhook

Create an outgoing webhook for a team. ##### Permissions `manage_webhooks` for the team the webhook is in.  `manage_others_outgoing_webhooks` for the team the webhook is in if the user is different than the requester. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostWebhooksApi();
final mattermostCreateOutgoingWebhookRequest = MattermostCreateOutgoingWebhookRequest(); // MattermostCreateOutgoingWebhookRequest | Outgoing webhook to be created

try {
    final result = api_instance.createOutgoingWebhook(mattermostCreateOutgoingWebhookRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostWebhooksApi->createOutgoingWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostCreateOutgoingWebhookRequest** | [**MattermostCreateOutgoingWebhookRequest**](MattermostCreateOutgoingWebhookRequest.md)| Outgoing webhook to be created | 

### Return type

[**MattermostOutgoingWebhook**](MattermostOutgoingWebhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteIncomingWebhook**
> MattermostStatusOK deleteIncomingWebhook(hookId)

Delete an incoming webhook

Delete an incoming webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostWebhooksApi();
final hookId = hookId_example; // String | Incoming webhook GUID

try {
    final result = api_instance.deleteIncomingWebhook(hookId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostWebhooksApi->deleteIncomingWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hookId** | **String**| Incoming webhook GUID | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOutgoingWebhook**
> MattermostStatusOK deleteOutgoingWebhook(hookId)

Delete an outgoing webhook

Delete an outgoing webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostWebhooksApi();
final hookId = hookId_example; // String | Outgoing webhook GUID

try {
    final result = api_instance.deleteOutgoingWebhook(hookId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostWebhooksApi->deleteOutgoingWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hookId** | **String**| Outgoing webhook GUID | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIncomingWebhook**
> MattermostIncomingWebhook getIncomingWebhook(hookId)

Get an incoming webhook

Get an incoming webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostWebhooksApi();
final hookId = hookId_example; // String | Incoming Webhook GUID

try {
    final result = api_instance.getIncomingWebhook(hookId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostWebhooksApi->getIncomingWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hookId** | **String**| Incoming Webhook GUID | 

### Return type

[**MattermostIncomingWebhook**](MattermostIncomingWebhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIncomingWebhooks**
> List<MattermostIncomingWebhook> getIncomingWebhooks(page, perPage, teamId)

List incoming webhooks

Get a page of a list of incoming webhooks. Optionally filter for a specific team using query parameters. ##### Permissions `manage_webhooks` for the system or `manage_webhooks` for the specific team. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostWebhooksApi();
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of hooks per page.
final teamId = teamId_example; // String | The ID of the team to get hooks for.

try {
    final result = api_instance.getIncomingWebhooks(page, perPage, teamId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostWebhooksApi->getIncomingWebhooks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of hooks per page. | [optional] [default to 60]
 **teamId** | **String**| The ID of the team to get hooks for. | [optional] 

### Return type

[**List<MattermostIncomingWebhook>**](MattermostIncomingWebhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOutgoingWebhook**
> MattermostOutgoingWebhook getOutgoingWebhook(hookId)

Get an outgoing webhook

Get an outgoing webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostWebhooksApi();
final hookId = hookId_example; // String | Outgoing webhook GUID

try {
    final result = api_instance.getOutgoingWebhook(hookId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostWebhooksApi->getOutgoingWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hookId** | **String**| Outgoing webhook GUID | 

### Return type

[**MattermostOutgoingWebhook**](MattermostOutgoingWebhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOutgoingWebhooks**
> List<MattermostOutgoingWebhook> getOutgoingWebhooks(page, perPage, teamId, channelId)

List outgoing webhooks

Get a page of a list of outgoing webhooks. Optionally filter for a specific team or channel using query parameters. ##### Permissions `manage_webhooks` for the system or `manage_webhooks` for the specific team/channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostWebhooksApi();
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of hooks per page.
final teamId = teamId_example; // String | The ID of the team to get hooks for.
final channelId = channelId_example; // String | The ID of the channel to get hooks for.

try {
    final result = api_instance.getOutgoingWebhooks(page, perPage, teamId, channelId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostWebhooksApi->getOutgoingWebhooks: $e\n');
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

[**List<MattermostOutgoingWebhook>**](MattermostOutgoingWebhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **regenOutgoingHookToken**
> MattermostStatusOK regenOutgoingHookToken(hookId)

Regenerate the token for the outgoing webhook.

Regenerate the token for the outgoing webhook. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostWebhooksApi();
final hookId = hookId_example; // String | Outgoing webhook GUID

try {
    final result = api_instance.regenOutgoingHookToken(hookId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostWebhooksApi->regenOutgoingHookToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hookId** | **String**| Outgoing webhook GUID | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateIncomingWebhook**
> MattermostIncomingWebhook updateIncomingWebhook(hookId, mattermostUpdateIncomingWebhookRequest)

Update an incoming webhook

Update an incoming webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostWebhooksApi();
final hookId = hookId_example; // String | Incoming Webhook GUID
final mattermostUpdateIncomingWebhookRequest = MattermostUpdateIncomingWebhookRequest(); // MattermostUpdateIncomingWebhookRequest | Incoming webhook to be updated

try {
    final result = api_instance.updateIncomingWebhook(hookId, mattermostUpdateIncomingWebhookRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostWebhooksApi->updateIncomingWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hookId** | **String**| Incoming Webhook GUID | 
 **mattermostUpdateIncomingWebhookRequest** | [**MattermostUpdateIncomingWebhookRequest**](MattermostUpdateIncomingWebhookRequest.md)| Incoming webhook to be updated | 

### Return type

[**MattermostIncomingWebhook**](MattermostIncomingWebhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOutgoingWebhook**
> MattermostOutgoingWebhook updateOutgoingWebhook(hookId, mattermostUpdateOutgoingWebhookRequest)

Update an outgoing webhook

Update an outgoing webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostWebhooksApi();
final hookId = hookId_example; // String | outgoing Webhook GUID
final mattermostUpdateOutgoingWebhookRequest = MattermostUpdateOutgoingWebhookRequest(); // MattermostUpdateOutgoingWebhookRequest | Outgoing webhook to be updated

try {
    final result = api_instance.updateOutgoingWebhook(hookId, mattermostUpdateOutgoingWebhookRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostWebhooksApi->updateOutgoingWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hookId** | **String**| outgoing Webhook GUID | 
 **mattermostUpdateOutgoingWebhookRequest** | [**MattermostUpdateOutgoingWebhookRequest**](MattermostUpdateOutgoingWebhookRequest.md)| Outgoing webhook to be updated | 

### Return type

[**MattermostOutgoingWebhook**](MattermostOutgoingWebhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

