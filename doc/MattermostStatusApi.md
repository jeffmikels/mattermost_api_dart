# mattermost_api.api.MattermostStatusApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUserStatus**](MattermostStatusApi.md#getuserstatus) | **GET** /users/{user_id}/status | Get user status
[**getUsersStatusesByIds**](MattermostStatusApi.md#getusersstatusesbyids) | **POST** /users/status/ids | Get user statuses by id
[**postUserRecentCustomStatusDelete**](MattermostStatusApi.md#postuserrecentcustomstatusdelete) | **POST** /users/{user_id}/status/custom/recent/delete | Delete user's recent custom status
[**removeRecentCustomStatus**](MattermostStatusApi.md#removerecentcustomstatus) | **DELETE** /users/{user_id}/status/custom/recent | Delete user's recent custom status
[**unsetUserCustomStatus**](MattermostStatusApi.md#unsetusercustomstatus) | **DELETE** /users/{user_id}/status/custom | Unsets user custom status
[**updateUserCustomStatus**](MattermostStatusApi.md#updateusercustomstatus) | **PUT** /users/{user_id}/status/custom | Update user custom status
[**updateUserStatus**](MattermostStatusApi.md#updateuserstatus) | **PUT** /users/{user_id}/status | Update user status


# **getUserStatus**
> MmStatus getUserStatus(userId)

Get user status

Get user status by id from the server. ##### Permissions Must be authenticated. 

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


final String userId = 'userId_example'; // String | User ID

try {
  final MmStatus? result = await client.status.getUserStatus(userId); // await the Future<MmStatus?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostStatusApi->getUserStatus: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User ID | 

### Return type

[**MmStatus**](MmStatus.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getUsersStatusesByIds**
> List<MmStatus> getUsersStatusesByIds(requestBody)

Get user statuses by id

Get a list of user statuses by id from the server. ##### Permissions Must be authenticated. 

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


final List&lt;String&gt; requestBody = [List<String>()]; // List<String> | List of user ids to fetch

try {
  final List&lt;MmStatus&gt;? result = await client.status.getUsersStatusesByIds(requestBody); // await the Future<List&lt;MmStatus&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostStatusApi->getUsersStatusesByIds: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)| List of user ids to fetch | 

### Return type

[**List<MmStatus>**](MmStatus.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **postUserRecentCustomStatusDelete**
> postUserRecentCustomStatusDelete(userId, mmRemoveRecentCustomStatusRequest)

Delete user's recent custom status

Deletes a user's recent custom status by removing the specific status from the recentCustomStatuses in the user's props and updates the user. ##### Permissions Must be logged in as the user whose recent custom status is being deleted. 

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


final String userId = 'userId_example'; // String | User ID
final MmRemoveRecentCustomStatusRequest mmRemoveRecentCustomStatusRequest = MmRemoveRecentCustomStatusRequest(); // MmRemoveRecentCustomStatusRequest | Custom Status object that is to be removed from the recent custom statuses.

try {
  await client.status.postUserRecentCustomStatusDelete(userId, mmRemoveRecentCustomStatusRequest); 
} catch (e) {
  print('Exception when calling MattermostStatusApi->postUserRecentCustomStatusDelete: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User ID | 
 **mmRemoveRecentCustomStatusRequest** | [**MmRemoveRecentCustomStatusRequest**](MmRemoveRecentCustomStatusRequest.md)| Custom Status object that is to be removed from the recent custom statuses. | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **removeRecentCustomStatus**
> removeRecentCustomStatus(userId, mmRemoveRecentCustomStatusRequest)

Delete user's recent custom status

Deletes a user's recent custom status by removing the specific status from the recentCustomStatuses in the user's props and updates the user. ##### Permissions Must be logged in as the user whose recent custom status is being deleted. 

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


final String userId = 'userId_example'; // String | User ID
final MmRemoveRecentCustomStatusRequest mmRemoveRecentCustomStatusRequest = MmRemoveRecentCustomStatusRequest(); // MmRemoveRecentCustomStatusRequest | Custom Status object that is to be removed from the recent custom statuses.

try {
  await client.status.removeRecentCustomStatus(userId, mmRemoveRecentCustomStatusRequest); 
} catch (e) {
  print('Exception when calling MattermostStatusApi->removeRecentCustomStatus: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User ID | 
 **mmRemoveRecentCustomStatusRequest** | [**MmRemoveRecentCustomStatusRequest**](MmRemoveRecentCustomStatusRequest.md)| Custom Status object that is to be removed from the recent custom statuses. | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **unsetUserCustomStatus**
> unsetUserCustomStatus(userId)

Unsets user custom status

Unsets a user's custom status by updating the user's props and updates the user ##### Permissions Must be logged in as the user whose custom status is being removed. 

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


final String userId = 'userId_example'; // String | User ID

try {
  await client.status.unsetUserCustomStatus(userId); 
} catch (e) {
  print('Exception when calling MattermostStatusApi->unsetUserCustomStatus: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User ID | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateUserCustomStatus**
> updateUserCustomStatus(userId, mmUpdateUserCustomStatusRequest)

Update user custom status

Updates a user's custom status by setting the value in the user's props and updates the user. Also save the given custom status to the recent custom statuses in the user's props ##### Permissions Must be logged in as the user whose custom status is being updated. 

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


final String userId = 'userId_example'; // String | User ID
final MmUpdateUserCustomStatusRequest mmUpdateUserCustomStatusRequest = MmUpdateUserCustomStatusRequest(); // MmUpdateUserCustomStatusRequest | Custom status object that is to be updated

try {
  await client.status.updateUserCustomStatus(userId, mmUpdateUserCustomStatusRequest); 
} catch (e) {
  print('Exception when calling MattermostStatusApi->updateUserCustomStatus: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User ID | 
 **mmUpdateUserCustomStatusRequest** | [**MmUpdateUserCustomStatusRequest**](MmUpdateUserCustomStatusRequest.md)| Custom status object that is to be updated | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateUserStatus**
> MmStatus updateUserStatus(userId, mmUpdateUserStatusRequest)

Update user status

Manually set a user's status. When setting a user's status, the status will remain that value until set \"online\" again, which will return the status to being automatically updated based on user activity. ##### Permissions Must have `edit_other_users` permission for the team. 

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


final String userId = 'userId_example'; // String | User ID
final MmUpdateUserStatusRequest mmUpdateUserStatusRequest = MmUpdateUserStatusRequest(); // MmUpdateUserStatusRequest | Status object that is to be updated

try {
  final MmStatus? result = await client.status.updateUserStatus(userId, mmUpdateUserStatusRequest); // await the Future<MmStatus?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostStatusApi->updateUserStatus: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User ID | 
 **mmUpdateUserStatusRequest** | [**MmUpdateUserStatusRequest**](MmUpdateUserStatusRequest.md)| Status object that is to be updated | 

### Return type

[**MmStatus**](MmStatus.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

