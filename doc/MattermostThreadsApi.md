# mattermost_api.api.MattermostThreadsApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getThreadMentionCountsByChannel**](MattermostThreadsApi.md#getthreadmentioncountsbychannel) | **GET** /users/{user_id}/teams/{team_id}/threads/mention_counts | Get all unread mention counts from followed threads, per-channel
[**getUserThread**](MattermostThreadsApi.md#getuserthread) | **GET** /users/{user_id}/teams/{team_id}/threads/{thread_id} | Get a thread followed by the user
[**getUserThreads**](MattermostThreadsApi.md#getuserthreads) | **GET** /users/{user_id}/teams/{team_id}/threads | Get all threads that user is following
[**startFollowingThread**](MattermostThreadsApi.md#startfollowingthread) | **PUT** /users/{user_id}/teams/{team_id}/threads/{thread_id}/following | Start following a thread
[**stopFollowingThread**](MattermostThreadsApi.md#stopfollowingthread) | **DELETE** /users/{user_id}/teams/{team_id}/threads/{thread_id}/following | Stop following a thread
[**updateThreadReadForUser**](MattermostThreadsApi.md#updatethreadreadforuser) | **PUT** /users/{user_id}/teams/{team_id}/threads/{thread_id}/read/{timestamp} | Mark a thread that user is following read state to the timestamp
[**updateThreadsReadForUser**](MattermostThreadsApi.md#updatethreadsreadforuser) | **PUT** /users/{user_id}/teams/{team_id}/threads/read | Mark all threads that user is following as read


# **getThreadMentionCountsByChannel**
> getThreadMentionCountsByChannel(userId, teamId)

Get all unread mention counts from followed threads, per-channel

Get all unread mention counts from followed threads  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission. 

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

// Then, access MattermostThreadsApi api instance
// final MattermostThreadsApi api_instance = client.threads

final userId = userId_example; // String | The ID of the user. This can also be \"me\" which will point to the current user.
final teamId = teamId_example; // String | The ID of the team in which the thread is.

try {
    await client.threads.getThreadMentionCountsByChannel(userId, teamId);
} catch (e) {
    print('Exception when calling MattermostThreadsApi->getThreadMentionCountsByChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The ID of the user. This can also be \"me\" which will point to the current user. | 
 **teamId** | **String**| The ID of the team in which the thread is. | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserThread**
> getUserThread(userId, teamId, threadId)

Get a thread followed by the user

Get a thread  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission. 

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

// Then, access MattermostThreadsApi api instance
// final MattermostThreadsApi api_instance = client.threads

final userId = userId_example; // String | The ID of the user. This can also be \"me\" which will point to the current user.
final teamId = teamId_example; // String | The ID of the team in which the thread is.
final threadId = threadId_example; // String | The ID of the thread to follow

try {
    await client.threads.getUserThread(userId, teamId, threadId);
} catch (e) {
    print('Exception when calling MattermostThreadsApi->getUserThread: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The ID of the user. This can also be \"me\" which will point to the current user. | 
 **teamId** | **String**| The ID of the team in which the thread is. | 
 **threadId** | **String**| The ID of the thread to follow | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserThreads**
> MattermostUserThreads getUserThreads(userId, teamId, since, deleted, extended, page, pageSize, totalsOnly)

Get all threads that user is following

Get all threads that user is following  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission. 

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

// Then, access MattermostThreadsApi api instance
// final MattermostThreadsApi api_instance = client.threads

final userId = userId_example; // String | The ID of the user. This can also be \"me\" which will point to the current user.
final teamId = teamId_example; // String | The ID of the team in which the thread is.
final since = 56; // int | Since filters the threads based on their LastUpdateAt timestamp.
final deleted = true; // bool | Deleted will specify that even deleted threads should be returned (For mobile sync).
final extended = true; // bool | Extended will enrich the response with participant details.
final page = 56; // int | Page specifies which part of the results to return, by PageSize.
final pageSize = 56; // int | PageSize specifies the size of the returned chunk of results.
final totalsOnly = true; // bool | Setting this to true will only return the total counts.

try {
    final result = await client.threads.getUserThreads(userId, teamId, since, deleted, extended, page, pageSize, totalsOnly);
    print(result);
} catch (e) {
    print('Exception when calling MattermostThreadsApi->getUserThreads: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The ID of the user. This can also be \"me\" which will point to the current user. | 
 **teamId** | **String**| The ID of the team in which the thread is. | 
 **since** | **int**| Since filters the threads based on their LastUpdateAt timestamp. | [optional] 
 **deleted** | **bool**| Deleted will specify that even deleted threads should be returned (For mobile sync). | [optional] [default to false]
 **extended** | **bool**| Extended will enrich the response with participant details. | [optional] [default to false]
 **page** | **int**| Page specifies which part of the results to return, by PageSize. | [optional] [default to 0]
 **pageSize** | **int**| PageSize specifies the size of the returned chunk of results. | [optional] [default to 30]
 **totalsOnly** | **bool**| Setting this to true will only return the total counts. | [optional] [default to false]

### Return type

[**MattermostUserThreads**](MattermostUserThreads.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startFollowingThread**
> startFollowingThread(userId, teamId, threadId)

Start following a thread

Start following a thread  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission. 

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

// Then, access MattermostThreadsApi api instance
// final MattermostThreadsApi api_instance = client.threads

final userId = userId_example; // String | The ID of the user. This can also be \"me\" which will point to the current user.
final teamId = teamId_example; // String | The ID of the team in which the thread is.
final threadId = threadId_example; // String | The ID of the thread to follow

try {
    await client.threads.startFollowingThread(userId, teamId, threadId);
} catch (e) {
    print('Exception when calling MattermostThreadsApi->startFollowingThread: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The ID of the user. This can also be \"me\" which will point to the current user. | 
 **teamId** | **String**| The ID of the team in which the thread is. | 
 **threadId** | **String**| The ID of the thread to follow | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stopFollowingThread**
> stopFollowingThread(userId, teamId, threadId)

Stop following a thread

Stop following a thread  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission. 

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

// Then, access MattermostThreadsApi api instance
// final MattermostThreadsApi api_instance = client.threads

final userId = userId_example; // String | The ID of the user. This can also be \"me\" which will point to the current user.
final teamId = teamId_example; // String | The ID of the team in which the thread is.
final threadId = threadId_example; // String | The ID of the thread to update

try {
    await client.threads.stopFollowingThread(userId, teamId, threadId);
} catch (e) {
    print('Exception when calling MattermostThreadsApi->stopFollowingThread: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The ID of the user. This can also be \"me\" which will point to the current user. | 
 **teamId** | **String**| The ID of the team in which the thread is. | 
 **threadId** | **String**| The ID of the thread to update | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateThreadReadForUser**
> updateThreadReadForUser(userId, teamId, threadId, timestamp)

Mark a thread that user is following read state to the timestamp

Mark a thread that user is following as read  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission. 

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

// Then, access MattermostThreadsApi api instance
// final MattermostThreadsApi api_instance = client.threads

final userId = userId_example; // String | The ID of the user. This can also be \"me\" which will point to the current user.
final teamId = teamId_example; // String | The ID of the team in which the thread is.
final threadId = threadId_example; // String | The ID of the thread to update
final timestamp = timestamp_example; // String | The timestamp to which the thread's \"last read\" state will be reset.

try {
    await client.threads.updateThreadReadForUser(userId, teamId, threadId, timestamp);
} catch (e) {
    print('Exception when calling MattermostThreadsApi->updateThreadReadForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The ID of the user. This can also be \"me\" which will point to the current user. | 
 **teamId** | **String**| The ID of the team in which the thread is. | 
 **threadId** | **String**| The ID of the thread to update | 
 **timestamp** | **String**| The timestamp to which the thread's \"last read\" state will be reset. | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateThreadsReadForUser**
> updateThreadsReadForUser(userId, teamId)

Mark all threads that user is following as read

Mark all threads that user is following as read  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission. 

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

// Then, access MattermostThreadsApi api instance
// final MattermostThreadsApi api_instance = client.threads

final userId = userId_example; // String | The ID of the user. This can also be \"me\" which will point to the current user.
final teamId = teamId_example; // String | The ID of the team in which the thread is.

try {
    await client.threads.updateThreadsReadForUser(userId, teamId);
} catch (e) {
    print('Exception when calling MattermostThreadsApi->updateThreadsReadForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The ID of the user. This can also be \"me\" which will point to the current user. | 
 **teamId** | **String**| The ID of the team in which the thread is. | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
