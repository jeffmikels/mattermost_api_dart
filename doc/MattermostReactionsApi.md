# mattermost_api.api.MattermostReactionsApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteReaction**](MattermostReactionsApi.md#deletereaction) | **DELETE** /users/{user_id}/posts/{post_id}/reactions/{emoji_name} | Remove a reaction from a post
[**getBulkReactions**](MattermostReactionsApi.md#getbulkreactions) | **POST** /posts/ids/reactions | Bulk get the reaction for posts
[**getReactions**](MattermostReactionsApi.md#getreactions) | **GET** /posts/{post_id}/reactions | Get a list of reactions to a post
[**saveReaction**](MattermostReactionsApi.md#savereaction) | **POST** /reactions | Create a reaction


# **deleteReaction**
> MmStatusOK deleteReaction(userId, postId, emojiName)

Remove a reaction from a post

Deletes a reaction made by a user from the given post. ##### Permissions Must be user or have `manage_system` permission. 

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


final String userId = 'userId_example'; // String | ID of the user
final String postId = 'postId_example'; // String | ID of the post
final String emojiName = 'emojiName_example'; // String | emoji name

try {
  final MmStatusOK? result = await client.reactions.deleteReaction(userId, postId, emojiName); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostReactionsApi->deleteReaction: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID of the user | 
 **postId** | **String**| ID of the post | 
 **emojiName** | **String**| emoji name | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getBulkReactions**
> Map<String, List<MmReaction>> getBulkReactions(requestBody)

Bulk get the reaction for posts

Get a list of reactions made by all users to a given post. ##### Permissions Must have `read_channel` permission for the channel the post is in.  __Minimum server version__: 5.8 

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


final List&lt;String&gt; requestBody = [List<String>()]; // List<String> | Array of post IDs

try {
  final Map&lt;String, List&lt;MmReaction&gt;&gt;? result = await client.reactions.getBulkReactions(requestBody); // await the Future<Map&lt;String, List&lt;MmReaction&gt;&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostReactionsApi->getBulkReactions: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)| Array of post IDs | 

### Return type

[**Map<String, List<MmReaction>>**](List.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getReactions**
> List<MmReaction> getReactions(postId)

Get a list of reactions to a post

Get a list of reactions made by all users to a given post. ##### Permissions Must have `read_channel` permission for the channel the post is in. 

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


final String postId = 'postId_example'; // String | ID of a post

try {
  final List&lt;MmReaction&gt;? result = await client.reactions.getReactions(postId); // await the Future<List&lt;MmReaction&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostReactionsApi->getReactions: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **String**| ID of a post | 

### Return type

[**List<MmReaction>**](MmReaction.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **saveReaction**
> MmReaction saveReaction(mmReaction)

Create a reaction

Create a reaction. ##### Permissions Must have `read_channel` permission for the channel the post is in. 

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


final MmReaction mmReaction = MmReaction(); // MmReaction | The user's reaction with its post_id, user_id, and emoji_name fields set

try {
  final MmReaction? result = await client.reactions.saveReaction(mmReaction); // await the Future<MmReaction?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostReactionsApi->saveReaction: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmReaction** | [**MmReaction**](MmReaction.md)| The user's reaction with its post_id, user_id, and emoji_name fields set | 

### Return type

[**MmReaction**](MmReaction.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

