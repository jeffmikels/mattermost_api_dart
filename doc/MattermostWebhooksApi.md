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
> MmIncomingWebhook createIncomingWebhook(mmCreateIncomingWebhookRequest)

Create an incoming webhook

Create an incoming webhook for a channel. ##### Permissions `manage_webhooks` for the team the webhook is in.  `manage_others_incoming_webhooks` for the team the webhook is in if the user is different than the requester. 

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


final MmCreateIncomingWebhookRequest mmCreateIncomingWebhookRequest = MmCreateIncomingWebhookRequest(); // MmCreateIncomingWebhookRequest | Incoming webhook to be created

try {
  final MmIncomingWebhook? result = await client.webhooks.createIncomingWebhook(mmCreateIncomingWebhookRequest); // await the Future<MmIncomingWebhook?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostWebhooksApi->createIncomingWebhook: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmCreateIncomingWebhookRequest** | [**MmCreateIncomingWebhookRequest**](MmCreateIncomingWebhookRequest.md)| Incoming webhook to be created | 

### Return type

[**MmIncomingWebhook**](MmIncomingWebhook.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **createOutgoingWebhook**
> MmOutgoingWebhook createOutgoingWebhook(mmCreateOutgoingWebhookRequest)

Create an outgoing webhook

Create an outgoing webhook for a team. ##### Permissions `manage_webhooks` for the team the webhook is in.  `manage_others_outgoing_webhooks` for the team the webhook is in if the user is different than the requester. 

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


final MmCreateOutgoingWebhookRequest mmCreateOutgoingWebhookRequest = MmCreateOutgoingWebhookRequest(); // MmCreateOutgoingWebhookRequest | Outgoing webhook to be created

try {
  final MmOutgoingWebhook? result = await client.webhooks.createOutgoingWebhook(mmCreateOutgoingWebhookRequest); // await the Future<MmOutgoingWebhook?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostWebhooksApi->createOutgoingWebhook: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmCreateOutgoingWebhookRequest** | [**MmCreateOutgoingWebhookRequest**](MmCreateOutgoingWebhookRequest.md)| Outgoing webhook to be created | 

### Return type

[**MmOutgoingWebhook**](MmOutgoingWebhook.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **deleteIncomingWebhook**
> MmStatusOK deleteIncomingWebhook(hookId)

Delete an incoming webhook

Delete an incoming webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

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


final String hookId = 'hookId_example'; // String | Incoming webhook GUID

try {
  final MmStatusOK? result = await client.webhooks.deleteIncomingWebhook(hookId); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostWebhooksApi->deleteIncomingWebhook: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hookId** | **String**| Incoming webhook GUID | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **deleteOutgoingWebhook**
> MmStatusOK deleteOutgoingWebhook(hookId)

Delete an outgoing webhook

Delete an outgoing webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

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


final String hookId = 'hookId_example'; // String | Outgoing webhook GUID

try {
  final MmStatusOK? result = await client.webhooks.deleteOutgoingWebhook(hookId); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostWebhooksApi->deleteOutgoingWebhook: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hookId** | **String**| Outgoing webhook GUID | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getIncomingWebhook**
> MmIncomingWebhook getIncomingWebhook(hookId)

Get an incoming webhook

Get an incoming webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

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


final String hookId = 'hookId_example'; // String | Incoming Webhook GUID

try {
  final MmIncomingWebhook? result = await client.webhooks.getIncomingWebhook(hookId); // await the Future<MmIncomingWebhook?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostWebhooksApi->getIncomingWebhook: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hookId** | **String**| Incoming Webhook GUID | 

### Return type

[**MmIncomingWebhook**](MmIncomingWebhook.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getIncomingWebhooks**
> List<MmIncomingWebhook> getIncomingWebhooks(page, perPage, teamId)

List incoming webhooks

Get a page of a list of incoming webhooks. Optionally filter for a specific team using query parameters. ##### Permissions `manage_webhooks` for the system or `manage_webhooks` for the specific team. 

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


final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of hooks per page.
final String teamId = 'teamId_example'; // String | The ID of the team to get hooks for.

try {
  final List&lt;MmIncomingWebhook&gt;? result = await client.webhooks.getIncomingWebhooks(page, perPage, teamId); // await the Future<List&lt;MmIncomingWebhook&gt;?>
  print(result ?? 'resolved to null');
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

[**List<MmIncomingWebhook>**](MmIncomingWebhook.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getOutgoingWebhook**
> MmOutgoingWebhook getOutgoingWebhook(hookId)

Get an outgoing webhook

Get an outgoing webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

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


final String hookId = 'hookId_example'; // String | Outgoing webhook GUID

try {
  final MmOutgoingWebhook? result = await client.webhooks.getOutgoingWebhook(hookId); // await the Future<MmOutgoingWebhook?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostWebhooksApi->getOutgoingWebhook: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hookId** | **String**| Outgoing webhook GUID | 

### Return type

[**MmOutgoingWebhook**](MmOutgoingWebhook.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getOutgoingWebhooks**
> List<MmOutgoingWebhook> getOutgoingWebhooks(page, perPage, teamId, channelId)

List outgoing webhooks

Get a page of a list of outgoing webhooks. Optionally filter for a specific team or channel using query parameters. ##### Permissions `manage_webhooks` for the system or `manage_webhooks` for the specific team/channel. 

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


final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of hooks per page.
final String teamId = 'teamId_example'; // String | The ID of the team to get hooks for.
final String channelId = 'channelId_example'; // String | The ID of the channel to get hooks for.

try {
  final List&lt;MmOutgoingWebhook&gt;? result = await client.webhooks.getOutgoingWebhooks(page, perPage, teamId, channelId); // await the Future<List&lt;MmOutgoingWebhook&gt;?>
  print(result ?? 'resolved to null');
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

[**List<MmOutgoingWebhook>**](MmOutgoingWebhook.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **regenOutgoingHookToken**
> MmStatusOK regenOutgoingHookToken(hookId)

Regenerate the token for the outgoing webhook.

Regenerate the token for the outgoing webhook. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

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


final String hookId = 'hookId_example'; // String | Outgoing webhook GUID

try {
  final MmStatusOK? result = await client.webhooks.regenOutgoingHookToken(hookId); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostWebhooksApi->regenOutgoingHookToken: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hookId** | **String**| Outgoing webhook GUID | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateIncomingWebhook**
> MmIncomingWebhook updateIncomingWebhook(hookId, mmUpdateIncomingWebhookRequest)

Update an incoming webhook

Update an incoming webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

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


final String hookId = 'hookId_example'; // String | Incoming Webhook GUID
final MmUpdateIncomingWebhookRequest mmUpdateIncomingWebhookRequest = MmUpdateIncomingWebhookRequest(); // MmUpdateIncomingWebhookRequest | Incoming webhook to be updated

try {
  final MmIncomingWebhook? result = await client.webhooks.updateIncomingWebhook(hookId, mmUpdateIncomingWebhookRequest); // await the Future<MmIncomingWebhook?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostWebhooksApi->updateIncomingWebhook: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hookId** | **String**| Incoming Webhook GUID | 
 **mmUpdateIncomingWebhookRequest** | [**MmUpdateIncomingWebhookRequest**](MmUpdateIncomingWebhookRequest.md)| Incoming webhook to be updated | 

### Return type

[**MmIncomingWebhook**](MmIncomingWebhook.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateOutgoingWebhook**
> MmOutgoingWebhook updateOutgoingWebhook(hookId, mmUpdateOutgoingWebhookRequest)

Update an outgoing webhook

Update an outgoing webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

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


final String hookId = 'hookId_example'; // String | outgoing Webhook GUID
final MmUpdateOutgoingWebhookRequest mmUpdateOutgoingWebhookRequest = MmUpdateOutgoingWebhookRequest(); // MmUpdateOutgoingWebhookRequest | Outgoing webhook to be updated

try {
  final MmOutgoingWebhook? result = await client.webhooks.updateOutgoingWebhook(hookId, mmUpdateOutgoingWebhookRequest); // await the Future<MmOutgoingWebhook?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostWebhooksApi->updateOutgoingWebhook: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hookId** | **String**| outgoing Webhook GUID | 
 **mmUpdateOutgoingWebhookRequest** | [**MmUpdateOutgoingWebhookRequest**](MmUpdateOutgoingWebhookRequest.md)| Outgoing webhook to be updated | 

### Return type

[**MmOutgoingWebhook**](MmOutgoingWebhook.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

