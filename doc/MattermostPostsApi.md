# mattermost_api.api.MattermostPostsApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPost**](MattermostPostsApi.md#createpost) | **POST** /posts | Create a post
[**createPostEphemeral**](MattermostPostsApi.md#createpostephemeral) | **POST** /posts/ephemeral | Create a ephemeral post
[**deletePost**](MattermostPostsApi.md#deletepost) | **DELETE** /posts/{post_id} | Delete a post
[**doPostAction**](MattermostPostsApi.md#dopostaction) | **POST** /posts/{post_id}/actions/{action_id} | Perform a post action
[**getFileInfosForPost**](MattermostPostsApi.md#getfileinfosforpost) | **GET** /posts/{post_id}/files/info | Get file info for post
[**getFlaggedPostsForUser**](MattermostPostsApi.md#getflaggedpostsforuser) | **GET** /users/{user_id}/posts/flagged | Get a list of flagged posts
[**getPost**](MattermostPostsApi.md#getpost) | **GET** /posts/{post_id} | Get a post
[**getPostThread**](MattermostPostsApi.md#getpostthread) | **GET** /posts/{post_id}/thread | Get a thread
[**getPostsAroundLastUnread**](MattermostPostsApi.md#getpostsaroundlastunread) | **GET** /users/{user_id}/channels/{channel_id}/posts/unread | Get posts around oldest unread
[**getPostsByIds**](MattermostPostsApi.md#getpostsbyids) | **POST** /posts/ids | Get posts by a list of ids
[**getPostsForChannel**](MattermostPostsApi.md#getpostsforchannel) | **GET** /channels/{channel_id}/posts | Get posts for a channel
[**patchPost**](MattermostPostsApi.md#patchpost) | **PUT** /posts/{post_id}/patch | Patch a post
[**pinPost**](MattermostPostsApi.md#pinpost) | **POST** /posts/{post_id}/pin | Pin a post to the channel
[**searchPosts**](MattermostPostsApi.md#searchposts) | **POST** /teams/{team_id}/posts/search | Search for team posts
[**setPostUnread**](MattermostPostsApi.md#setpostunread) | **POST** /users/{user_id}/posts/{post_id}/set_unread | Mark as unread from a post.
[**unpinPost**](MattermostPostsApi.md#unpinpost) | **POST** /posts/{post_id}/unpin | Unpin a post to the channel
[**updatePost**](MattermostPostsApi.md#updatepost) | **PUT** /posts/{post_id} | Update a post


# **createPost**
> MMPost createPost(mMCreatePostRequest, setOnline)

Create a post

Create a new post in a channel. To create the post as a comment on another post, provide `root_id`. ##### Permissions Must have `create_post` permission for the channel the post is being created in. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
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

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final MMCreatePostRequest mMCreatePostRequest = MMCreatePostRequest(); // MMCreatePostRequest | Post object to create
final bool setOnline = true; // bool | Whether to set the user status as online or not.

try {
  final result = await client.posts.createPost(mMCreatePostRequest, setOnline);
  print(result);
} catch (e) {
  print('Exception when calling MattermostPostsApi->createPost: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mMCreatePostRequest** | [**MMCreatePostRequest**](MMCreatePostRequest.md)| Post object to create | 
 **setOnline** | **bool**| Whether to set the user status as online or not. | [optional] 

### Return type

[**MMPost**](MMPost.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **createPostEphemeral**
> MMPost createPostEphemeral(mMCreatePostEphemeralRequest)

Create a ephemeral post

Create a new ephemeral post in a channel. ##### Permissions Must have `create_post_ephemeral` permission (currently only given to system admin) 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
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

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final MMCreatePostEphemeralRequest mMCreatePostEphemeralRequest = MMCreatePostEphemeralRequest(); // MMCreatePostEphemeralRequest | Ephemeral Post object to send

try {
  final result = await client.posts.createPostEphemeral(mMCreatePostEphemeralRequest);
  print(result);
} catch (e) {
  print('Exception when calling MattermostPostsApi->createPostEphemeral: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mMCreatePostEphemeralRequest** | [**MMCreatePostEphemeralRequest**](MMCreatePostEphemeralRequest.md)| Ephemeral Post object to send | 

### Return type

[**MMPost**](MMPost.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **deletePost**
> MMStatusOK deletePost(postId)

Delete a post

Soft deletes a post, by marking the post as deleted in the database. Soft deleted posts will not be returned in post queries. ##### Permissions Must be logged in as the user or have `delete_others_posts` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
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

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String postId = 'postId_example'; // String | ID of the post to delete

try {
  final result = await client.posts.deletePost(postId);
  print(result);
} catch (e) {
  print('Exception when calling MattermostPostsApi->deletePost: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **String**| ID of the post to delete | 

### Return type

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **doPostAction**
> MMStatusOK doPostAction(postId, actionId)

Perform a post action

Perform a post action, which allows users to interact with integrations through posts. ##### Permissions Must be authenticated and have the `read_channel` permission to the channel the post is in. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
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

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String postId = 'postId_example'; // String | Post GUID
final String actionId = 'actionId_example'; // String | Action GUID

try {
  final result = await client.posts.doPostAction(postId, actionId);
  print(result);
} catch (e) {
  print('Exception when calling MattermostPostsApi->doPostAction: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **String**| Post GUID | 
 **actionId** | **String**| Action GUID | 

### Return type

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getFileInfosForPost**
> List<MMFileInfo> getFileInfosForPost(postId, includeDeleted)

Get file info for post

Gets a list of file information objects for the files attached to a post. ##### Permissions Must have `read_channel` permission for the channel the post is in. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
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

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String postId = 'postId_example'; // String | ID of the post
final bool includeDeleted = true; // bool | Defines if result should include deleted posts, must have 'manage_system' (admin) permission.

try {
  final result = await client.posts.getFileInfosForPost(postId, includeDeleted);
  print(result);
} catch (e) {
  print('Exception when calling MattermostPostsApi->getFileInfosForPost: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **String**| ID of the post | 
 **includeDeleted** | **bool**| Defines if result should include deleted posts, must have 'manage_system' (admin) permission. | [optional] [default to false]

### Return type

[**List<MMFileInfo>**](MMFileInfo.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getFlaggedPostsForUser**
> List<MMPostList> getFlaggedPostsForUser(userId, teamId, channelId, page, perPage)

Get a list of flagged posts

Get a page of flagged posts of a user provided user id string. Selects from a channel, team, or all flagged posts by a user. Will only return posts from channels in which the user is member. ##### Permissions Must be user or have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
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

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String userId = 'userId_example'; // String | ID of the user
final String teamId = 'teamId_example'; // String | Team ID
final String channelId = 'channelId_example'; // String | Channel ID
final int page = 56; // int | The page to select
final int perPage = 56; // int | The number of posts per page

try {
  final result = await client.posts.getFlaggedPostsForUser(userId, teamId, channelId, page, perPage);
  print(result);
} catch (e) {
  print('Exception when calling MattermostPostsApi->getFlaggedPostsForUser: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID of the user | 
 **teamId** | **String**| Team ID | [optional] 
 **channelId** | **String**| Channel ID | [optional] 
 **page** | **int**| The page to select | [optional] [default to 0]
 **perPage** | **int**| The number of posts per page | [optional] [default to 60]

### Return type

[**List<MMPostList>**](MMPostList.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getPost**
> MMPost getPost(postId, includeDeleted)

Get a post

Get a single post. ##### Permissions Must have `read_channel` permission for the channel the post is in or if the channel is public, have the `read_public_channels` permission for the team. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
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

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String postId = 'postId_example'; // String | ID of the post to get
final bool includeDeleted = true; // bool | Defines if result should include deleted posts, must have 'manage_system' (admin) permission.

try {
  final result = await client.posts.getPost(postId, includeDeleted);
  print(result);
} catch (e) {
  print('Exception when calling MattermostPostsApi->getPost: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **String**| ID of the post to get | 
 **includeDeleted** | **bool**| Defines if result should include deleted posts, must have 'manage_system' (admin) permission. | [optional] [default to false]

### Return type

[**MMPost**](MMPost.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getPostThread**
> MMPostList getPostThread(postId, perPage, fromPost, fromCreateAt, direction, skipFetchThreads, collapsedThreads, collapsedThreadsExtended)

Get a thread

Get a post and the rest of the posts in the same thread. ##### Permissions Must have `read_channel` permission for the channel the post is in or if the channel is public, have the `read_public_channels` permission for the team. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
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

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String postId = 'postId_example'; // String | ID of a post in the thread
final int perPage = 56; // int | The number of posts per page
final String fromPost = 'fromPost_example'; // String | The post_id to return the next page of posts from
final int fromCreateAt = 56; // int | The create_at timestamp to return the next page of posts from
final String direction = 'direction_example'; // String | The direction to return the posts. Either up or down.
final bool skipFetchThreads = true; // bool | Whether to skip fetching threads or not
final bool collapsedThreads = true; // bool | Whether the client uses CRT or not
final bool collapsedThreadsExtended = true; // bool | Whether to return the associated users as part of the response or not

try {
  final result = await client.posts.getPostThread(postId, perPage, fromPost, fromCreateAt, direction, skipFetchThreads, collapsedThreads, collapsedThreadsExtended);
  print(result);
} catch (e) {
  print('Exception when calling MattermostPostsApi->getPostThread: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **String**| ID of a post in the thread | 
 **perPage** | **int**| The number of posts per page | [optional] [default to 0]
 **fromPost** | **String**| The post_id to return the next page of posts from | [optional] [default to '']
 **fromCreateAt** | **int**| The create_at timestamp to return the next page of posts from | [optional] [default to 0]
 **direction** | **String**| The direction to return the posts. Either up or down. | [optional] [default to '']
 **skipFetchThreads** | **bool**| Whether to skip fetching threads or not | [optional] [default to false]
 **collapsedThreads** | **bool**| Whether the client uses CRT or not | [optional] [default to false]
 **collapsedThreadsExtended** | **bool**| Whether to return the associated users as part of the response or not | [optional] [default to false]

### Return type

[**MMPostList**](MMPostList.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getPostsAroundLastUnread**
> MMPostList getPostsAroundLastUnread(userId, channelId, limitBefore, limitAfter, skipFetchThreads, collapsedThreads, collapsedThreadsExtended)

Get posts around oldest unread

Get the oldest unread post in the channel for the given user as well as the posts around it. The returned list is sorted in descending order (most recent post first). ##### Permissions Must be logged in as the user or have `edit_other_users` permission, and must have `read_channel` permission for the channel. __Minimum server version__: 5.14 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
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

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String userId = 'userId_example'; // String | ID of the user
final String channelId = 'channelId_example'; // String | The channel ID to get the posts for
final int limitBefore = 56; // int | Number of posts before the oldest unread posts. Maximum is 200 posts if limit is set greater than that.
final int limitAfter = 56; // int | Number of posts after and including the oldest unread post. Maximum is 200 posts if limit is set greater than that.
final bool skipFetchThreads = true; // bool | Whether to skip fetching threads or not
final bool collapsedThreads = true; // bool | Whether the client uses CRT or not
final bool collapsedThreadsExtended = true; // bool | Whether to return the associated users as part of the response or not

try {
  final result = await client.posts.getPostsAroundLastUnread(userId, channelId, limitBefore, limitAfter, skipFetchThreads, collapsedThreads, collapsedThreadsExtended);
  print(result);
} catch (e) {
  print('Exception when calling MattermostPostsApi->getPostsAroundLastUnread: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID of the user | 
 **channelId** | **String**| The channel ID to get the posts for | 
 **limitBefore** | **int**| Number of posts before the oldest unread posts. Maximum is 200 posts if limit is set greater than that. | [optional] [default to 60]
 **limitAfter** | **int**| Number of posts after and including the oldest unread post. Maximum is 200 posts if limit is set greater than that. | [optional] [default to 60]
 **skipFetchThreads** | **bool**| Whether to skip fetching threads or not | [optional] [default to false]
 **collapsedThreads** | **bool**| Whether the client uses CRT or not | [optional] [default to false]
 **collapsedThreadsExtended** | **bool**| Whether to return the associated users as part of the response or not | [optional] [default to false]

### Return type

[**MMPostList**](MMPostList.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getPostsByIds**
> List<MMPost> getPostsByIds(requestBody)

Get posts by a list of ids

Fetch a list of posts based on the provided postIDs ##### Permissions Must have `read_channel` permission for the channel the post is in or if the channel is public, have the `read_public_channels` permission for the team. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
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

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final List&lt;String&gt; requestBody = [List<String>()]; // List<String> | List of post ids

try {
  final result = await client.posts.getPostsByIds(requestBody);
  print(result);
} catch (e) {
  print('Exception when calling MattermostPostsApi->getPostsByIds: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)| List of post ids | 

### Return type

[**List<MMPost>**](MMPost.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getPostsForChannel**
> MMPostList getPostsForChannel(channelId, page, perPage, since, before, after)

Get posts for a channel

Get a page of posts in a channel. Use the query parameters to modify the behaviour of this endpoint. The parameter `since` must not be used with any of `before`, `after`, `page`, and `per_page` parameters. If `since` is used, it will always return all posts modified since that time, ordered by their create time limited till 1000. A caveat with this parameter is that there is no guarantee that the returned posts will be consecutive. It is left to the clients to maintain state and fill any missing holes in the post order. ##### Permissions Must have `read_channel` permission for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
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

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String channelId = 'channelId_example'; // String | The channel ID to get the posts for
final int page = 56; // int | The page to select
final int perPage = 56; // int | The number of posts per page
final int since = 56; // int | Provide a non-zero value in Unix time milliseconds to select posts modified after that time
final String before = 'before_example'; // String | A post id to select the posts that came before this one
final String after = 'after_example'; // String | A post id to select the posts that came after this one

try {
  final result = await client.posts.getPostsForChannel(channelId, page, perPage, since, before, after);
  print(result);
} catch (e) {
  print('Exception when calling MattermostPostsApi->getPostsForChannel: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| The channel ID to get the posts for | 
 **page** | **int**| The page to select | [optional] [default to 0]
 **perPage** | **int**| The number of posts per page | [optional] [default to 60]
 **since** | **int**| Provide a non-zero value in Unix time milliseconds to select posts modified after that time | [optional] 
 **before** | **String**| A post id to select the posts that came before this one | [optional] 
 **after** | **String**| A post id to select the posts that came after this one | [optional] 

### Return type

[**MMPostList**](MMPostList.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **patchPost**
> MMPost patchPost(postId, mMPatchPostRequest)

Patch a post

Partially update a post by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must have the `edit_post` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
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

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String postId = 'postId_example'; // String | Post GUID
final MMPatchPostRequest mMPatchPostRequest = MMPatchPostRequest(); // MMPatchPostRequest | Post object that is to be updated

try {
  final result = await client.posts.patchPost(postId, mMPatchPostRequest);
  print(result);
} catch (e) {
  print('Exception when calling MattermostPostsApi->patchPost: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **String**| Post GUID | 
 **mMPatchPostRequest** | [**MMPatchPostRequest**](MMPatchPostRequest.md)| Post object that is to be updated | 

### Return type

[**MMPost**](MMPost.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **pinPost**
> MMStatusOK pinPost(postId)

Pin a post to the channel

Pin a post to a channel it is in based from the provided post id string. ##### Permissions Must be authenticated and have the `read_channel` permission to the channel the post is in. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
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

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String postId = 'postId_example'; // String | Post GUID

try {
  final result = await client.posts.pinPost(postId);
  print(result);
} catch (e) {
  print('Exception when calling MattermostPostsApi->pinPost: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **String**| Post GUID | 

### Return type

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **searchPosts**
> MMPostListWithSearchMatches searchPosts(teamId, mMSearchPostsRequest)

Search for team posts

Search posts in the team and from the provided terms string. ##### Permissions Must be authenticated and have the `view_team` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
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

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String teamId = 'teamId_example'; // String | Team GUID
final MMSearchPostsRequest mMSearchPostsRequest = MMSearchPostsRequest(); // MMSearchPostsRequest | The search terms and logic to use in the search.

try {
  final result = await client.posts.searchPosts(teamId, mMSearchPostsRequest);
  print(result);
} catch (e) {
  print('Exception when calling MattermostPostsApi->searchPosts: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **mMSearchPostsRequest** | [**MMSearchPostsRequest**](MMSearchPostsRequest.md)| The search terms and logic to use in the search. | 

### Return type

[**MMPostListWithSearchMatches**](MMPostListWithSearchMatches.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **setPostUnread**
> MMChannelUnreadAt setPostUnread(userId, postId)

Mark as unread from a post.

Mark a channel as being unread from a given post. ##### Permissions Must have `read_channel` permission for the channel the post is in or if the channel is public, have the `read_public_channels` permission for the team. Must have `edit_other_users` permission if the user is not the one marking the post for himself.  __Minimum server version__: 5.18 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
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

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String userId = 'userId_example'; // String | User GUID
final String postId = 'postId_example'; // String | Post GUID

try {
  final result = await client.posts.setPostUnread(userId, postId);
  print(result);
} catch (e) {
  print('Exception when calling MattermostPostsApi->setPostUnread: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **postId** | **String**| Post GUID | 

### Return type

[**MMChannelUnreadAt**](MMChannelUnreadAt.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **unpinPost**
> MMStatusOK unpinPost(postId)

Unpin a post to the channel

Unpin a post to a channel it is in based from the provided post id string. ##### Permissions Must be authenticated and have the `read_channel` permission to the channel the post is in. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
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

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String postId = 'postId_example'; // String | Post GUID

try {
  final result = await client.posts.unpinPost(postId);
  print(result);
} catch (e) {
  print('Exception when calling MattermostPostsApi->unpinPost: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **String**| Post GUID | 

### Return type

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updatePost**
> MMPost updatePost(postId, mMUpdatePostRequest)

Update a post

Update a post. Only the fields listed below are updatable, omitted fields will be treated as blank. ##### Permissions Must have `edit_post` permission for the channel the post is in. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
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

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String postId = 'postId_example'; // String | ID of the post to update
final MMUpdatePostRequest mMUpdatePostRequest = MMUpdatePostRequest(); // MMUpdatePostRequest | Post object that is to be updated

try {
  final result = await client.posts.updatePost(postId, mMUpdatePostRequest);
  print(result);
} catch (e) {
  print('Exception when calling MattermostPostsApi->updatePost: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **String**| ID of the post to update | 
 **mMUpdatePostRequest** | [**MMUpdatePostRequest**](MMUpdatePostRequest.md)| Post object that is to be updated | 

### Return type

[**MMPost**](MMPost.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

