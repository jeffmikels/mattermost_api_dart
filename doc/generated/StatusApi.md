# mattermost_api.api.StatusApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUserStatus**](StatusApi.md#getuserstatus) | **GET** /users/{user_id}/status | Get user status
[**getUsersStatusesByIds**](StatusApi.md#getusersstatusesbyids) | **POST** /users/status/ids | Get user statuses by id
[**postUserRecentCustomStatusDelete**](StatusApi.md#postuserrecentcustomstatusdelete) | **POST** /users/{user_id}/status/custom/recent/delete | Delete user's recent custom status
[**removeRecentCustomStatus**](StatusApi.md#removerecentcustomstatus) | **DELETE** /users/{user_id}/status/custom/recent | Delete user's recent custom status
[**unsetUserCustomStatus**](StatusApi.md#unsetusercustomstatus) | **DELETE** /users/{user_id}/status/custom | Unsets user custom status
[**updateUserCustomStatus**](StatusApi.md#updateusercustomstatus) | **PUT** /users/{user_id}/status/custom | Update user custom status
[**updateUserStatus**](StatusApi.md#updateuserstatus) | **PUT** /users/{user_id}/status | Update user status


# **getUserStatus**
> Status getUserStatus(userId)

Get user status

Get user status by id from the server. ##### Permissions Must be authenticated. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StatusApi();
final userId = userId_example; // String | User ID

try {
    final result = api_instance.getUserStatus(userId);
    print(result);
} catch (e) {
    print('Exception when calling StatusApi->getUserStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User ID | 

### Return type

[**Status**](Status.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersStatusesByIds**
> List<Status> getUsersStatusesByIds(requestBody)

Get user statuses by id

Get a list of user statuses by id from the server. ##### Permissions Must be authenticated. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StatusApi();
final requestBody = [List<String>()]; // List<String> | List of user ids to fetch

try {
    final result = api_instance.getUsersStatusesByIds(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling StatusApi->getUsersStatusesByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)| List of user ids to fetch | 

### Return type

[**List<Status>**](Status.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postUserRecentCustomStatusDelete**
> postUserRecentCustomStatusDelete(userId, removeRecentCustomStatusRequest)

Delete user's recent custom status

Deletes a user's recent custom status by removing the specific status from the recentCustomStatuses in the user's props and updates the user. ##### Permissions Must be logged in as the user whose recent custom status is being deleted. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StatusApi();
final userId = userId_example; // String | User ID
final removeRecentCustomStatusRequest = RemoveRecentCustomStatusRequest(); // RemoveRecentCustomStatusRequest | Custom Status object that is to be removed from the recent custom statuses.

try {
    api_instance.postUserRecentCustomStatusDelete(userId, removeRecentCustomStatusRequest);
} catch (e) {
    print('Exception when calling StatusApi->postUserRecentCustomStatusDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User ID | 
 **removeRecentCustomStatusRequest** | [**RemoveRecentCustomStatusRequest**](RemoveRecentCustomStatusRequest.md)| Custom Status object that is to be removed from the recent custom statuses. | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeRecentCustomStatus**
> removeRecentCustomStatus(userId, removeRecentCustomStatusRequest)

Delete user's recent custom status

Deletes a user's recent custom status by removing the specific status from the recentCustomStatuses in the user's props and updates the user. ##### Permissions Must be logged in as the user whose recent custom status is being deleted. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StatusApi();
final userId = userId_example; // String | User ID
final removeRecentCustomStatusRequest = RemoveRecentCustomStatusRequest(); // RemoveRecentCustomStatusRequest | Custom Status object that is to be removed from the recent custom statuses.

try {
    api_instance.removeRecentCustomStatus(userId, removeRecentCustomStatusRequest);
} catch (e) {
    print('Exception when calling StatusApi->removeRecentCustomStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User ID | 
 **removeRecentCustomStatusRequest** | [**RemoveRecentCustomStatusRequest**](RemoveRecentCustomStatusRequest.md)| Custom Status object that is to be removed from the recent custom statuses. | 

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
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StatusApi();
final userId = userId_example; // String | User ID

try {
    api_instance.unsetUserCustomStatus(userId);
} catch (e) {
    print('Exception when calling StatusApi->unsetUserCustomStatus: $e\n');
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
> updateUserCustomStatus(userId, updateUserCustomStatusRequest)

Update user custom status

Updates a user's custom status by setting the value in the user's props and updates the user. Also save the given custom status to the recent custom statuses in the user's props ##### Permissions Must be logged in as the user whose custom status is being updated. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StatusApi();
final userId = userId_example; // String | User ID
final updateUserCustomStatusRequest = UpdateUserCustomStatusRequest(); // UpdateUserCustomStatusRequest | Custom status object that is to be updated

try {
    api_instance.updateUserCustomStatus(userId, updateUserCustomStatusRequest);
} catch (e) {
    print('Exception when calling StatusApi->updateUserCustomStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User ID | 
 **updateUserCustomStatusRequest** | [**UpdateUserCustomStatusRequest**](UpdateUserCustomStatusRequest.md)| Custom status object that is to be updated | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserStatus**
> Status updateUserStatus(userId, updateUserStatusRequest)

Update user status

Manually set a user's status. When setting a user's status, the status will remain that value until set \"online\" again, which will return the status to being automatically updated based on user activity. ##### Permissions Must have `edit_other_users` permission for the team. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StatusApi();
final userId = userId_example; // String | User ID
final updateUserStatusRequest = UpdateUserStatusRequest(); // UpdateUserStatusRequest | Status object that is to be updated

try {
    final result = api_instance.updateUserStatus(userId, updateUserStatusRequest);
    print(result);
} catch (e) {
    print('Exception when calling StatusApi->updateUserStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User ID | 
 **updateUserStatusRequest** | [**UpdateUserStatusRequest**](UpdateUserStatusRequest.md)| Status object that is to be updated | 

### Return type

[**Status**](Status.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

