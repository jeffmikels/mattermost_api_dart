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
> MattermostStatus getUserStatus(userId)

Get user status

Get user status by id from the server. ##### Permissions Must be authenticated. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostStatusApi();
final userId = userId_example; // String | User ID

try {
    final result = api_instance.getUserStatus(userId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostStatusApi->getUserStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User ID | 

### Return type

[**MattermostStatus**](MattermostStatus.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersStatusesByIds**
> List<MattermostStatus> getUsersStatusesByIds(requestBody)

Get user statuses by id

Get a list of user statuses by id from the server. ##### Permissions Must be authenticated. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostStatusApi();
final requestBody = [List<String>()]; // List<String> | List of user ids to fetch

try {
    final result = api_instance.getUsersStatusesByIds(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MattermostStatusApi->getUsersStatusesByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)| List of user ids to fetch | 

### Return type

[**List<MattermostStatus>**](MattermostStatus.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postUserRecentCustomStatusDelete**
> postUserRecentCustomStatusDelete(userId, mattermostRemoveRecentCustomStatusRequest)

Delete user's recent custom status

Deletes a user's recent custom status by removing the specific status from the recentCustomStatuses in the user's props and updates the user. ##### Permissions Must be logged in as the user whose recent custom status is being deleted. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostStatusApi();
final userId = userId_example; // String | User ID
final mattermostRemoveRecentCustomStatusRequest = MattermostRemoveRecentCustomStatusRequest(); // MattermostRemoveRecentCustomStatusRequest | Custom Status object that is to be removed from the recent custom statuses.

try {
    api_instance.postUserRecentCustomStatusDelete(userId, mattermostRemoveRecentCustomStatusRequest);
} catch (e) {
    print('Exception when calling MattermostStatusApi->postUserRecentCustomStatusDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User ID | 
 **mattermostRemoveRecentCustomStatusRequest** | [**MattermostRemoveRecentCustomStatusRequest**](MattermostRemoveRecentCustomStatusRequest.md)| Custom Status object that is to be removed from the recent custom statuses. | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeRecentCustomStatus**
> removeRecentCustomStatus(userId, mattermostRemoveRecentCustomStatusRequest)

Delete user's recent custom status

Deletes a user's recent custom status by removing the specific status from the recentCustomStatuses in the user's props and updates the user. ##### Permissions Must be logged in as the user whose recent custom status is being deleted. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostStatusApi();
final userId = userId_example; // String | User ID
final mattermostRemoveRecentCustomStatusRequest = MattermostRemoveRecentCustomStatusRequest(); // MattermostRemoveRecentCustomStatusRequest | Custom Status object that is to be removed from the recent custom statuses.

try {
    api_instance.removeRecentCustomStatus(userId, mattermostRemoveRecentCustomStatusRequest);
} catch (e) {
    print('Exception when calling MattermostStatusApi->removeRecentCustomStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User ID | 
 **mattermostRemoveRecentCustomStatusRequest** | [**MattermostRemoveRecentCustomStatusRequest**](MattermostRemoveRecentCustomStatusRequest.md)| Custom Status object that is to be removed from the recent custom statuses. | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unsetUserCustomStatus**
> unsetUserCustomStatus(userId)

Unsets user custom status

Unsets a user's custom status by updating the user's props and updates the user ##### Permissions Must be logged in as the user whose custom status is being removed. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostStatusApi();
final userId = userId_example; // String | User ID

try {
    api_instance.unsetUserCustomStatus(userId);
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

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserCustomStatus**
> updateUserCustomStatus(userId, mattermostUpdateUserCustomStatusRequest)

Update user custom status

Updates a user's custom status by setting the value in the user's props and updates the user. Also save the given custom status to the recent custom statuses in the user's props ##### Permissions Must be logged in as the user whose custom status is being updated. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostStatusApi();
final userId = userId_example; // String | User ID
final mattermostUpdateUserCustomStatusRequest = MattermostUpdateUserCustomStatusRequest(); // MattermostUpdateUserCustomStatusRequest | Custom status object that is to be updated

try {
    api_instance.updateUserCustomStatus(userId, mattermostUpdateUserCustomStatusRequest);
} catch (e) {
    print('Exception when calling MattermostStatusApi->updateUserCustomStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User ID | 
 **mattermostUpdateUserCustomStatusRequest** | [**MattermostUpdateUserCustomStatusRequest**](MattermostUpdateUserCustomStatusRequest.md)| Custom status object that is to be updated | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserStatus**
> MattermostStatus updateUserStatus(userId, mattermostUpdateUserStatusRequest)

Update user status

Manually set a user's status. When setting a user's status, the status will remain that value until set \"online\" again, which will return the status to being automatically updated based on user activity. ##### Permissions Must have `edit_other_users` permission for the team. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostStatusApi();
final userId = userId_example; // String | User ID
final mattermostUpdateUserStatusRequest = MattermostUpdateUserStatusRequest(); // MattermostUpdateUserStatusRequest | Status object that is to be updated

try {
    final result = api_instance.updateUserStatus(userId, mattermostUpdateUserStatusRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostStatusApi->updateUserStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User ID | 
 **mattermostUpdateUserStatusRequest** | [**MattermostUpdateUserStatusRequest**](MattermostUpdateUserStatusRequest.md)| Status object that is to be updated | 

### Return type

[**MattermostStatus**](MattermostStatus.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

