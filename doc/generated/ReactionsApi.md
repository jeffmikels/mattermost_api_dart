# mattermost_api.api.ReactionsApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteReaction**](ReactionsApi.md#deletereaction) | **DELETE** /users/{user_id}/posts/{post_id}/reactions/{emoji_name} | Remove a reaction from a post
[**getBulkReactions**](ReactionsApi.md#getbulkreactions) | **POST** /posts/ids/reactions | Bulk get the reaction for posts
[**getReactions**](ReactionsApi.md#getreactions) | **GET** /posts/{post_id}/reactions | Get a list of reactions to a post
[**saveReaction**](ReactionsApi.md#savereaction) | **POST** /reactions | Create a reaction


# **deleteReaction**
> StatusOK deleteReaction(userId, postId, emojiName)

Remove a reaction from a post

Deletes a reaction made by a user from the given post. ##### Permissions Must be user or have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ReactionsApi();
final userId = userId_example; // String | ID of the user
final postId = postId_example; // String | ID of the post
final emojiName = emojiName_example; // String | emoji name

try {
    final result = api_instance.deleteReaction(userId, postId, emojiName);
    print(result);
} catch (e) {
    print('Exception when calling ReactionsApi->deleteReaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID of the user | 
 **postId** | **String**| ID of the post | 
 **emojiName** | **String**| emoji name | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBulkReactions**
> Map<String, List<Reaction>> getBulkReactions(requestBody)

Bulk get the reaction for posts

Get a list of reactions made by all users to a given post. ##### Permissions Must have `read_channel` permission for the channel the post is in.  __Minimum server version__: 5.8 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ReactionsApi();
final requestBody = [List<String>()]; // List<String> | Array of post IDs

try {
    final result = api_instance.getBulkReactions(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling ReactionsApi->getBulkReactions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)| Array of post IDs | 

### Return type

[**Map<String, List<Reaction>>**](List.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReactions**
> List<Reaction> getReactions(postId)

Get a list of reactions to a post

Get a list of reactions made by all users to a given post. ##### Permissions Must have `read_channel` permission for the channel the post is in. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ReactionsApi();
final postId = postId_example; // String | ID of a post

try {
    final result = api_instance.getReactions(postId);
    print(result);
} catch (e) {
    print('Exception when calling ReactionsApi->getReactions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **String**| ID of a post | 

### Return type

[**List<Reaction>**](Reaction.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveReaction**
> Reaction saveReaction(reaction)

Create a reaction

Create a reaction. ##### Permissions Must have `read_channel` permission for the channel the post is in. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ReactionsApi();
final reaction = Reaction(); // Reaction | The user's reaction with its post_id, user_id, and emoji_name fields set

try {
    final result = api_instance.saveReaction(reaction);
    print(result);
} catch (e) {
    print('Exception when calling ReactionsApi->saveReaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reaction** | [**Reaction**](Reaction.md)| The user's reaction with its post_id, user_id, and emoji_name fields set | 

### Return type

[**Reaction**](Reaction.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

