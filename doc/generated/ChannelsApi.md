# mattermost_api.api.ChannelsApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addChannelMember**](ChannelsApi.md#addchannelmember) | **POST** /channels/{channel_id}/members | Add user to channel
[**autocompleteChannelsForTeam**](ChannelsApi.md#autocompletechannelsforteam) | **GET** /teams/{team_id}/channels/autocomplete | Autocomplete channels
[**autocompleteChannelsForTeamForSearch**](ChannelsApi.md#autocompletechannelsforteamforsearch) | **GET** /teams/{team_id}/channels/search_autocomplete | Autocomplete channels for search
[**channelMembersMinusGroupMembers**](ChannelsApi.md#channelmembersminusgroupmembers) | **GET** /channels/{channel_id}/members_minus_group_members | Channel members minus group members.
[**createChannel**](ChannelsApi.md#createchannel) | **POST** /channels | Create a channel
[**createDirectChannel**](ChannelsApi.md#createdirectchannel) | **POST** /channels/direct | Create a direct message channel
[**createGroupChannel**](ChannelsApi.md#creategroupchannel) | **POST** /channels/group | Create a group message channel
[**createSidebarCategoryForTeamForUser**](ChannelsApi.md#createsidebarcategoryforteamforuser) | **POST** /users/{user_id}/teams/{team_id}/channels/categories | Create user's sidebar category
[**deleteChannel**](ChannelsApi.md#deletechannel) | **DELETE** /channels/{channel_id} | Delete a channel
[**getAllChannels**](ChannelsApi.md#getallchannels) | **GET** /channels | Get a list of all channels
[**getChannel**](ChannelsApi.md#getchannel) | **GET** /channels/{channel_id} | Get a channel
[**getChannelByName**](ChannelsApi.md#getchannelbyname) | **GET** /teams/{team_id}/channels/name/{channel_name} | Get a channel by name
[**getChannelByNameForTeamName**](ChannelsApi.md#getchannelbynameforteamname) | **GET** /teams/name/{team_name}/channels/name/{channel_name} | Get a channel by name and team name
[**getChannelMember**](ChannelsApi.md#getchannelmember) | **GET** /channels/{channel_id}/members/{user_id} | Get channel member
[**getChannelMemberCountsByGroup**](ChannelsApi.md#getchannelmembercountsbygroup) | **GET** /channels/{channel_id}/member_counts_by_group | Channel members counts for each group that has atleast one member in the channel
[**getChannelMembers**](ChannelsApi.md#getchannelmembers) | **GET** /channels/{channel_id}/members | Get channel members
[**getChannelMembersByIds**](ChannelsApi.md#getchannelmembersbyids) | **POST** /channels/{channel_id}/members/ids | Get channel members by ids
[**getChannelMembersForUser**](ChannelsApi.md#getchannelmembersforuser) | **GET** /users/{user_id}/teams/{team_id}/channels/members | Get channel memberships and roles for a user
[**getChannelMembersTimezones**](ChannelsApi.md#getchannelmemberstimezones) | **GET** /channels/{channel_id}/timezones | Get timezones in a channel
[**getChannelModerations**](ChannelsApi.md#getchannelmoderations) | **GET** /channels/{channel_id}/moderations | Get information about channel's moderation.
[**getChannelStats**](ChannelsApi.md#getchannelstats) | **GET** /channels/{channel_id}/stats | Get channel statistics
[**getChannelUnread**](ChannelsApi.md#getchannelunread) | **GET** /users/{user_id}/channels/{channel_id}/unread | Get unread messages
[**getChannelsForTeamForUser**](ChannelsApi.md#getchannelsforteamforuser) | **GET** /users/{user_id}/teams/{team_id}/channels | Get channels for user
[**getChannelsForUser**](ChannelsApi.md#getchannelsforuser) | **GET** /users/{user_id}/channels | Get all channels from all teams
[**getDeletedChannelsForTeam**](ChannelsApi.md#getdeletedchannelsforteam) | **GET** /teams/{team_id}/channels/deleted | Get deleted channels
[**getPinnedPosts**](ChannelsApi.md#getpinnedposts) | **GET** /channels/{channel_id}/pinned | Get a channel's pinned posts
[**getPrivateChannelsForTeam**](ChannelsApi.md#getprivatechannelsforteam) | **GET** /teams/{team_id}/channels/private | Get private channels
[**getPublicChannelsByIdsForTeam**](ChannelsApi.md#getpublicchannelsbyidsforteam) | **POST** /teams/{team_id}/channels/ids | Get a list of channels by ids
[**getPublicChannelsForTeam**](ChannelsApi.md#getpublicchannelsforteam) | **GET** /teams/{team_id}/channels | Get public channels
[**getSidebarCategoriesForTeamForUser**](ChannelsApi.md#getsidebarcategoriesforteamforuser) | **GET** /users/{user_id}/teams/{team_id}/channels/categories | Get user's sidebar categories
[**getSidebarCategoryForTeamForUser**](ChannelsApi.md#getsidebarcategoryforteamforuser) | **GET** /users/{user_id}/teams/{team_id}/channels/categories/{category_id} | Get sidebar category
[**getSidebarCategoryOrderForTeamForUser**](ChannelsApi.md#getsidebarcategoryorderforteamforuser) | **GET** /users/{user_id}/teams/{team_id}/channels/categories/order | Get user's sidebar category order
[**moveChannel**](ChannelsApi.md#movechannel) | **POST** /channels/{channel_id}/move | Move a channel
[**patchChannel**](ChannelsApi.md#patchchannel) | **PUT** /channels/{channel_id}/patch | Patch a channel
[**patchChannelModerations**](ChannelsApi.md#patchchannelmoderations) | **PUT** /channels/{channel_id}/moderations/patch | Update a channel's moderation settings.
[**removeSidebarCategoryForTeamForUser**](ChannelsApi.md#removesidebarcategoryforteamforuser) | **DELETE** /users/{user_id}/teams/{team_id}/channels/categories/{category_id} | Delete sidebar category
[**removeUserFromChannel**](ChannelsApi.md#removeuserfromchannel) | **DELETE** /channels/{channel_id}/members/{user_id} | Remove user from channel
[**restoreChannel**](ChannelsApi.md#restorechannel) | **POST** /channels/{channel_id}/restore | Restore a channel
[**searchAllChannels**](ChannelsApi.md#searchallchannels) | **POST** /channels/search | Search all private and open type channels across all teams
[**searchArchivedChannels**](ChannelsApi.md#searcharchivedchannels) | **POST** /teams/{team_id}/channels/search_archived | Search archived channels
[**searchChannels**](ChannelsApi.md#searchchannels) | **POST** /teams/{team_id}/channels/search | Search channels
[**searchGroupChannels**](ChannelsApi.md#searchgroupchannels) | **POST** /channels/group/search | Search Group Channels
[**updateChannel**](ChannelsApi.md#updatechannel) | **PUT** /channels/{channel_id} | Update a channel
[**updateChannelMemberSchemeRoles**](ChannelsApi.md#updatechannelmemberschemeroles) | **PUT** /channels/{channel_id}/members/{user_id}/schemeRoles | Update the scheme-derived roles of a channel member.
[**updateChannelNotifyProps**](ChannelsApi.md#updatechannelnotifyprops) | **PUT** /channels/{channel_id}/members/{user_id}/notify_props | Update channel notifications
[**updateChannelPrivacy**](ChannelsApi.md#updatechannelprivacy) | **PUT** /channels/{channel_id}/privacy | Update channel's privacy
[**updateChannelRoles**](ChannelsApi.md#updatechannelroles) | **PUT** /channels/{channel_id}/members/{user_id}/roles | Update channel roles
[**updateChannelScheme**](ChannelsApi.md#updatechannelscheme) | **PUT** /channels/{channel_id}/scheme | Set a channel's scheme
[**updateSidebarCategoriesForTeamForUser**](ChannelsApi.md#updatesidebarcategoriesforteamforuser) | **PUT** /users/{user_id}/teams/{team_id}/channels/categories | Update user's sidebar categories
[**updateSidebarCategoryForTeamForUser**](ChannelsApi.md#updatesidebarcategoryforteamforuser) | **PUT** /users/{user_id}/teams/{team_id}/channels/categories/{category_id} | Update sidebar category
[**updateSidebarCategoryOrderForTeamForUser**](ChannelsApi.md#updatesidebarcategoryorderforteamforuser) | **PUT** /users/{user_id}/teams/{team_id}/channels/categories/order | Update user's sidebar category order
[**viewChannel**](ChannelsApi.md#viewchannel) | **POST** /channels/members/{user_id}/view | View channel


# **addChannelMember**
> ChannelMember addChannelMember(channelId, addChannelMemberRequest)

Add user to channel

Add a user to a channel by creating a channel member object.

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final channelId = channelId_example; // String | The channel ID
final addChannelMemberRequest = AddChannelMemberRequest(); // AddChannelMemberRequest | 

try {
    final result = api_instance.addChannelMember(channelId, addChannelMemberRequest);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->addChannelMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| The channel ID | 
 **addChannelMemberRequest** | [**AddChannelMemberRequest**](AddChannelMemberRequest.md)|  | 

### Return type

[**ChannelMember**](ChannelMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocompleteChannelsForTeam**
> List<Channel> autocompleteChannelsForTeam(teamId, name)

Autocomplete channels

Autocomplete public channels on a team based on the search term provided in the request URL.  __Minimum server version__: 4.7  ##### Permissions Must have the `list_team_channels` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final teamId = teamId_example; // String | Team GUID
final name = name_example; // String | Name or display name

try {
    final result = api_instance.autocompleteChannelsForTeam(teamId, name);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->autocompleteChannelsForTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **name** | **String**| Name or display name | 

### Return type

[**List<Channel>**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocompleteChannelsForTeamForSearch**
> List<Channel> autocompleteChannelsForTeamForSearch(teamId, name)

Autocomplete channels for search

Autocomplete your channels on a team based on the search term provided in the request URL.  __Minimum server version__: 5.4  ##### Permissions Must have the `list_team_channels` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final teamId = teamId_example; // String | Team GUID
final name = name_example; // String | Name or display name

try {
    final result = api_instance.autocompleteChannelsForTeamForSearch(teamId, name);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->autocompleteChannelsForTeamForSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **name** | **String**| Name or display name | 

### Return type

[**List<Channel>**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **channelMembersMinusGroupMembers**
> channelMembersMinusGroupMembers(channelId, groupIds, page, perPage)

Channel members minus group members.

Get the set of users who are members of the channel minus the set of users who are members of the given groups. Each user object contains an array of group objects representing the group memberships for that user. Each user object contains the boolean fields `scheme_guest`, `scheme_user`, and `scheme_admin` representing the roles that user has for the given channel.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.14 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final channelId = channelId_example; // String | Channel GUID
final groupIds = groupIds_example; // String | A comma-separated list of group ids.
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of users per page.

try {
    api_instance.channelMembersMinusGroupMembers(channelId, groupIds, page, perPage);
} catch (e) {
    print('Exception when calling ChannelsApi->channelMembersMinusGroupMembers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **groupIds** | **String**| A comma-separated list of group ids. | [default to '']
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of users per page. | [optional] [default to 0]

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createChannel**
> Channel createChannel(createChannelRequest)

Create a channel

Create a new channel. ##### Permissions If creating a public channel, `create_public_channel` permission is required. If creating a private channel, `create_private_channel` permission is required. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final createChannelRequest = CreateChannelRequest(); // CreateChannelRequest | Channel object to be created

try {
    final result = api_instance.createChannel(createChannelRequest);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->createChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createChannelRequest** | [**CreateChannelRequest**](CreateChannelRequest.md)| Channel object to be created | 

### Return type

[**Channel**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDirectChannel**
> Channel createDirectChannel(requestBody)

Create a direct message channel

Create a new direct message channel between two users. ##### Permissions Must be one of the two users and have `create_direct_channel` permission. Having the `manage_system` permission voids the previous requirements. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final requestBody = [List<String>()]; // List<String> | The two user ids to be in the direct message

try {
    final result = api_instance.createDirectChannel(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->createDirectChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)| The two user ids to be in the direct message | 

### Return type

[**Channel**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createGroupChannel**
> Channel createGroupChannel(requestBody)

Create a group message channel

Create a new group message channel to group of users. If the logged in user's id is not included in the list, it will be appended to the end. ##### Permissions Must have `create_group_channel` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final requestBody = [List<String>()]; // List<String> | User ids to be in the group message channel

try {
    final result = api_instance.createGroupChannel(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->createGroupChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)| User ids to be in the group message channel | 

### Return type

[**Channel**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSidebarCategoryForTeamForUser**
> SidebarCategory createSidebarCategoryForTeamForUser(teamId, userId, sidebarCategory)

Create user's sidebar category

Create a custom sidebar category for the user on the given team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final teamId = teamId_example; // String | Team GUID
final userId = userId_example; // String | User GUID
final sidebarCategory = SidebarCategory(); // SidebarCategory | 

try {
    final result = api_instance.createSidebarCategoryForTeamForUser(teamId, userId, sidebarCategory);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->createSidebarCategoryForTeamForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **userId** | **String**| User GUID | 
 **sidebarCategory** | [**SidebarCategory**](SidebarCategory.md)|  | 

### Return type

[**SidebarCategory**](SidebarCategory.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteChannel**
> StatusOK deleteChannel(channelId)

Delete a channel

Archives a channel. This will set the `deleteAt` to the current timestamp in the database. Soft deleted channels may not be accessible in the user interface. They can be viewed and unarchived in the **System Console > User Management > Channels** based on your license. Direct and group message channels cannot be deleted.  As of server version 5.28, optionally use the `permanent=true` query parameter to permanently delete the channel for compliance reasons. To use this feature `ServiceSettings.EnableAPIChannelDeletion` must be set to `true` in the server's configuration.  If you permanently delete a channel this action is not recoverable outside of a database backup.  ##### Permissions `delete_public_channel` permission if the channel is public, `delete_private_channel` permission if the channel is private, or have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final channelId = channelId_example; // String | Channel GUID

try {
    final result = api_instance.deleteChannel(channelId);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->deleteChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllChannels**
> List<ChannelWithTeamData> getAllChannels(notAssociatedToGroup, page, perPage, excludeDefaultChannels, includeDeleted, includeTotalCount, excludePolicyConstrained)

Get a list of all channels

##### Permissions `manage_system` 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final notAssociatedToGroup = notAssociatedToGroup_example; // String | A group id to exclude channels that are associated with that group via GroupChannel records. This can also be left blank with `not_associated_to_group=`.
final page = 56; // int | 
final perPage = 56; // int | 
final excludeDefaultChannels = true; // bool | Whether to exclude default channels (ex Town Square, Off-Topic) from the results.
final includeDeleted = true; // bool | Include channels that have been archived. This correlates to the `DeleteAt` flag being set in the database.
final includeTotalCount = true; // bool | Appends a total count of returned channels inside the response object - ex: `{ \"channels\": [], \"total_count\" : 0 }`.      
final excludePolicyConstrained = true; // bool | If set to true, channels which are part of a data retention policy will be excluded. The `sysconsole_read_compliance` permission is required to use this parameter. __Minimum server version__: 5.35

try {
    final result = api_instance.getAllChannels(notAssociatedToGroup, page, perPage, excludeDefaultChannels, includeDeleted, includeTotalCount, excludePolicyConstrained);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->getAllChannels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notAssociatedToGroup** | **String**| A group id to exclude channels that are associated with that group via GroupChannel records. This can also be left blank with `not_associated_to_group=`. | [optional] 
 **page** | **int**|  | [optional] [default to 0]
 **perPage** | **int**|  | [optional] [default to 0]
 **excludeDefaultChannels** | **bool**| Whether to exclude default channels (ex Town Square, Off-Topic) from the results. | [optional] [default to false]
 **includeDeleted** | **bool**| Include channels that have been archived. This correlates to the `DeleteAt` flag being set in the database. | [optional] [default to false]
 **includeTotalCount** | **bool**| Appends a total count of returned channels inside the response object - ex: `{ \"channels\": [], \"total_count\" : 0 }`.       | [optional] [default to false]
 **excludePolicyConstrained** | **bool**| If set to true, channels which are part of a data retention policy will be excluded. The `sysconsole_read_compliance` permission is required to use this parameter. __Minimum server version__: 5.35 | [optional] [default to false]

### Return type

[**List<ChannelWithTeamData>**](ChannelWithTeamData.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannel**
> Channel getChannel(channelId)

Get a channel

Get channel from the provided channel id string. ##### Permissions `read_channel` permission for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final channelId = channelId_example; // String | Channel GUID

try {
    final result = api_instance.getChannel(channelId);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->getChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 

### Return type

[**Channel**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelByName**
> Channel getChannelByName(teamId, channelName, includeDeleted)

Get a channel by name

Gets channel from the provided team id and channel name strings. ##### Permissions `read_channel` permission for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final teamId = teamId_example; // String | Team GUID
final channelName = channelName_example; // String | Channel Name
final includeDeleted = true; // bool | Defines if deleted channels should be returned or not (Mattermost Server 5.26.0+)

try {
    final result = api_instance.getChannelByName(teamId, channelName, includeDeleted);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->getChannelByName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **channelName** | **String**| Channel Name | 
 **includeDeleted** | **bool**| Defines if deleted channels should be returned or not (Mattermost Server 5.26.0+) | [optional] [default to false]

### Return type

[**Channel**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelByNameForTeamName**
> Channel getChannelByNameForTeamName(teamName, channelName, includeDeleted)

Get a channel by name and team name

Gets a channel from the provided team name and channel name strings. ##### Permissions `read_channel` permission for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final teamName = teamName_example; // String | Team Name
final channelName = channelName_example; // String | Channel Name
final includeDeleted = true; // bool | Defines if deleted channels should be returned or not (Mattermost Server 5.26.0+)

try {
    final result = api_instance.getChannelByNameForTeamName(teamName, channelName, includeDeleted);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->getChannelByNameForTeamName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamName** | **String**| Team Name | 
 **channelName** | **String**| Channel Name | 
 **includeDeleted** | **bool**| Defines if deleted channels should be returned or not (Mattermost Server 5.26.0+) | [optional] [default to false]

### Return type

[**Channel**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelMember**
> ChannelMember getChannelMember(channelId, userId)

Get channel member

Get a channel member. ##### Permissions `read_channel` permission for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final channelId = channelId_example; // String | Channel GUID
final userId = userId_example; // String | User GUID

try {
    final result = api_instance.getChannelMember(channelId, userId);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->getChannelMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **userId** | **String**| User GUID | 

### Return type

[**ChannelMember**](ChannelMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelMemberCountsByGroup**
> getChannelMemberCountsByGroup(channelId, includeTimezones)

Channel members counts for each group that has atleast one member in the channel

Returns a set of ChannelMemberCountByGroup objects which contain a `group_id`, `channel_member_count` and a `channel_member_timezones_count`. ##### Permissions Must have `read_channel` permission for the given channel. __Minimum server version__: 5.24 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final channelId = channelId_example; // String | Channel GUID
final includeTimezones = true; // bool | Defines if member timezone counts should be returned or not

try {
    api_instance.getChannelMemberCountsByGroup(channelId, includeTimezones);
} catch (e) {
    print('Exception when calling ChannelsApi->getChannelMemberCountsByGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **includeTimezones** | **bool**| Defines if member timezone counts should be returned or not | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelMembers**
> List<ChannelMember> getChannelMembers(channelId, page, perPage)

Get channel members

Get a page of members for a channel. ##### Permissions `read_channel` permission for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final channelId = channelId_example; // String | Channel GUID
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of members per page. There is a maximum limit of 200 members.

try {
    final result = api_instance.getChannelMembers(channelId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->getChannelMembers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of members per page. There is a maximum limit of 200 members. | [optional] [default to 60]

### Return type

[**List<ChannelMember>**](ChannelMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelMembersByIds**
> List<ChannelMember> getChannelMembersByIds(channelId, requestBody)

Get channel members by ids

Get a list of channel members based on the provided user ids. ##### Permissions Must have the `read_channel` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final channelId = channelId_example; // String | Channel GUID
final requestBody = [List<String>()]; // List<String> | List of user ids

try {
    final result = api_instance.getChannelMembersByIds(channelId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->getChannelMembersByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **requestBody** | [**List<String>**](String.md)| List of user ids | 

### Return type

[**List<ChannelMember>**](ChannelMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelMembersForUser**
> List<ChannelMember> getChannelMembersForUser(userId, teamId)

Get channel memberships and roles for a user

Get all channel memberships and associated membership roles (i.e. `channel_user`, `channel_admin`) for a user on a specific team. ##### Permissions Logged in as the user and `view_team` permission for the team. Having `manage_system` permission voids the previous requirements. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final userId = userId_example; // String | User GUID
final teamId = teamId_example; // String | Team GUID

try {
    final result = api_instance.getChannelMembersForUser(userId, teamId);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->getChannelMembersForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **teamId** | **String**| Team GUID | 

### Return type

[**List<ChannelMember>**](ChannelMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelMembersTimezones**
> List<String> getChannelMembersTimezones(channelId)

Get timezones in a channel

Get a list of timezones for the users who are in this channel.  __Minimum server version__: 5.6  ##### Permissions Must have the `read_channel` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final channelId = channelId_example; // String | Channel GUID

try {
    final result = api_instance.getChannelMembersTimezones(channelId);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->getChannelMembersTimezones: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 

### Return type

**List<String>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelModerations**
> List<ChannelModeration> getChannelModerations(channelId)

Get information about channel's moderation.

##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.22 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final channelId = channelId_example; // String | Channel GUID

try {
    final result = api_instance.getChannelModerations(channelId);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->getChannelModerations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 

### Return type

[**List<ChannelModeration>**](ChannelModeration.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelStats**
> ChannelStats getChannelStats(channelId)

Get channel statistics

Get statistics for a channel. ##### Permissions Must have the `read_channel` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final channelId = channelId_example; // String | Channel GUID

try {
    final result = api_instance.getChannelStats(channelId);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->getChannelStats: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 

### Return type

[**ChannelStats**](ChannelStats.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelUnread**
> ChannelUnread getChannelUnread(userId, channelId)

Get unread messages

Get the total unread messages and mentions for a channel for a user. ##### Permissions Must be logged in as user and have the `read_channel` permission, or have `edit_other_usrs` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final userId = userId_example; // String | User GUID
final channelId = channelId_example; // String | Channel GUID

try {
    final result = api_instance.getChannelUnread(userId, channelId);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->getChannelUnread: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **channelId** | **String**| Channel GUID | 

### Return type

[**ChannelUnread**](ChannelUnread.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelsForTeamForUser**
> List<Channel> getChannelsForTeamForUser(userId, teamId, includeDeleted, lastDeleteAt)

Get channels for user

Get all the channels on a team for a user. ##### Permissions Logged in as the user, or have `edit_other_users` permission, and `view_team` permission for the team. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final userId = userId_example; // String | User GUID
final teamId = teamId_example; // String | Team GUID
final includeDeleted = true; // bool | Defines if deleted channels should be returned or not
final lastDeleteAt = 56; // int | Filters the deleted channels by this time in epoch format. Does not have any effect if include_deleted is set to false.

try {
    final result = api_instance.getChannelsForTeamForUser(userId, teamId, includeDeleted, lastDeleteAt);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->getChannelsForTeamForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **teamId** | **String**| Team GUID | 
 **includeDeleted** | **bool**| Defines if deleted channels should be returned or not | [optional] [default to false]
 **lastDeleteAt** | **int**| Filters the deleted channels by this time in epoch format. Does not have any effect if include_deleted is set to false. | [optional] [default to 0]

### Return type

[**List<Channel>**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelsForUser**
> List<Channel> getChannelsForUser(userId, lastDeleteAt, includeDeleted)

Get all channels from all teams

Get all channels from all teams that a user is a member of.  __Minimum server version__: 6.1  ##### Permissions  Logged in as the user, or have `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final userId = userId_example; // String | The ID of the user. This can also be \"me\" which will point to the current user.
final lastDeleteAt = 56; // int | Filters the deleted channels by this time in epoch format. Does not have any effect if include_deleted is set to false.
final includeDeleted = true; // bool | Defines if deleted channels should be returned or not

try {
    final result = api_instance.getChannelsForUser(userId, lastDeleteAt, includeDeleted);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->getChannelsForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The ID of the user. This can also be \"me\" which will point to the current user. | 
 **lastDeleteAt** | **int**| Filters the deleted channels by this time in epoch format. Does not have any effect if include_deleted is set to false. | [optional] [default to 0]
 **includeDeleted** | **bool**| Defines if deleted channels should be returned or not | [optional] [default to false]

### Return type

[**List<Channel>**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeletedChannelsForTeam**
> List<Channel> getDeletedChannelsForTeam(teamId, page, perPage)

Get deleted channels

Get a page of deleted channels on a team based on query string parameters - team_id, page and per_page.  __Minimum server version__: 3.10 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final teamId = teamId_example; // String | Team GUID
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of public channels per page.

try {
    final result = api_instance.getDeletedChannelsForTeam(teamId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->getDeletedChannelsForTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of public channels per page. | [optional] [default to 60]

### Return type

[**List<Channel>**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPinnedPosts**
> PostList getPinnedPosts(channelId)

Get a channel's pinned posts

Get a list of pinned posts for channel.

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final channelId = channelId_example; // String | Channel GUID

try {
    final result = api_instance.getPinnedPosts(channelId);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->getPinnedPosts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 

### Return type

[**PostList**](PostList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPrivateChannelsForTeam**
> List<Channel> getPrivateChannelsForTeam(teamId, page, perPage)

Get private channels

Get a page of private channels on a team based on query string parameters - team_id, page and per_page.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final teamId = teamId_example; // String | Team GUID
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of private channels per page.

try {
    final result = api_instance.getPrivateChannelsForTeam(teamId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->getPrivateChannelsForTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of private channels per page. | [optional] [default to 60]

### Return type

[**List<Channel>**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPublicChannelsByIdsForTeam**
> List<Channel> getPublicChannelsByIdsForTeam(teamId, requestBody)

Get a list of channels by ids

Get a list of public channels on a team by id. ##### Permissions `view_team` for the team the channels are on. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final teamId = teamId_example; // String | Team GUID
final requestBody = [List<String>()]; // List<String> | List of channel ids

try {
    final result = api_instance.getPublicChannelsByIdsForTeam(teamId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->getPublicChannelsByIdsForTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **requestBody** | [**List<String>**](String.md)| List of channel ids | 

### Return type

[**List<Channel>**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPublicChannelsForTeam**
> List<Channel> getPublicChannelsForTeam(teamId, page, perPage)

Get public channels

Get a page of public channels on a team based on query string parameters - page and per_page. ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final teamId = teamId_example; // String | Team GUID
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of public channels per page.

try {
    final result = api_instance.getPublicChannelsForTeam(teamId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->getPublicChannelsForTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of public channels per page. | [optional] [default to 60]

### Return type

[**List<Channel>**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSidebarCategoriesForTeamForUser**
> List<OrderedSidebarCategories> getSidebarCategoriesForTeamForUser(teamId, userId)

Get user's sidebar categories

Get a list of sidebar categories that will appear in the user's sidebar on the given team, including a list of channel IDs in each category. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final teamId = teamId_example; // String | Team GUID
final userId = userId_example; // String | User GUID

try {
    final result = api_instance.getSidebarCategoriesForTeamForUser(teamId, userId);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->getSidebarCategoriesForTeamForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **userId** | **String**| User GUID | 

### Return type

[**List<OrderedSidebarCategories>**](OrderedSidebarCategories.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSidebarCategoryForTeamForUser**
> SidebarCategory getSidebarCategoryForTeamForUser(teamId, userId, categoryId)

Get sidebar category

Returns a single sidebar category for the user on the given team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final teamId = teamId_example; // String | Team GUID
final userId = userId_example; // String | User GUID
final categoryId = categoryId_example; // String | Category GUID

try {
    final result = api_instance.getSidebarCategoryForTeamForUser(teamId, userId, categoryId);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->getSidebarCategoryForTeamForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **userId** | **String**| User GUID | 
 **categoryId** | **String**| Category GUID | 

### Return type

[**SidebarCategory**](SidebarCategory.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSidebarCategoryOrderForTeamForUser**
> List<String> getSidebarCategoryOrderForTeamForUser(teamId, userId)

Get user's sidebar category order

Returns the order of the sidebar categories for a user on the given team as an array of IDs. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final teamId = teamId_example; // String | Team GUID
final userId = userId_example; // String | User GUID

try {
    final result = api_instance.getSidebarCategoryOrderForTeamForUser(teamId, userId);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->getSidebarCategoryOrderForTeamForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **userId** | **String**| User GUID | 

### Return type

**List<String>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **moveChannel**
> Channel moveChannel(channelId, moveChannelRequest)

Move a channel

Move a channel to another team.  __Minimum server version__: 5.26  ##### Permissions  Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final channelId = channelId_example; // String | Channel GUID
final moveChannelRequest = MoveChannelRequest(); // MoveChannelRequest | 

try {
    final result = api_instance.moveChannel(channelId, moveChannelRequest);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->moveChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **moveChannelRequest** | [**MoveChannelRequest**](MoveChannelRequest.md)|  | 

### Return type

[**Channel**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchChannel**
> Channel patchChannel(channelId, patchChannelRequest)

Patch a channel

Partially update a channel by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions If updating a public channel, `manage_public_channel_members` permission is required. If updating a private channel, `manage_private_channel_members` permission is required. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final channelId = channelId_example; // String | Channel GUID
final patchChannelRequest = PatchChannelRequest(); // PatchChannelRequest | Channel object to be updated

try {
    final result = api_instance.patchChannel(channelId, patchChannelRequest);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->patchChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **patchChannelRequest** | [**PatchChannelRequest**](PatchChannelRequest.md)| Channel object to be updated | 

### Return type

[**Channel**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchChannelModerations**
> List<ChannelModeration> patchChannelModerations(channelId, channelModerationPatch)

Update a channel's moderation settings.

##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.22 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final channelId = channelId_example; // String | Channel GUID
final channelModerationPatch = ChannelModerationPatch(); // ChannelModerationPatch | 

try {
    final result = api_instance.patchChannelModerations(channelId, channelModerationPatch);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->patchChannelModerations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **channelModerationPatch** | [**ChannelModerationPatch**](ChannelModerationPatch.md)|  | 

### Return type

[**List<ChannelModeration>**](ChannelModeration.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeSidebarCategoryForTeamForUser**
> SidebarCategory removeSidebarCategoryForTeamForUser(teamId, userId, categoryId)

Delete sidebar category

Deletes a single sidebar category for the user on the given team. Only custom categories can be deleted. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final teamId = teamId_example; // String | Team GUID
final userId = userId_example; // String | User GUID
final categoryId = categoryId_example; // String | Category GUID

try {
    final result = api_instance.removeSidebarCategoryForTeamForUser(teamId, userId, categoryId);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->removeSidebarCategoryForTeamForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **userId** | **String**| User GUID | 
 **categoryId** | **String**| Category GUID | 

### Return type

[**SidebarCategory**](SidebarCategory.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeUserFromChannel**
> StatusOK removeUserFromChannel(channelId, userId)

Remove user from channel

Delete a channel member, effectively removing them from a channel.  In server version 5.3 and later, channel members can only be deleted from public or private channels. ##### Permissions `manage_public_channel_members` permission if the channel is public. `manage_private_channel_members` permission if the channel is private. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final channelId = channelId_example; // String | Channel GUID
final userId = userId_example; // String | User GUID

try {
    final result = api_instance.removeUserFromChannel(channelId, userId);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->removeUserFromChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **userId** | **String**| User GUID | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restoreChannel**
> Channel restoreChannel(channelId)

Restore a channel

Restore channel from the provided channel id string.  __Minimum server version__: 3.10  ##### Permissions `manage_team` permission for the team of the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final channelId = channelId_example; // String | Channel GUID

try {
    final result = api_instance.restoreChannel(channelId);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->restoreChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 

### Return type

[**Channel**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchAllChannels**
> SearchAllChannels200Response searchAllChannels(searchAllChannelsRequest, systemConsole)

Search all private and open type channels across all teams

Returns all private and open type channels where 'term' matches on the name, display name, or purpose of the channel.  Configured 'default' channels (ex Town Square and Off-Topic) can be excluded from the results with the `exclude_default_channels` boolean parameter.  Channels that are associated (via GroupChannel records) to a given group can be excluded from the results with the `not_associated_to_group` parameter and a group id string. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final searchAllChannelsRequest = SearchAllChannelsRequest(); // SearchAllChannelsRequest | The search terms and logic to use in the search.
final systemConsole = true; // bool | Is the request from system_console. If this is set to true, it filters channels by the logged in user. 

try {
    final result = api_instance.searchAllChannels(searchAllChannelsRequest, systemConsole);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->searchAllChannels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchAllChannelsRequest** | [**SearchAllChannelsRequest**](SearchAllChannelsRequest.md)| The search terms and logic to use in the search. | 
 **systemConsole** | **bool**| Is the request from system_console. If this is set to true, it filters channels by the logged in user.  | [optional] [default to true]

### Return type

[**SearchAllChannels200Response**](SearchAllChannels200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchArchivedChannels**
> List<Channel> searchArchivedChannels(teamId, searchArchivedChannelsRequest)

Search archived channels

Search archived channels on a team based on the search term provided in the request body.  __Minimum server version__: 5.18  ##### Permissions Must have the `list_team_channels` permission.  In server version 5.18 and later, a user without the `list_team_channels` permission will be able to use this endpoint, with the search results limited to the channels that the user is a member of. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final teamId = teamId_example; // String | Team GUID
final searchArchivedChannelsRequest = SearchArchivedChannelsRequest(); // SearchArchivedChannelsRequest | Search criteria

try {
    final result = api_instance.searchArchivedChannels(teamId, searchArchivedChannelsRequest);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->searchArchivedChannels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **searchArchivedChannelsRequest** | [**SearchArchivedChannelsRequest**](SearchArchivedChannelsRequest.md)| Search criteria | 

### Return type

[**List<Channel>**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchChannels**
> List<Channel> searchChannels(teamId, searchChannelsRequest)

Search channels

Search public channels on a team based on the search term provided in the request body. ##### Permissions Must have the `list_team_channels` permission.  In server version 5.16 and later, a user without the `list_team_channels` permission will be able to use this endpoint, with the search results limited to the channels that the user is a member of. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final teamId = teamId_example; // String | Team GUID
final searchChannelsRequest = SearchChannelsRequest(); // SearchChannelsRequest | Search criteria

try {
    final result = api_instance.searchChannels(teamId, searchChannelsRequest);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->searchChannels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **searchChannelsRequest** | [**SearchChannelsRequest**](SearchChannelsRequest.md)| Search criteria | 

### Return type

[**List<Channel>**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchGroupChannels**
> List<Channel> searchGroupChannels(searchGroupChannelsRequest)

Search Group Channels

Get a list of group channels for a user which members' usernames match the search term.  __Minimum server version__: 5.14 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final searchGroupChannelsRequest = SearchGroupChannelsRequest(); // SearchGroupChannelsRequest | Search criteria

try {
    final result = api_instance.searchGroupChannels(searchGroupChannelsRequest);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->searchGroupChannels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchGroupChannelsRequest** | [**SearchGroupChannelsRequest**](SearchGroupChannelsRequest.md)| Search criteria | 

### Return type

[**List<Channel>**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChannel**
> Channel updateChannel(channelId, updateChannelRequest)

Update a channel

Update a channel. The fields that can be updated are listed as parameters. Omitted fields will be treated as blanks. ##### Permissions If updating a public channel, `manage_public_channel_members` permission is required. If updating a private channel, `manage_private_channel_members` permission is required. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final channelId = channelId_example; // String | Channel GUID
final updateChannelRequest = UpdateChannelRequest(); // UpdateChannelRequest | Channel object to be updated

try {
    final result = api_instance.updateChannel(channelId, updateChannelRequest);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->updateChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **updateChannelRequest** | [**UpdateChannelRequest**](UpdateChannelRequest.md)| Channel object to be updated | 

### Return type

[**Channel**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChannelMemberSchemeRoles**
> StatusOK updateChannelMemberSchemeRoles(channelId, userId, updateTeamMemberSchemeRolesRequest)

Update the scheme-derived roles of a channel member.

Update a channel member's scheme_admin/scheme_user properties. Typically this should either be `scheme_admin=false, scheme_user=true` for ordinary channel member, or `scheme_admin=true, scheme_user=true` for a channel admin. __Minimum server version__: 5.0 ##### Permissions Must be authenticated and have the `manage_channel_roles` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final channelId = channelId_example; // String | Channel GUID
final userId = userId_example; // String | User GUID
final updateTeamMemberSchemeRolesRequest = UpdateTeamMemberSchemeRolesRequest(); // UpdateTeamMemberSchemeRolesRequest | Scheme properties.

try {
    final result = api_instance.updateChannelMemberSchemeRoles(channelId, userId, updateTeamMemberSchemeRolesRequest);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->updateChannelMemberSchemeRoles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **userId** | **String**| User GUID | 
 **updateTeamMemberSchemeRolesRequest** | [**UpdateTeamMemberSchemeRolesRequest**](UpdateTeamMemberSchemeRolesRequest.md)| Scheme properties. | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChannelNotifyProps**
> StatusOK updateChannelNotifyProps(channelId, userId, channelNotifyProps)

Update channel notifications

Update a user's notification properties for a channel. Only the provided fields are updated. ##### Permissions Must be logged in as the user or have `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final channelId = channelId_example; // String | Channel GUID
final userId = userId_example; // String | User GUID
final channelNotifyProps = ChannelNotifyProps(); // ChannelNotifyProps | 

try {
    final result = api_instance.updateChannelNotifyProps(channelId, userId, channelNotifyProps);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->updateChannelNotifyProps: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **userId** | **String**| User GUID | 
 **channelNotifyProps** | [**ChannelNotifyProps**](ChannelNotifyProps.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChannelPrivacy**
> Channel updateChannelPrivacy(channelId, updateChannelPrivacyRequest)

Update channel's privacy

Updates channel's privacy allowing changing a channel from Public to Private and back.  __Minimum server version__: 5.16  ##### Permissions `manage_team` permission for the channels team on version < 5.28. `convert_public_channel_to_private` permission for the channel if updating privacy to 'P' on version >= 5.28. `convert_private_channel_to_public` permission for the channel if updating privacy to 'O' on version >= 5.28. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final channelId = channelId_example; // String | Channel GUID
final updateChannelPrivacyRequest = UpdateChannelPrivacyRequest(); // UpdateChannelPrivacyRequest | 

try {
    final result = api_instance.updateChannelPrivacy(channelId, updateChannelPrivacyRequest);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->updateChannelPrivacy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **updateChannelPrivacyRequest** | [**UpdateChannelPrivacyRequest**](UpdateChannelPrivacyRequest.md)|  | 

### Return type

[**Channel**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChannelRoles**
> StatusOK updateChannelRoles(channelId, userId, updateUserRolesRequest)

Update channel roles

Update a user's roles for a channel. ##### Permissions Must have `manage_channel_roles` permission for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final channelId = channelId_example; // String | Channel GUID
final userId = userId_example; // String | User GUID
final updateUserRolesRequest = UpdateUserRolesRequest(); // UpdateUserRolesRequest | Space-delimited channel roles to assign to the user

try {
    final result = api_instance.updateChannelRoles(channelId, userId, updateUserRolesRequest);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->updateChannelRoles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **userId** | **String**| User GUID | 
 **updateUserRolesRequest** | [**UpdateUserRolesRequest**](UpdateUserRolesRequest.md)| Space-delimited channel roles to assign to the user | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChannelScheme**
> StatusOK updateChannelScheme(channelId, updateTeamSchemeRequest)

Set a channel's scheme

Set a channel's scheme, more specifically sets the scheme_id value of a channel record.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.10 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final channelId = channelId_example; // String | Channel GUID
final updateTeamSchemeRequest = UpdateTeamSchemeRequest(); // UpdateTeamSchemeRequest | Scheme GUID

try {
    final result = api_instance.updateChannelScheme(channelId, updateTeamSchemeRequest);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->updateChannelScheme: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **updateTeamSchemeRequest** | [**UpdateTeamSchemeRequest**](UpdateTeamSchemeRequest.md)| Scheme GUID | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSidebarCategoriesForTeamForUser**
> SidebarCategory updateSidebarCategoriesForTeamForUser(teamId, userId, sidebarCategory)

Update user's sidebar categories

Update any number of sidebar categories for the user on the given team. This can be used to reorder the channels in these categories. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final teamId = teamId_example; // String | Team GUID
final userId = userId_example; // String | User GUID
final sidebarCategory = [List<SidebarCategory>()]; // List<SidebarCategory> | 

try {
    final result = api_instance.updateSidebarCategoriesForTeamForUser(teamId, userId, sidebarCategory);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->updateSidebarCategoriesForTeamForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **userId** | **String**| User GUID | 
 **sidebarCategory** | [**List<SidebarCategory>**](SidebarCategory.md)|  | 

### Return type

[**SidebarCategory**](SidebarCategory.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSidebarCategoryForTeamForUser**
> SidebarCategory updateSidebarCategoryForTeamForUser(teamId, userId, categoryId, sidebarCategory)

Update sidebar category

Updates a single sidebar category for the user on the given team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final teamId = teamId_example; // String | Team GUID
final userId = userId_example; // String | User GUID
final categoryId = categoryId_example; // String | Category GUID
final sidebarCategory = SidebarCategory(); // SidebarCategory | 

try {
    final result = api_instance.updateSidebarCategoryForTeamForUser(teamId, userId, categoryId, sidebarCategory);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->updateSidebarCategoryForTeamForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **userId** | **String**| User GUID | 
 **categoryId** | **String**| Category GUID | 
 **sidebarCategory** | [**SidebarCategory**](SidebarCategory.md)|  | 

### Return type

[**SidebarCategory**](SidebarCategory.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSidebarCategoryOrderForTeamForUser**
> List<String> updateSidebarCategoryOrderForTeamForUser(teamId, userId, requestBody)

Update user's sidebar category order

Updates the order of the sidebar categories for a user on the given team. The provided array must include the IDs of all categories on the team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final teamId = teamId_example; // String | Team GUID
final userId = userId_example; // String | User GUID
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.updateSidebarCategoryOrderForTeamForUser(teamId, userId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->updateSidebarCategoryOrderForTeamForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **userId** | **String**| User GUID | 
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

**List<String>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewChannel**
> ViewChannel200Response viewChannel(userId, viewChannelRequest)

View channel

Perform all the actions involved in viewing a channel. This includes marking channels as read, clearing push notifications, and updating the active channel. ##### Permissions Must be logged in as user or have `edit_other_users` permission.  __Response only includes `last_viewed_at_times` in Mattermost server 4.3 and newer.__ 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final userId = userId_example; // String | User ID to perform the view action for
final viewChannelRequest = ViewChannelRequest(); // ViewChannelRequest | Paremeters affecting how and which channels to view

try {
    final result = api_instance.viewChannel(userId, viewChannelRequest);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->viewChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User ID to perform the view action for | 
 **viewChannelRequest** | [**ViewChannelRequest**](ViewChannelRequest.md)| Paremeters affecting how and which channels to view | 

### Return type

[**ViewChannel200Response**](ViewChannel200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

