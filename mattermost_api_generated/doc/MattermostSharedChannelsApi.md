# mattermost_api.api.MattermostSharedChannelsApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllSharedChannels**](MattermostSharedChannelsApi.md#getallsharedchannels) | **GET** /sharedchannels/{team_id} | Get all shared channels for team.
[**getRemoteClusterInfo**](MattermostSharedChannelsApi.md#getremoteclusterinfo) | **GET** /sharedchannels/remote_info/{remote_id} | Get remote cluster info by ID for user.


# **getAllSharedChannels**
> List<MattermostSharedChannel> getAllSharedChannels(teamId, page, perPage)

Get all shared channels for team.

Get all shared channels for a team.  __Minimum server version__: 5.50  ##### Permissions Must be authenticated. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSharedChannelsApi();
final teamId = teamId_example; // String | Team Id
final page = 56; // int | 
final perPage = 56; // int | 

try {
    final result = api_instance.getAllSharedChannels(teamId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSharedChannelsApi->getAllSharedChannels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team Id | 
 **page** | **int**|  | [optional] [default to 0]
 **perPage** | **int**|  | [optional] [default to 0]

### Return type

[**List<MattermostSharedChannel>**](MattermostSharedChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRemoteClusterInfo**
> MattermostRemoteClusterInfo getRemoteClusterInfo(remoteId)

Get remote cluster info by ID for user.

Get remote cluster info based on remoteId.  __Minimum server version__: 5.50  ##### Permissions Must be authenticated and user must belong to at least one channel shared with the remote cluster. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSharedChannelsApi();
final remoteId = remoteId_example; // String | Remote Cluster GUID

try {
    final result = api_instance.getRemoteClusterInfo(remoteId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSharedChannelsApi->getRemoteClusterInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **remoteId** | **String**| Remote Cluster GUID | 

### Return type

[**MattermostRemoteClusterInfo**](MattermostRemoteClusterInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

