# mattermost_api.api.MattermostInsightsApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTopChannelsForTeam**](MattermostInsightsApi.md#gettopchannelsforteam) | **GET** /teams/{team_id}/top/channels | Get a list of the top channels for a team.
[**getTopChannelsForUser**](MattermostInsightsApi.md#gettopchannelsforuser) | **GET** /users/me/top/channels | Get a list of the top channels for a user.
[**getTopReactionsForTeam**](MattermostInsightsApi.md#gettopreactionsforteam) | **GET** /teams/{team_id}/top/reactions | Get a list of the top reactions for a team.
[**getTopReactionsForUser**](MattermostInsightsApi.md#gettopreactionsforuser) | **GET** /users/me/top/reactions | Get a list of the top reactions for a user.


# **getTopChannelsForTeam**
> MMTopChannelList getTopChannelsForTeam(teamId, timeRange, page, perPage)

Get a list of the top channels for a team.

Get a list of the top public and private channels (the user is a member of) for a given team. ##### Permissions Must have `view_team` permission for the team. 

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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String teamId = 'teamId_example'; // String | Team GUID
final String timeRange = 'timeRange_example'; // String | Time range can be \"today\", \"7_day\", or \"28_day\". - `today`: channels with posts on the current day. - `7_day`: channels with posts in the last 7 days. - `28_day`: channels with posts in the last 28 days. 
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of items per page, up to a maximum of 200.

try {
  final result = await client.insights.getTopChannelsForTeam(teamId, timeRange, page, perPage);
  print(result);
} catch (e) {
  print('Exception when calling MattermostInsightsApi->getTopChannelsForTeam: $e\n');
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

[**MMTopChannelList**](MMTopChannelList.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getTopChannelsForUser**
> MMTopReactionList getTopChannelsForUser(userId, timeRange, page, perPage, teamId)

Get a list of the top channels for a user.

Get a list of the top public and private channels (the user is a member of) for a given user. ##### Permissions Must be logged in as the user. 

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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String userId = 'userId_example'; // String | User GUID
final String timeRange = 'timeRange_example'; // String | Time range can be \"today\", \"7_day\", or \"28_day\". - `today`: channels with posts on the current day. - `7_day`: channels with posts in the last 7 days. - `28_day`: channels with posts in the last 28 days. 
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of items per page, up to a maximum of 200.
final String teamId = 'teamId_example'; // String | Team ID will scope the response to a given team. ##### Permissions Must have `view_team` permission for the team. 

try {
  final result = await client.insights.getTopChannelsForUser(userId, timeRange, page, perPage, teamId);
  print(result);
} catch (e) {
  print('Exception when calling MattermostInsightsApi->getTopChannelsForUser: $e\n');
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

[**MMTopReactionList**](MMTopReactionList.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getTopReactionsForTeam**
> MMTopReactionList getTopReactionsForTeam(teamId, timeRange, page, perPage)

Get a list of the top reactions for a team.

Get a list of the top reactions across all public and private channels (the user is a member of) for a given team. ##### Permissions Must have `view_team` permission for the team. 

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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String teamId = 'teamId_example'; // String | Team GUID
final String timeRange = 'timeRange_example'; // String | Time range can be \"today\", \"7_day\", or \"28_day\". - `today`: reactions posted on the current day. - `7_day`: reactions posted in the last 7 days. - `28_day`: reactions posted in the last 28 days. 
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of items per page, up to a maximum of 200.

try {
  final result = await client.insights.getTopReactionsForTeam(teamId, timeRange, page, perPage);
  print(result);
} catch (e) {
  print('Exception when calling MattermostInsightsApi->getTopReactionsForTeam: $e\n');
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

[**MMTopReactionList**](MMTopReactionList.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getTopReactionsForUser**
> MMTopReactionList getTopReactionsForUser(userId, timeRange, page, perPage, teamId)

Get a list of the top reactions for a user.

Get a list of the top reactions across all public and private channels (the user is a member of) for a given user. If no `team_id` is provided, this will also include reactions posted by the given user in direct and group messages. ##### Permissions Must be logged in as the user. 

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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String userId = 'userId_example'; // String | User GUID
final String timeRange = 'timeRange_example'; // String | Time range can be \"today\", \"7_day\", or \"28_day\". - `today`: reactions posted on the current day. - `7_day`: reactions posted in the last 7 days. - `28_day`: reactions posted in the last 28 days. 
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of items per page, up to a maximum of 200.
final String teamId = 'teamId_example'; // String | Team ID will scope the response to a given team and exclude direct and group messages. ##### Permissions Must have `view_team` permission for the team. 

try {
  final result = await client.insights.getTopReactionsForUser(userId, timeRange, page, perPage, teamId);
  print(result);
} catch (e) {
  print('Exception when calling MattermostInsightsApi->getTopReactionsForUser: $e\n');
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

[**MMTopReactionList**](MMTopReactionList.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

