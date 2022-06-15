# mattermost_api.api.MattermostChannelsApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addChannelMember**](MattermostChannelsApi.md#addchannelmember) | **POST** /channels/{channel_id}/members | Add user to channel
[**autocompleteChannelsForTeam**](MattermostChannelsApi.md#autocompletechannelsforteam) | **GET** /teams/{team_id}/channels/autocomplete | Autocomplete channels
[**autocompleteChannelsForTeamForSearch**](MattermostChannelsApi.md#autocompletechannelsforteamforsearch) | **GET** /teams/{team_id}/channels/search_autocomplete | Autocomplete channels for search
[**channelMembersMinusGroupMembers**](MattermostChannelsApi.md#channelmembersminusgroupmembers) | **GET** /channels/{channel_id}/members_minus_group_members | Channel members minus group members.
[**createChannel**](MattermostChannelsApi.md#createchannel) | **POST** /channels | Create a channel
[**createDirectChannel**](MattermostChannelsApi.md#createdirectchannel) | **POST** /channels/direct | Create a direct message channel
[**createGroupChannel**](MattermostChannelsApi.md#creategroupchannel) | **POST** /channels/group | Create a group message channel
[**createSidebarCategoryForTeamForUser**](MattermostChannelsApi.md#createsidebarcategoryforteamforuser) | **POST** /users/{user_id}/teams/{team_id}/channels/categories | Create user's sidebar category
[**deleteChannel**](MattermostChannelsApi.md#deletechannel) | **DELETE** /channels/{channel_id} | Delete a channel
[**getAllChannels**](MattermostChannelsApi.md#getallchannels) | **GET** /channels | Get a list of all channels
[**getChannel**](MattermostChannelsApi.md#getchannel) | **GET** /channels/{channel_id} | Get a channel
[**getChannelByName**](MattermostChannelsApi.md#getchannelbyname) | **GET** /teams/{team_id}/channels/name/{channel_name} | Get a channel by name
[**getChannelByNameForTeamName**](MattermostChannelsApi.md#getchannelbynameforteamname) | **GET** /teams/name/{team_name}/channels/name/{channel_name} | Get a channel by name and team name
[**getChannelMember**](MattermostChannelsApi.md#getchannelmember) | **GET** /channels/{channel_id}/members/{user_id} | Get channel member
[**getChannelMemberCountsByGroup**](MattermostChannelsApi.md#getchannelmembercountsbygroup) | **GET** /channels/{channel_id}/member_counts_by_group | Channel members counts for each group that has atleast one member in the channel
[**getChannelMembers**](MattermostChannelsApi.md#getchannelmembers) | **GET** /channels/{channel_id}/members | Get channel members
[**getChannelMembersByIds**](MattermostChannelsApi.md#getchannelmembersbyids) | **POST** /channels/{channel_id}/members/ids | Get channel members by ids
[**getChannelMembersForUser**](MattermostChannelsApi.md#getchannelmembersforuser) | **GET** /users/{user_id}/teams/{team_id}/channels/members | Get channel memberships and roles for a user
[**getChannelMembersTimezones**](MattermostChannelsApi.md#getchannelmemberstimezones) | **GET** /channels/{channel_id}/timezones | Get timezones in a channel
[**getChannelModerations**](MattermostChannelsApi.md#getchannelmoderations) | **GET** /channels/{channel_id}/moderations | Get information about channel's moderation.
[**getChannelStats**](MattermostChannelsApi.md#getchannelstats) | **GET** /channels/{channel_id}/stats | Get channel statistics
[**getChannelUnread**](MattermostChannelsApi.md#getchannelunread) | **GET** /users/{user_id}/channels/{channel_id}/unread | Get unread messages
[**getChannelsForTeamForUser**](MattermostChannelsApi.md#getchannelsforteamforuser) | **GET** /users/{user_id}/teams/{team_id}/channels | Get channels for user
[**getChannelsForUser**](MattermostChannelsApi.md#getchannelsforuser) | **GET** /users/{user_id}/channels | Get all channels from all teams
[**getDeletedChannelsForTeam**](MattermostChannelsApi.md#getdeletedchannelsforteam) | **GET** /teams/{team_id}/channels/deleted | Get deleted channels
[**getPinnedPosts**](MattermostChannelsApi.md#getpinnedposts) | **GET** /channels/{channel_id}/pinned | Get a channel's pinned posts
[**getPrivateChannelsForTeam**](MattermostChannelsApi.md#getprivatechannelsforteam) | **GET** /teams/{team_id}/channels/private | Get private channels
[**getPublicChannelsByIdsForTeam**](MattermostChannelsApi.md#getpublicchannelsbyidsforteam) | **POST** /teams/{team_id}/channels/ids | Get a list of channels by ids
[**getPublicChannelsForTeam**](MattermostChannelsApi.md#getpublicchannelsforteam) | **GET** /teams/{team_id}/channels | Get public channels
[**getSidebarCategoriesForTeamForUser**](MattermostChannelsApi.md#getsidebarcategoriesforteamforuser) | **GET** /users/{user_id}/teams/{team_id}/channels/categories | Get user's sidebar categories
[**getSidebarCategoryForTeamForUser**](MattermostChannelsApi.md#getsidebarcategoryforteamforuser) | **GET** /users/{user_id}/teams/{team_id}/channels/categories/{category_id} | Get sidebar category
[**getSidebarCategoryOrderForTeamForUser**](MattermostChannelsApi.md#getsidebarcategoryorderforteamforuser) | **GET** /users/{user_id}/teams/{team_id}/channels/categories/order | Get user's sidebar category order
[**moveChannel**](MattermostChannelsApi.md#movechannel) | **POST** /channels/{channel_id}/move | Move a channel
[**patchChannel**](MattermostChannelsApi.md#patchchannel) | **PUT** /channels/{channel_id}/patch | Patch a channel
[**patchChannelModerations**](MattermostChannelsApi.md#patchchannelmoderations) | **PUT** /channels/{channel_id}/moderations/patch | Update a channel's moderation settings.
[**removeSidebarCategoryForTeamForUser**](MattermostChannelsApi.md#removesidebarcategoryforteamforuser) | **DELETE** /users/{user_id}/teams/{team_id}/channels/categories/{category_id} | Delete sidebar category
[**removeUserFromChannel**](MattermostChannelsApi.md#removeuserfromchannel) | **DELETE** /channels/{channel_id}/members/{user_id} | Remove user from channel
[**restoreChannel**](MattermostChannelsApi.md#restorechannel) | **POST** /channels/{channel_id}/restore | Restore a channel
[**searchAllChannels**](MattermostChannelsApi.md#searchallchannels) | **POST** /channels/search | Search all private and open type channels across all teams
[**searchArchivedChannels**](MattermostChannelsApi.md#searcharchivedchannels) | **POST** /teams/{team_id}/channels/search_archived | Search archived channels
[**searchChannels**](MattermostChannelsApi.md#searchchannels) | **POST** /teams/{team_id}/channels/search | Search channels
[**searchGroupChannels**](MattermostChannelsApi.md#searchgroupchannels) | **POST** /channels/group/search | Search Group Channels
[**updateChannel**](MattermostChannelsApi.md#updatechannel) | **PUT** /channels/{channel_id} | Update a channel
[**updateChannelMemberSchemeRoles**](MattermostChannelsApi.md#updatechannelmemberschemeroles) | **PUT** /channels/{channel_id}/members/{user_id}/schemeRoles | Update the scheme-derived roles of a channel member.
[**updateChannelNotifyProps**](MattermostChannelsApi.md#updatechannelnotifyprops) | **PUT** /channels/{channel_id}/members/{user_id}/notify_props | Update channel notifications
[**updateChannelPrivacy**](MattermostChannelsApi.md#updatechannelprivacy) | **PUT** /channels/{channel_id}/privacy | Update channel's privacy
[**updateChannelRoles**](MattermostChannelsApi.md#updatechannelroles) | **PUT** /channels/{channel_id}/members/{user_id}/roles | Update channel roles
[**updateChannelScheme**](MattermostChannelsApi.md#updatechannelscheme) | **PUT** /channels/{channel_id}/scheme | Set a channel's scheme
[**updateSidebarCategoriesForTeamForUser**](MattermostChannelsApi.md#updatesidebarcategoriesforteamforuser) | **PUT** /users/{user_id}/teams/{team_id}/channels/categories | Update user's sidebar categories
[**updateSidebarCategoryForTeamForUser**](MattermostChannelsApi.md#updatesidebarcategoryforteamforuser) | **PUT** /users/{user_id}/teams/{team_id}/channels/categories/{category_id} | Update sidebar category
[**updateSidebarCategoryOrderForTeamForUser**](MattermostChannelsApi.md#updatesidebarcategoryorderforteamforuser) | **PUT** /users/{user_id}/teams/{team_id}/channels/categories/order | Update user's sidebar category order
[**viewChannel**](MattermostChannelsApi.md#viewchannel) | **POST** /channels/members/{user_id}/view | View channel


# **addChannelMember**
> MattermostChannelMember addChannelMember(channelId, mattermostAddChannelMemberRequest)

Add user to channel

Add a user to a channel by creating a channel member object.

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final channelId = channelId_example; // String | The channel ID
final mattermostAddChannelMemberRequest = MattermostAddChannelMemberRequest(); // MattermostAddChannelMemberRequest | 

try {
    final result = await client.channels.addChannelMember(channelId, mattermostAddChannelMemberRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->addChannelMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| The channel ID | 
 **mattermostAddChannelMemberRequest** | [**MattermostAddChannelMemberRequest**](MattermostAddChannelMemberRequest.md)|  | 

### Return type

[**MattermostChannelMember**](MattermostChannelMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocompleteChannelsForTeam**
> List<MattermostChannel> autocompleteChannelsForTeam(teamId, name)

Autocomplete channels

Autocomplete public channels on a team based on the search term provided in the request URL.  __Minimum server version__: 4.7  ##### Permissions Must have the `list_team_channels` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final teamId = teamId_example; // String | Team GUID
final name = name_example; // String | Name or display name

try {
    final result = await client.channels.autocompleteChannelsForTeam(teamId, name);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->autocompleteChannelsForTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **name** | **String**| Name or display name | 

### Return type

[**List<MattermostChannel>**](MattermostChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocompleteChannelsForTeamForSearch**
> List<MattermostChannel> autocompleteChannelsForTeamForSearch(teamId, name)

Autocomplete channels for search

Autocomplete your channels on a team based on the search term provided in the request URL.  __Minimum server version__: 5.4  ##### Permissions Must have the `list_team_channels` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final teamId = teamId_example; // String | Team GUID
final name = name_example; // String | Name or display name

try {
    final result = await client.channels.autocompleteChannelsForTeamForSearch(teamId, name);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->autocompleteChannelsForTeamForSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **name** | **String**| Name or display name | 

### Return type

[**List<MattermostChannel>**](MattermostChannel.md)

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

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final channelId = channelId_example; // String | Channel GUID
final groupIds = groupIds_example; // String | A comma-separated list of group ids.
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of users per page.

try {
    await client.channels.channelMembersMinusGroupMembers(channelId, groupIds, page, perPage);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->channelMembersMinusGroupMembers: $e\n');
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
> MattermostChannel createChannel(mattermostCreateChannelRequest)

Create a channel

Create a new channel. ##### Permissions If creating a public channel, `create_public_channel` permission is required. If creating a private channel, `create_private_channel` permission is required. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final mattermostCreateChannelRequest = MattermostCreateChannelRequest(); // MattermostCreateChannelRequest | Channel object to be created

try {
    final result = await client.channels.createChannel(mattermostCreateChannelRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->createChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostCreateChannelRequest** | [**MattermostCreateChannelRequest**](MattermostCreateChannelRequest.md)| Channel object to be created | 

### Return type

[**MattermostChannel**](MattermostChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDirectChannel**
> MattermostChannel createDirectChannel(requestBody)

Create a direct message channel

Create a new direct message channel between two users. ##### Permissions Must be one of the two users and have `create_direct_channel` permission. Having the `manage_system` permission voids the previous requirements. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final requestBody = [List<String>()]; // List<String> | The two user ids to be in the direct message

try {
    final result = await client.channels.createDirectChannel(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->createDirectChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)| The two user ids to be in the direct message | 

### Return type

[**MattermostChannel**](MattermostChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createGroupChannel**
> MattermostChannel createGroupChannel(requestBody)

Create a group message channel

Create a new group message channel to group of users. If the logged in user's id is not included in the list, it will be appended to the end. ##### Permissions Must have `create_group_channel` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final requestBody = [List<String>()]; // List<String> | User ids to be in the group message channel

try {
    final result = await client.channels.createGroupChannel(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->createGroupChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)| User ids to be in the group message channel | 

### Return type

[**MattermostChannel**](MattermostChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSidebarCategoryForTeamForUser**
> MattermostSidebarCategory createSidebarCategoryForTeamForUser(teamId, userId, mattermostSidebarCategory)

Create user's sidebar category

Create a custom sidebar category for the user on the given team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final teamId = teamId_example; // String | Team GUID
final userId = userId_example; // String | User GUID
final mattermostSidebarCategory = MattermostSidebarCategory(); // MattermostSidebarCategory | 

try {
    final result = await client.channels.createSidebarCategoryForTeamForUser(teamId, userId, mattermostSidebarCategory);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->createSidebarCategoryForTeamForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **userId** | **String**| User GUID | 
 **mattermostSidebarCategory** | [**MattermostSidebarCategory**](MattermostSidebarCategory.md)|  | 

### Return type

[**MattermostSidebarCategory**](MattermostSidebarCategory.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteChannel**
> MattermostStatusOK deleteChannel(channelId)

Delete a channel

Archives a channel. This will set the `deleteAt` to the current timestamp in the database. Soft deleted channels may not be accessible in the user interface. They can be viewed and unarchived in the **System Console > User Management > Channels** based on your license. Direct and group message channels cannot be deleted.  As of server version 5.28, optionally use the `permanent=true` query parameter to permanently delete the channel for compliance reasons. To use this feature `ServiceSettings.EnableAPIChannelDeletion` must be set to `true` in the server's configuration.  If you permanently delete a channel this action is not recoverable outside of a database backup.  ##### Permissions `delete_public_channel` permission if the channel is public, `delete_private_channel` permission if the channel is private, or have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final channelId = channelId_example; // String | Channel GUID

try {
    final result = await client.channels.deleteChannel(channelId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->deleteChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllChannels**
> List<MattermostChannelWithTeamData> getAllChannels(notAssociatedToGroup, page, perPage, excludeDefaultChannels, includeDeleted, includeTotalCount, excludePolicyConstrained)

Get a list of all channels

##### Permissions `manage_system` 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final notAssociatedToGroup = notAssociatedToGroup_example; // String | A group id to exclude channels that are associated with that group via GroupChannel records. This can also be left blank with `not_associated_to_group=`.
final page = 56; // int | 
final perPage = 56; // int | 
final excludeDefaultChannels = true; // bool | Whether to exclude default channels (ex Town Square, Off-Topic) from the results.
final includeDeleted = true; // bool | Include channels that have been archived. This correlates to the `DeleteAt` flag being set in the database.
final includeTotalCount = true; // bool | Appends a total count of returned channels inside the response object - ex: `{ \"channels\": [], \"total_count\" : 0 }`.      
final excludePolicyConstrained = true; // bool | If set to true, channels which are part of a data retention policy will be excluded. The `sysconsole_read_compliance` permission is required to use this parameter. __Minimum server version__: 5.35

try {
    final result = await client.channels.getAllChannels(notAssociatedToGroup, page, perPage, excludeDefaultChannels, includeDeleted, includeTotalCount, excludePolicyConstrained);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->getAllChannels: $e\n');
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

[**List<MattermostChannelWithTeamData>**](MattermostChannelWithTeamData.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannel**
> MattermostChannel getChannel(channelId)

Get a channel

Get channel from the provided channel id string. ##### Permissions `read_channel` permission for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final channelId = channelId_example; // String | Channel GUID

try {
    final result = await client.channels.getChannel(channelId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->getChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 

### Return type

[**MattermostChannel**](MattermostChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelByName**
> MattermostChannel getChannelByName(teamId, channelName, includeDeleted)

Get a channel by name

Gets channel from the provided team id and channel name strings. ##### Permissions `read_channel` permission for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final teamId = teamId_example; // String | Team GUID
final channelName = channelName_example; // String | Channel Name
final includeDeleted = true; // bool | Defines if deleted channels should be returned or not (Mattermost Server 5.26.0+)

try {
    final result = await client.channels.getChannelByName(teamId, channelName, includeDeleted);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->getChannelByName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **channelName** | **String**| Channel Name | 
 **includeDeleted** | **bool**| Defines if deleted channels should be returned or not (Mattermost Server 5.26.0+) | [optional] [default to false]

### Return type

[**MattermostChannel**](MattermostChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelByNameForTeamName**
> MattermostChannel getChannelByNameForTeamName(teamName, channelName, includeDeleted)

Get a channel by name and team name

Gets a channel from the provided team name and channel name strings. ##### Permissions `read_channel` permission for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final teamName = teamName_example; // String | Team Name
final channelName = channelName_example; // String | Channel Name
final includeDeleted = true; // bool | Defines if deleted channels should be returned or not (Mattermost Server 5.26.0+)

try {
    final result = await client.channels.getChannelByNameForTeamName(teamName, channelName, includeDeleted);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->getChannelByNameForTeamName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamName** | **String**| Team Name | 
 **channelName** | **String**| Channel Name | 
 **includeDeleted** | **bool**| Defines if deleted channels should be returned or not (Mattermost Server 5.26.0+) | [optional] [default to false]

### Return type

[**MattermostChannel**](MattermostChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelMember**
> MattermostChannelMember getChannelMember(channelId, userId)

Get channel member

Get a channel member. ##### Permissions `read_channel` permission for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final channelId = channelId_example; // String | Channel GUID
final userId = userId_example; // String | User GUID

try {
    final result = await client.channels.getChannelMember(channelId, userId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->getChannelMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **userId** | **String**| User GUID | 

### Return type

[**MattermostChannelMember**](MattermostChannelMember.md)

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

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final channelId = channelId_example; // String | Channel GUID
final includeTimezones = true; // bool | Defines if member timezone counts should be returned or not

try {
    await client.channels.getChannelMemberCountsByGroup(channelId, includeTimezones);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->getChannelMemberCountsByGroup: $e\n');
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
> List<MattermostChannelMember> getChannelMembers(channelId, page, perPage)

Get channel members

Get a page of members for a channel. ##### Permissions `read_channel` permission for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final channelId = channelId_example; // String | Channel GUID
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of members per page. There is a maximum limit of 200 members.

try {
    final result = await client.channels.getChannelMembers(channelId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->getChannelMembers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of members per page. There is a maximum limit of 200 members. | [optional] [default to 60]

### Return type

[**List<MattermostChannelMember>**](MattermostChannelMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelMembersByIds**
> List<MattermostChannelMember> getChannelMembersByIds(channelId, requestBody)

Get channel members by ids

Get a list of channel members based on the provided user ids. ##### Permissions Must have the `read_channel` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final channelId = channelId_example; // String | Channel GUID
final requestBody = [List<String>()]; // List<String> | List of user ids

try {
    final result = await client.channels.getChannelMembersByIds(channelId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->getChannelMembersByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **requestBody** | [**List<String>**](String.md)| List of user ids | 

### Return type

[**List<MattermostChannelMember>**](MattermostChannelMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelMembersForUser**
> List<MattermostChannelMember> getChannelMembersForUser(userId, teamId)

Get channel memberships and roles for a user

Get all channel memberships and associated membership roles (i.e. `channel_user`, `channel_admin`) for a user on a specific team. ##### Permissions Logged in as the user and `view_team` permission for the team. Having `manage_system` permission voids the previous requirements. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final userId = userId_example; // String | User GUID
final teamId = teamId_example; // String | Team GUID

try {
    final result = await client.channels.getChannelMembersForUser(userId, teamId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->getChannelMembersForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **teamId** | **String**| Team GUID | 

### Return type

[**List<MattermostChannelMember>**](MattermostChannelMember.md)

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

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final channelId = channelId_example; // String | Channel GUID

try {
    final result = await client.channels.getChannelMembersTimezones(channelId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->getChannelMembersTimezones: $e\n');
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
> List<MattermostChannelModeration> getChannelModerations(channelId)

Get information about channel's moderation.

##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.22 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final channelId = channelId_example; // String | Channel GUID

try {
    final result = await client.channels.getChannelModerations(channelId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->getChannelModerations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 

### Return type

[**List<MattermostChannelModeration>**](MattermostChannelModeration.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelStats**
> MattermostChannelStats getChannelStats(channelId)

Get channel statistics

Get statistics for a channel. ##### Permissions Must have the `read_channel` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final channelId = channelId_example; // String | Channel GUID

try {
    final result = await client.channels.getChannelStats(channelId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->getChannelStats: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 

### Return type

[**MattermostChannelStats**](MattermostChannelStats.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelUnread**
> MattermostChannelUnread getChannelUnread(userId, channelId)

Get unread messages

Get the total unread messages and mentions for a channel for a user. ##### Permissions Must be logged in as user and have the `read_channel` permission, or have `edit_other_usrs` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final userId = userId_example; // String | User GUID
final channelId = channelId_example; // String | Channel GUID

try {
    final result = await client.channels.getChannelUnread(userId, channelId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->getChannelUnread: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **channelId** | **String**| Channel GUID | 

### Return type

[**MattermostChannelUnread**](MattermostChannelUnread.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelsForTeamForUser**
> List<MattermostChannel> getChannelsForTeamForUser(userId, teamId, includeDeleted, lastDeleteAt)

Get channels for user

Get all the channels on a team for a user. ##### Permissions Logged in as the user, or have `edit_other_users` permission, and `view_team` permission for the team. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final userId = userId_example; // String | User GUID
final teamId = teamId_example; // String | Team GUID
final includeDeleted = true; // bool | Defines if deleted channels should be returned or not
final lastDeleteAt = 56; // int | Filters the deleted channels by this time in epoch format. Does not have any effect if include_deleted is set to false.

try {
    final result = await client.channels.getChannelsForTeamForUser(userId, teamId, includeDeleted, lastDeleteAt);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->getChannelsForTeamForUser: $e\n');
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

[**List<MattermostChannel>**](MattermostChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelsForUser**
> List<MattermostChannel> getChannelsForUser(userId, lastDeleteAt, includeDeleted)

Get all channels from all teams

Get all channels from all teams that a user is a member of.  __Minimum server version__: 6.1  ##### Permissions  Logged in as the user, or have `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final userId = userId_example; // String | The ID of the user. This can also be \"me\" which will point to the current user.
final lastDeleteAt = 56; // int | Filters the deleted channels by this time in epoch format. Does not have any effect if include_deleted is set to false.
final includeDeleted = true; // bool | Defines if deleted channels should be returned or not

try {
    final result = await client.channels.getChannelsForUser(userId, lastDeleteAt, includeDeleted);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->getChannelsForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The ID of the user. This can also be \"me\" which will point to the current user. | 
 **lastDeleteAt** | **int**| Filters the deleted channels by this time in epoch format. Does not have any effect if include_deleted is set to false. | [optional] [default to 0]
 **includeDeleted** | **bool**| Defines if deleted channels should be returned or not | [optional] [default to false]

### Return type

[**List<MattermostChannel>**](MattermostChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeletedChannelsForTeam**
> List<MattermostChannel> getDeletedChannelsForTeam(teamId, page, perPage)

Get deleted channels

Get a page of deleted channels on a team based on query string parameters - team_id, page and per_page.  __Minimum server version__: 3.10 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final teamId = teamId_example; // String | Team GUID
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of public channels per page.

try {
    final result = await client.channels.getDeletedChannelsForTeam(teamId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->getDeletedChannelsForTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of public channels per page. | [optional] [default to 60]

### Return type

[**List<MattermostChannel>**](MattermostChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPinnedPosts**
> MattermostPostList getPinnedPosts(channelId)

Get a channel's pinned posts

Get a list of pinned posts for channel.

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final channelId = channelId_example; // String | Channel GUID

try {
    final result = await client.channels.getPinnedPosts(channelId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->getPinnedPosts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 

### Return type

[**MattermostPostList**](MattermostPostList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPrivateChannelsForTeam**
> List<MattermostChannel> getPrivateChannelsForTeam(teamId, page, perPage)

Get private channels

Get a page of private channels on a team based on query string parameters - team_id, page and per_page.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final teamId = teamId_example; // String | Team GUID
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of private channels per page.

try {
    final result = await client.channels.getPrivateChannelsForTeam(teamId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->getPrivateChannelsForTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of private channels per page. | [optional] [default to 60]

### Return type

[**List<MattermostChannel>**](MattermostChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPublicChannelsByIdsForTeam**
> List<MattermostChannel> getPublicChannelsByIdsForTeam(teamId, requestBody)

Get a list of channels by ids

Get a list of public channels on a team by id. ##### Permissions `view_team` for the team the channels are on. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final teamId = teamId_example; // String | Team GUID
final requestBody = [List<String>()]; // List<String> | List of channel ids

try {
    final result = await client.channels.getPublicChannelsByIdsForTeam(teamId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->getPublicChannelsByIdsForTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **requestBody** | [**List<String>**](String.md)| List of channel ids | 

### Return type

[**List<MattermostChannel>**](MattermostChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPublicChannelsForTeam**
> List<MattermostChannel> getPublicChannelsForTeam(teamId, page, perPage)

Get public channels

Get a page of public channels on a team based on query string parameters - page and per_page. ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final teamId = teamId_example; // String | Team GUID
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of public channels per page.

try {
    final result = await client.channels.getPublicChannelsForTeam(teamId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->getPublicChannelsForTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of public channels per page. | [optional] [default to 60]

### Return type

[**List<MattermostChannel>**](MattermostChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSidebarCategoriesForTeamForUser**
> List<MattermostOrderedSidebarCategories> getSidebarCategoriesForTeamForUser(teamId, userId)

Get user's sidebar categories

Get a list of sidebar categories that will appear in the user's sidebar on the given team, including a list of channel IDs in each category. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final teamId = teamId_example; // String | Team GUID
final userId = userId_example; // String | User GUID

try {
    final result = await client.channels.getSidebarCategoriesForTeamForUser(teamId, userId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->getSidebarCategoriesForTeamForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **userId** | **String**| User GUID | 

### Return type

[**List<MattermostOrderedSidebarCategories>**](MattermostOrderedSidebarCategories.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSidebarCategoryForTeamForUser**
> MattermostSidebarCategory getSidebarCategoryForTeamForUser(teamId, userId, categoryId)

Get sidebar category

Returns a single sidebar category for the user on the given team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final teamId = teamId_example; // String | Team GUID
final userId = userId_example; // String | User GUID
final categoryId = categoryId_example; // String | Category GUID

try {
    final result = await client.channels.getSidebarCategoryForTeamForUser(teamId, userId, categoryId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->getSidebarCategoryForTeamForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **userId** | **String**| User GUID | 
 **categoryId** | **String**| Category GUID | 

### Return type

[**MattermostSidebarCategory**](MattermostSidebarCategory.md)

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

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final teamId = teamId_example; // String | Team GUID
final userId = userId_example; // String | User GUID

try {
    final result = await client.channels.getSidebarCategoryOrderForTeamForUser(teamId, userId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->getSidebarCategoryOrderForTeamForUser: $e\n');
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
> MattermostChannel moveChannel(channelId, mattermostMoveChannelRequest)

Move a channel

Move a channel to another team.  __Minimum server version__: 5.26  ##### Permissions  Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final channelId = channelId_example; // String | Channel GUID
final mattermostMoveChannelRequest = MattermostMoveChannelRequest(); // MattermostMoveChannelRequest | 

try {
    final result = await client.channels.moveChannel(channelId, mattermostMoveChannelRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->moveChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **mattermostMoveChannelRequest** | [**MattermostMoveChannelRequest**](MattermostMoveChannelRequest.md)|  | 

### Return type

[**MattermostChannel**](MattermostChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchChannel**
> MattermostChannel patchChannel(channelId, mattermostPatchChannelRequest)

Patch a channel

Partially update a channel by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions If updating a public channel, `manage_public_channel_members` permission is required. If updating a private channel, `manage_private_channel_members` permission is required. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final channelId = channelId_example; // String | Channel GUID
final mattermostPatchChannelRequest = MattermostPatchChannelRequest(); // MattermostPatchChannelRequest | Channel object to be updated

try {
    final result = await client.channels.patchChannel(channelId, mattermostPatchChannelRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->patchChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **mattermostPatchChannelRequest** | [**MattermostPatchChannelRequest**](MattermostPatchChannelRequest.md)| Channel object to be updated | 

### Return type

[**MattermostChannel**](MattermostChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchChannelModerations**
> List<MattermostChannelModeration> patchChannelModerations(channelId, mattermostChannelModerationPatch)

Update a channel's moderation settings.

##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.22 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final channelId = channelId_example; // String | Channel GUID
final mattermostChannelModerationPatch = MattermostChannelModerationPatch(); // MattermostChannelModerationPatch | 

try {
    final result = await client.channels.patchChannelModerations(channelId, mattermostChannelModerationPatch);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->patchChannelModerations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **mattermostChannelModerationPatch** | [**MattermostChannelModerationPatch**](MattermostChannelModerationPatch.md)|  | 

### Return type

[**List<MattermostChannelModeration>**](MattermostChannelModeration.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeSidebarCategoryForTeamForUser**
> MattermostSidebarCategory removeSidebarCategoryForTeamForUser(teamId, userId, categoryId)

Delete sidebar category

Deletes a single sidebar category for the user on the given team. Only custom categories can be deleted. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final teamId = teamId_example; // String | Team GUID
final userId = userId_example; // String | User GUID
final categoryId = categoryId_example; // String | Category GUID

try {
    final result = await client.channels.removeSidebarCategoryForTeamForUser(teamId, userId, categoryId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->removeSidebarCategoryForTeamForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **userId** | **String**| User GUID | 
 **categoryId** | **String**| Category GUID | 

### Return type

[**MattermostSidebarCategory**](MattermostSidebarCategory.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeUserFromChannel**
> MattermostStatusOK removeUserFromChannel(channelId, userId)

Remove user from channel

Delete a channel member, effectively removing them from a channel.  In server version 5.3 and later, channel members can only be deleted from public or private channels. ##### Permissions `manage_public_channel_members` permission if the channel is public. `manage_private_channel_members` permission if the channel is private. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final channelId = channelId_example; // String | Channel GUID
final userId = userId_example; // String | User GUID

try {
    final result = await client.channels.removeUserFromChannel(channelId, userId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->removeUserFromChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **userId** | **String**| User GUID | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restoreChannel**
> MattermostChannel restoreChannel(channelId)

Restore a channel

Restore channel from the provided channel id string.  __Minimum server version__: 3.10  ##### Permissions `manage_team` permission for the team of the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final channelId = channelId_example; // String | Channel GUID

try {
    final result = await client.channels.restoreChannel(channelId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->restoreChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 

### Return type

[**MattermostChannel**](MattermostChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchAllChannels**
> MattermostSearchAllChannels200Response searchAllChannels(mattermostSearchAllChannelsRequest, systemConsole)

Search all private and open type channels across all teams

Returns all private and open type channels where 'term' matches on the name, display name, or purpose of the channel.  Configured 'default' channels (ex Town Square and Off-Topic) can be excluded from the results with the `exclude_default_channels` boolean parameter.  Channels that are associated (via GroupChannel records) to a given group can be excluded from the results with the `not_associated_to_group` parameter and a group id string. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final mattermostSearchAllChannelsRequest = MattermostSearchAllChannelsRequest(); // MattermostSearchAllChannelsRequest | The search terms and logic to use in the search.
final systemConsole = true; // bool | Is the request from system_console. If this is set to true, it filters channels by the logged in user. 

try {
    final result = await client.channels.searchAllChannels(mattermostSearchAllChannelsRequest, systemConsole);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->searchAllChannels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostSearchAllChannelsRequest** | [**MattermostSearchAllChannelsRequest**](MattermostSearchAllChannelsRequest.md)| The search terms and logic to use in the search. | 
 **systemConsole** | **bool**| Is the request from system_console. If this is set to true, it filters channels by the logged in user.  | [optional] [default to true]

### Return type

[**MattermostSearchAllChannels200Response**](MattermostSearchAllChannels200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchArchivedChannels**
> List<MattermostChannel> searchArchivedChannels(teamId, mattermostSearchArchivedChannelsRequest)

Search archived channels

Search archived channels on a team based on the search term provided in the request body.  __Minimum server version__: 5.18  ##### Permissions Must have the `list_team_channels` permission.  In server version 5.18 and later, a user without the `list_team_channels` permission will be able to use this endpoint, with the search results limited to the channels that the user is a member of. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final teamId = teamId_example; // String | Team GUID
final mattermostSearchArchivedChannelsRequest = MattermostSearchArchivedChannelsRequest(); // MattermostSearchArchivedChannelsRequest | Search criteria

try {
    final result = await client.channels.searchArchivedChannels(teamId, mattermostSearchArchivedChannelsRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->searchArchivedChannels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **mattermostSearchArchivedChannelsRequest** | [**MattermostSearchArchivedChannelsRequest**](MattermostSearchArchivedChannelsRequest.md)| Search criteria | 

### Return type

[**List<MattermostChannel>**](MattermostChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchChannels**
> List<MattermostChannel> searchChannels(teamId, mattermostSearchChannelsRequest)

Search channels

Search public channels on a team based on the search term provided in the request body. ##### Permissions Must have the `list_team_channels` permission.  In server version 5.16 and later, a user without the `list_team_channels` permission will be able to use this endpoint, with the search results limited to the channels that the user is a member of. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final teamId = teamId_example; // String | Team GUID
final mattermostSearchChannelsRequest = MattermostSearchChannelsRequest(); // MattermostSearchChannelsRequest | Search criteria

try {
    final result = await client.channels.searchChannels(teamId, mattermostSearchChannelsRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->searchChannels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **mattermostSearchChannelsRequest** | [**MattermostSearchChannelsRequest**](MattermostSearchChannelsRequest.md)| Search criteria | 

### Return type

[**List<MattermostChannel>**](MattermostChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchGroupChannels**
> List<MattermostChannel> searchGroupChannels(mattermostSearchGroupChannelsRequest)

Search Group Channels

Get a list of group channels for a user which members' usernames match the search term.  __Minimum server version__: 5.14 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final mattermostSearchGroupChannelsRequest = MattermostSearchGroupChannelsRequest(); // MattermostSearchGroupChannelsRequest | Search criteria

try {
    final result = await client.channels.searchGroupChannels(mattermostSearchGroupChannelsRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->searchGroupChannels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostSearchGroupChannelsRequest** | [**MattermostSearchGroupChannelsRequest**](MattermostSearchGroupChannelsRequest.md)| Search criteria | 

### Return type

[**List<MattermostChannel>**](MattermostChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChannel**
> MattermostChannel updateChannel(channelId, mattermostUpdateChannelRequest)

Update a channel

Update a channel. The fields that can be updated are listed as parameters. Omitted fields will be treated as blanks. ##### Permissions If updating a public channel, `manage_public_channel_members` permission is required. If updating a private channel, `manage_private_channel_members` permission is required. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final channelId = channelId_example; // String | Channel GUID
final mattermostUpdateChannelRequest = MattermostUpdateChannelRequest(); // MattermostUpdateChannelRequest | Channel object to be updated

try {
    final result = await client.channels.updateChannel(channelId, mattermostUpdateChannelRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->updateChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **mattermostUpdateChannelRequest** | [**MattermostUpdateChannelRequest**](MattermostUpdateChannelRequest.md)| Channel object to be updated | 

### Return type

[**MattermostChannel**](MattermostChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChannelMemberSchemeRoles**
> MattermostStatusOK updateChannelMemberSchemeRoles(channelId, userId, mattermostUpdateTeamMemberSchemeRolesRequest)

Update the scheme-derived roles of a channel member.

Update a channel member's scheme_admin/scheme_user properties. Typically this should either be `scheme_admin=false, scheme_user=true` for ordinary channel member, or `scheme_admin=true, scheme_user=true` for a channel admin. __Minimum server version__: 5.0 ##### Permissions Must be authenticated and have the `manage_channel_roles` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final channelId = channelId_example; // String | Channel GUID
final userId = userId_example; // String | User GUID
final mattermostUpdateTeamMemberSchemeRolesRequest = MattermostUpdateTeamMemberSchemeRolesRequest(); // MattermostUpdateTeamMemberSchemeRolesRequest | Scheme properties.

try {
    final result = await client.channels.updateChannelMemberSchemeRoles(channelId, userId, mattermostUpdateTeamMemberSchemeRolesRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->updateChannelMemberSchemeRoles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **userId** | **String**| User GUID | 
 **mattermostUpdateTeamMemberSchemeRolesRequest** | [**MattermostUpdateTeamMemberSchemeRolesRequest**](MattermostUpdateTeamMemberSchemeRolesRequest.md)| Scheme properties. | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChannelNotifyProps**
> MattermostStatusOK updateChannelNotifyProps(channelId, userId, mattermostChannelNotifyProps)

Update channel notifications

Update a user's notification properties for a channel. Only the provided fields are updated. ##### Permissions Must be logged in as the user or have `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final channelId = channelId_example; // String | Channel GUID
final userId = userId_example; // String | User GUID
final mattermostChannelNotifyProps = MattermostChannelNotifyProps(); // MattermostChannelNotifyProps | 

try {
    final result = await client.channels.updateChannelNotifyProps(channelId, userId, mattermostChannelNotifyProps);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->updateChannelNotifyProps: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **userId** | **String**| User GUID | 
 **mattermostChannelNotifyProps** | [**MattermostChannelNotifyProps**](MattermostChannelNotifyProps.md)|  | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChannelPrivacy**
> MattermostChannel updateChannelPrivacy(channelId, mattermostUpdateChannelPrivacyRequest)

Update channel's privacy

Updates channel's privacy allowing changing a channel from Public to Private and back.  __Minimum server version__: 5.16  ##### Permissions `manage_team` permission for the channels team on version < 5.28. `convert_public_channel_to_private` permission for the channel if updating privacy to 'P' on version >= 5.28. `convert_private_channel_to_public` permission for the channel if updating privacy to 'O' on version >= 5.28. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final channelId = channelId_example; // String | Channel GUID
final mattermostUpdateChannelPrivacyRequest = MattermostUpdateChannelPrivacyRequest(); // MattermostUpdateChannelPrivacyRequest | 

try {
    final result = await client.channels.updateChannelPrivacy(channelId, mattermostUpdateChannelPrivacyRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->updateChannelPrivacy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **mattermostUpdateChannelPrivacyRequest** | [**MattermostUpdateChannelPrivacyRequest**](MattermostUpdateChannelPrivacyRequest.md)|  | 

### Return type

[**MattermostChannel**](MattermostChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChannelRoles**
> MattermostStatusOK updateChannelRoles(channelId, userId, mattermostUpdateUserRolesRequest)

Update channel roles

Update a user's roles for a channel. ##### Permissions Must have `manage_channel_roles` permission for the channel. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final channelId = channelId_example; // String | Channel GUID
final userId = userId_example; // String | User GUID
final mattermostUpdateUserRolesRequest = MattermostUpdateUserRolesRequest(); // MattermostUpdateUserRolesRequest | Space-delimited channel roles to assign to the user

try {
    final result = await client.channels.updateChannelRoles(channelId, userId, mattermostUpdateUserRolesRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->updateChannelRoles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **userId** | **String**| User GUID | 
 **mattermostUpdateUserRolesRequest** | [**MattermostUpdateUserRolesRequest**](MattermostUpdateUserRolesRequest.md)| Space-delimited channel roles to assign to the user | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChannelScheme**
> MattermostStatusOK updateChannelScheme(channelId, mattermostUpdateTeamSchemeRequest)

Set a channel's scheme

Set a channel's scheme, more specifically sets the scheme_id value of a channel record.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.10 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final channelId = channelId_example; // String | Channel GUID
final mattermostUpdateTeamSchemeRequest = MattermostUpdateTeamSchemeRequest(); // MattermostUpdateTeamSchemeRequest | Scheme GUID

try {
    final result = await client.channels.updateChannelScheme(channelId, mattermostUpdateTeamSchemeRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->updateChannelScheme: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **mattermostUpdateTeamSchemeRequest** | [**MattermostUpdateTeamSchemeRequest**](MattermostUpdateTeamSchemeRequest.md)| Scheme GUID | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSidebarCategoriesForTeamForUser**
> MattermostSidebarCategory updateSidebarCategoriesForTeamForUser(teamId, userId, mattermostSidebarCategory)

Update user's sidebar categories

Update any number of sidebar categories for the user on the given team. This can be used to reorder the channels in these categories. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final teamId = teamId_example; // String | Team GUID
final userId = userId_example; // String | User GUID
final mattermostSidebarCategory = [List<MattermostSidebarCategory>()]; // List<MattermostSidebarCategory> | 

try {
    final result = await client.channels.updateSidebarCategoriesForTeamForUser(teamId, userId, mattermostSidebarCategory);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->updateSidebarCategoriesForTeamForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **userId** | **String**| User GUID | 
 **mattermostSidebarCategory** | [**List<MattermostSidebarCategory>**](MattermostSidebarCategory.md)|  | 

### Return type

[**MattermostSidebarCategory**](MattermostSidebarCategory.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSidebarCategoryForTeamForUser**
> MattermostSidebarCategory updateSidebarCategoryForTeamForUser(teamId, userId, categoryId, mattermostSidebarCategory)

Update sidebar category

Updates a single sidebar category for the user on the given team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final teamId = teamId_example; // String | Team GUID
final userId = userId_example; // String | User GUID
final categoryId = categoryId_example; // String | Category GUID
final mattermostSidebarCategory = MattermostSidebarCategory(); // MattermostSidebarCategory | 

try {
    final result = await client.channels.updateSidebarCategoryForTeamForUser(teamId, userId, categoryId, mattermostSidebarCategory);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->updateSidebarCategoryForTeamForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **userId** | **String**| User GUID | 
 **categoryId** | **String**| Category GUID | 
 **mattermostSidebarCategory** | [**MattermostSidebarCategory**](MattermostSidebarCategory.md)|  | 

### Return type

[**MattermostSidebarCategory**](MattermostSidebarCategory.md)

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

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final teamId = teamId_example; // String | Team GUID
final userId = userId_example; // String | User GUID
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = await client.channels.updateSidebarCategoryOrderForTeamForUser(teamId, userId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->updateSidebarCategoryOrderForTeamForUser: $e\n');
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
> MattermostViewChannel200Response viewChannel(userId, mattermostViewChannelRequest)

View channel

Perform all the actions involved in viewing a channel. This includes marking channels as read, clearing push notifications, and updating the active channel. ##### Permissions Must be logged in as user or have `edit_other_users` permission.  __Response only includes `last_viewed_at_times` in Mattermost server 4.3 and newer.__ 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostChannelsApi api instance
// final MattermostChannelsApi api_instance = client.channels

final userId = userId_example; // String | User ID to perform the view action for
final mattermostViewChannelRequest = MattermostViewChannelRequest(); // MattermostViewChannelRequest | Paremeters affecting how and which channels to view

try {
    final result = await client.channels.viewChannel(userId, mattermostViewChannelRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostChannelsApi->viewChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User ID to perform the view action for | 
 **mattermostViewChannelRequest** | [**MattermostViewChannelRequest**](MattermostViewChannelRequest.md)| Paremeters affecting how and which channels to view | 

### Return type

[**MattermostViewChannel200Response**](MattermostViewChannel200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

