# mattermost_api.api.InsightsApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTopChannelsForTeam**](InsightsApi.md#gettopchannelsforteam) | **GET** /teams/{team_id}/top/channels | Get a list of the top channels for a team.
[**getTopChannelsForUser**](InsightsApi.md#gettopchannelsforuser) | **GET** /users/me/top/channels | Get a list of the top channels for a user.
[**getTopReactionsForTeam**](InsightsApi.md#gettopreactionsforteam) | **GET** /teams/{team_id}/top/reactions | Get a list of the top reactions for a team.
[**getTopReactionsForUser**](InsightsApi.md#gettopreactionsforuser) | **GET** /users/me/top/reactions | Get a list of the top reactions for a user.


# **getTopChannelsForTeam**
> TopChannelList getTopChannelsForTeam(teamId, timeRange, page, perPage)

Get a list of the top channels for a team.

Get a list of the top public and private channels (the user is a member of) for a given team. ##### Permissions Must have `view_team` permission for the team. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = InsightsApi();
final teamId = teamId_example; // String | Team GUID
final timeRange = timeRange_example; // String | Time range can be \"today\", \"7_day\", or \"28_day\". - `today`: channels with posts on the current day. - `7_day`: channels with posts in the last 7 days. - `28_day`: channels with posts in the last 28 days. 
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of items per page, up to a maximum of 200.

try {
    final result = api_instance.getTopChannelsForTeam(teamId, timeRange, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling InsightsApi->getTopChannelsForTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **timeRange** | **String**| Time range can be \"today\", \"7_day\", or \"28_day\". - `today`: channels with posts on the current day. - `7_day`: channels with posts in the last 7 days. - `28_day`: channels with posts in the last 28 days.  | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of items per page, up to a maximum of 200. | [optional] [default to 60]

### Return type

[**TopChannelList**](TopChannelList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTopChannelsForUser**
> TopReactionList getTopChannelsForUser(userId, timeRange, page, perPage, teamId)

Get a list of the top channels for a user.

Get a list of the top public and private channels (the user is a member of) for a given user. ##### Permissions Must be logged in as the user. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = InsightsApi();
final userId = userId_example; // String | User GUID
final timeRange = timeRange_example; // String | Time range can be \"today\", \"7_day\", or \"28_day\". - `today`: channels with posts on the current day. - `7_day`: channels with posts in the last 7 days. - `28_day`: channels with posts in the last 28 days. 
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of items per page, up to a maximum of 200.
final teamId = teamId_example; // String | Team ID will scope the response to a given team. ##### Permissions Must have `view_team` permission for the team. 

try {
    final result = api_instance.getTopChannelsForUser(userId, timeRange, page, perPage, teamId);
    print(result);
} catch (e) {
    print('Exception when calling InsightsApi->getTopChannelsForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **timeRange** | **String**| Time range can be \"today\", \"7_day\", or \"28_day\". - `today`: channels with posts on the current day. - `7_day`: channels with posts in the last 7 days. - `28_day`: channels with posts in the last 28 days.  | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of items per page, up to a maximum of 200. | [optional] [default to 60]
 **teamId** | **String**| Team ID will scope the response to a given team. ##### Permissions Must have `view_team` permission for the team.  | [optional] 

### Return type

[**TopReactionList**](TopReactionList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTopReactionsForTeam**
> TopReactionList getTopReactionsForTeam(teamId, timeRange, page, perPage)

Get a list of the top reactions for a team.

Get a list of the top reactions across all public and private channels (the user is a member of) for a given team. ##### Permissions Must have `view_team` permission for the team. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = InsightsApi();
final teamId = teamId_example; // String | Team GUID
final timeRange = timeRange_example; // String | Time range can be \"today\", \"7_day\", or \"28_day\". - `today`: reactions posted on the current day. - `7_day`: reactions posted in the last 7 days. - `28_day`: reactions posted in the last 28 days. 
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of items per page, up to a maximum of 200.

try {
    final result = api_instance.getTopReactionsForTeam(teamId, timeRange, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling InsightsApi->getTopReactionsForTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **timeRange** | **String**| Time range can be \"today\", \"7_day\", or \"28_day\". - `today`: reactions posted on the current day. - `7_day`: reactions posted in the last 7 days. - `28_day`: reactions posted in the last 28 days.  | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of items per page, up to a maximum of 200. | [optional] [default to 60]

### Return type

[**TopReactionList**](TopReactionList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTopReactionsForUser**
> TopReactionList getTopReactionsForUser(userId, timeRange, page, perPage, teamId)

Get a list of the top reactions for a user.

Get a list of the top reactions across all public and private channels (the user is a member of) for a given user. If no `team_id` is provided, this will also include reactions posted by the given user in direct and group messages. ##### Permissions Must be logged in as the user. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = InsightsApi();
final userId = userId_example; // String | User GUID
final timeRange = timeRange_example; // String | Time range can be \"today\", \"7_day\", or \"28_day\". - `today`: reactions posted on the current day. - `7_day`: reactions posted in the last 7 days. - `28_day`: reactions posted in the last 28 days. 
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of items per page, up to a maximum of 200.
final teamId = teamId_example; // String | Team ID will scope the response to a given team and exclude direct and group messages. ##### Permissions Must have `view_team` permission for the team. 

try {
    final result = api_instance.getTopReactionsForUser(userId, timeRange, page, perPage, teamId);
    print(result);
} catch (e) {
    print('Exception when calling InsightsApi->getTopReactionsForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **timeRange** | **String**| Time range can be \"today\", \"7_day\", or \"28_day\". - `today`: reactions posted on the current day. - `7_day`: reactions posted in the last 7 days. - `28_day`: reactions posted in the last 28 days.  | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of items per page, up to a maximum of 200. | [optional] [default to 60]
 **teamId** | **String**| Team ID will scope the response to a given team and exclude direct and group messages. ##### Permissions Must have `view_team` permission for the team.  | [optional] 

### Return type

[**TopReactionList**](TopReactionList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

