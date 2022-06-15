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
> MMChannelMember addChannelMember(channelId, mMAddChannelMemberRequest)

Add user to channel

Add a user to a channel by creating a channel member object.

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


final String channelId = 'channelId_example'; // String | The channel ID
final MMAddChannelMemberRequest mMAddChannelMemberRequest = MMAddChannelMemberRequest(); // MMAddChannelMemberRequest | 

try {
  final MMChannelMember result = await client.channels.addChannelMember(channelId, mMAddChannelMemberRequest); // returns MMChannelMember instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostChannelsApi->addChannelMember: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| The channel ID | 
 **mMAddChannelMemberRequest** | [**MMAddChannelMemberRequest**](MMAddChannelMemberRequest.md)|  | 

### Return type

[**MMChannelMember**](MMChannelMember.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **autocompleteChannelsForTeam**
> List<MMChannel> autocompleteChannelsForTeam(teamId, name)

Autocomplete channels

Autocomplete public channels on a team based on the search term provided in the request URL.  __Minimum server version__: 4.7  ##### Permissions Must have the `list_team_channels` permission. 

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
final String name = 'name_example'; // String | Name or display name

try {
  final List&lt;MMChannel&gt; result = await client.channels.autocompleteChannelsForTeam(teamId, name); // returns List&lt;MMChannel&gt; instance
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

[**List<MMChannel>**](MMChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **autocompleteChannelsForTeamForSearch**
> List<MMChannel> autocompleteChannelsForTeamForSearch(teamId, name)

Autocomplete channels for search

Autocomplete your channels on a team based on the search term provided in the request URL.  __Minimum server version__: 5.4  ##### Permissions Must have the `list_team_channels` permission. 

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
final String name = 'name_example'; // String | Name or display name

try {
  final List&lt;MMChannel&gt; result = await client.channels.autocompleteChannelsForTeamForSearch(teamId, name); // returns List&lt;MMChannel&gt; instance
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

[**List<MMChannel>**](MMChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **channelMembersMinusGroupMembers**
> channelMembersMinusGroupMembers(channelId, groupIds, page, perPage)

Channel members minus group members.

Get the set of users who are members of the channel minus the set of users who are members of the given groups. Each user object contains an array of group objects representing the group memberships for that user. Each user object contains the boolean fields `scheme_guest`, `scheme_user`, and `scheme_admin` representing the roles that user has for the given channel.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.14 

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


final String channelId = 'channelId_example'; // String | Channel GUID
final String groupIds = 'groupIds_example'; // String | A comma-separated list of group ids.
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of users per page.

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

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **createChannel**
> MMChannel createChannel(mMCreateChannelRequest)

Create a channel

Create a new channel. ##### Permissions If creating a public channel, `create_public_channel` permission is required. If creating a private channel, `create_private_channel` permission is required. 

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


final MMCreateChannelRequest mMCreateChannelRequest = MMCreateChannelRequest(); // MMCreateChannelRequest | Channel object to be created

try {
  final MMChannel result = await client.channels.createChannel(mMCreateChannelRequest); // returns MMChannel instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostChannelsApi->createChannel: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mMCreateChannelRequest** | [**MMCreateChannelRequest**](MMCreateChannelRequest.md)| Channel object to be created | 

### Return type

[**MMChannel**](MMChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **createDirectChannel**
> MMChannel createDirectChannel(requestBody)

Create a direct message channel

Create a new direct message channel between two users. ##### Permissions Must be one of the two users and have `create_direct_channel` permission. Having the `manage_system` permission voids the previous requirements. 

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


final List&lt;String&gt; requestBody = [List<String>()]; // List<String> | The two user ids to be in the direct message

try {
  final MMChannel result = await client.channels.createDirectChannel(requestBody); // returns MMChannel instance
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

[**MMChannel**](MMChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **createGroupChannel**
> MMChannel createGroupChannel(requestBody)

Create a group message channel

Create a new group message channel to group of users. If the logged in user's id is not included in the list, it will be appended to the end. ##### Permissions Must have `create_group_channel` permission. 

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


final List&lt;String&gt; requestBody = [List<String>()]; // List<String> | User ids to be in the group message channel

try {
  final MMChannel result = await client.channels.createGroupChannel(requestBody); // returns MMChannel instance
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

[**MMChannel**](MMChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **createSidebarCategoryForTeamForUser**
> MMSidebarCategory createSidebarCategoryForTeamForUser(teamId, userId, mMSidebarCategory)

Create user's sidebar category

Create a custom sidebar category for the user on the given team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

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
final String userId = 'userId_example'; // String | User GUID
final MMSidebarCategory mMSidebarCategory = MMSidebarCategory(); // MMSidebarCategory | 

try {
  final MMSidebarCategory result = await client.channels.createSidebarCategoryForTeamForUser(teamId, userId, mMSidebarCategory); // returns MMSidebarCategory instance
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
 **mMSidebarCategory** | [**MMSidebarCategory**](MMSidebarCategory.md)|  | 

### Return type

[**MMSidebarCategory**](MMSidebarCategory.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **deleteChannel**
> MMStatusOK deleteChannel(channelId)

Delete a channel

Archives a channel. This will set the `deleteAt` to the current timestamp in the database. Soft deleted channels may not be accessible in the user interface. They can be viewed and unarchived in the **System Console > User Management > Channels** based on your license. Direct and group message channels cannot be deleted.  As of server version 5.28, optionally use the `permanent=true` query parameter to permanently delete the channel for compliance reasons. To use this feature `ServiceSettings.EnableAPIChannelDeletion` must be set to `true` in the server's configuration.  If you permanently delete a channel this action is not recoverable outside of a database backup.  ##### Permissions `delete_public_channel` permission if the channel is public, `delete_private_channel` permission if the channel is private, or have `manage_system` permission. 

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


final String channelId = 'channelId_example'; // String | Channel GUID

try {
  final MMStatusOK result = await client.channels.deleteChannel(channelId); // returns MMStatusOK instance
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

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getAllChannels**
> List<MMChannelWithTeamData> getAllChannels(notAssociatedToGroup, page, perPage, excludeDefaultChannels, includeDeleted, includeTotalCount, excludePolicyConstrained)

Get a list of all channels

##### Permissions `manage_system` 

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


final String notAssociatedToGroup = 'notAssociatedToGroup_example'; // String | A group id to exclude channels that are associated with that group via GroupChannel records. This can also be left blank with `not_associated_to_group=`.
final int page = 56; // int | 
final int perPage = 56; // int | 
final bool excludeDefaultChannels = true; // bool | Whether to exclude default channels (ex Town Square, Off-Topic) from the results.
final bool includeDeleted = true; // bool | Include channels that have been archived. This correlates to the `DeleteAt` flag being set in the database.
final bool includeTotalCount = true; // bool | Appends a total count of returned channels inside the response object - ex: `{ \"channels\": [], \"total_count\" : 0 }`.      
final bool excludePolicyConstrained = true; // bool | If set to true, channels which are part of a data retention policy will be excluded. The `sysconsole_read_compliance` permission is required to use this parameter. __Minimum server version__: 5.35

try {
  final List&lt;MMChannelWithTeamData&gt; result = await client.channels.getAllChannels(notAssociatedToGroup, page, perPage, excludeDefaultChannels, includeDeleted, includeTotalCount, excludePolicyConstrained); // returns List&lt;MMChannelWithTeamData&gt; instance
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

[**List<MMChannelWithTeamData>**](MMChannelWithTeamData.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getChannel**
> MMChannel getChannel(channelId)

Get a channel

Get channel from the provided channel id string. ##### Permissions `read_channel` permission for the channel. 

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


final String channelId = 'channelId_example'; // String | Channel GUID

try {
  final MMChannel result = await client.channels.getChannel(channelId); // returns MMChannel instance
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

[**MMChannel**](MMChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getChannelByName**
> MMChannel getChannelByName(teamId, channelName, includeDeleted)

Get a channel by name

Gets channel from the provided team id and channel name strings. ##### Permissions `read_channel` permission for the channel. 

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
final String channelName = 'channelName_example'; // String | Channel Name
final bool includeDeleted = true; // bool | Defines if deleted channels should be returned or not (Mattermost Server 5.26.0+)

try {
  final MMChannel result = await client.channels.getChannelByName(teamId, channelName, includeDeleted); // returns MMChannel instance
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

[**MMChannel**](MMChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getChannelByNameForTeamName**
> MMChannel getChannelByNameForTeamName(teamName, channelName, includeDeleted)

Get a channel by name and team name

Gets a channel from the provided team name and channel name strings. ##### Permissions `read_channel` permission for the channel. 

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


final String teamName = 'teamName_example'; // String | Team Name
final String channelName = 'channelName_example'; // String | Channel Name
final bool includeDeleted = true; // bool | Defines if deleted channels should be returned or not (Mattermost Server 5.26.0+)

try {
  final MMChannel result = await client.channels.getChannelByNameForTeamName(teamName, channelName, includeDeleted); // returns MMChannel instance
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

[**MMChannel**](MMChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getChannelMember**
> MMChannelMember getChannelMember(channelId, userId)

Get channel member

Get a channel member. ##### Permissions `read_channel` permission for the channel. 

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


final String channelId = 'channelId_example'; // String | Channel GUID
final String userId = 'userId_example'; // String | User GUID

try {
  final MMChannelMember result = await client.channels.getChannelMember(channelId, userId); // returns MMChannelMember instance
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

[**MMChannelMember**](MMChannelMember.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getChannelMemberCountsByGroup**
> getChannelMemberCountsByGroup(channelId, includeTimezones)

Channel members counts for each group that has atleast one member in the channel

Returns a set of ChannelMemberCountByGroup objects which contain a `group_id`, `channel_member_count` and a `channel_member_timezones_count`. ##### Permissions Must have `read_channel` permission for the given channel. __Minimum server version__: 5.24 

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


final String channelId = 'channelId_example'; // String | Channel GUID
final bool includeTimezones = true; // bool | Defines if member timezone counts should be returned or not

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

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getChannelMembers**
> List<MMChannelMember> getChannelMembers(channelId, page, perPage)

Get channel members

Get a page of members for a channel. ##### Permissions `read_channel` permission for the channel. 

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


final String channelId = 'channelId_example'; // String | Channel GUID
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of members per page. There is a maximum limit of 200 members.

try {
  final List&lt;MMChannelMember&gt; result = await client.channels.getChannelMembers(channelId, page, perPage); // returns List&lt;MMChannelMember&gt; instance
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

[**List<MMChannelMember>**](MMChannelMember.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getChannelMembersByIds**
> List<MMChannelMember> getChannelMembersByIds(channelId, requestBody)

Get channel members by ids

Get a list of channel members based on the provided user ids. ##### Permissions Must have the `read_channel` permission. 

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


final String channelId = 'channelId_example'; // String | Channel GUID
final List&lt;String&gt; requestBody = [List<String>()]; // List<String> | List of user ids

try {
  final List&lt;MMChannelMember&gt; result = await client.channels.getChannelMembersByIds(channelId, requestBody); // returns List&lt;MMChannelMember&gt; instance
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

[**List<MMChannelMember>**](MMChannelMember.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getChannelMembersForUser**
> List<MMChannelMember> getChannelMembersForUser(userId, teamId)

Get channel memberships and roles for a user

Get all channel memberships and associated membership roles (i.e. `channel_user`, `channel_admin`) for a user on a specific team. ##### Permissions Logged in as the user and `view_team` permission for the team. Having `manage_system` permission voids the previous requirements. 

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
final String teamId = 'teamId_example'; // String | Team GUID

try {
  final List&lt;MMChannelMember&gt; result = await client.channels.getChannelMembersForUser(userId, teamId); // returns List&lt;MMChannelMember&gt; instance
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

[**List<MMChannelMember>**](MMChannelMember.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getChannelMembersTimezones**
> List<String> getChannelMembersTimezones(channelId)

Get timezones in a channel

Get a list of timezones for the users who are in this channel.  __Minimum server version__: 5.6  ##### Permissions Must have the `read_channel` permission. 

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


final String channelId = 'channelId_example'; // String | Channel GUID

try {
  final List&lt;String&gt; result = await client.channels.getChannelMembersTimezones(channelId); // returns List&lt;String&gt; instance
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

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getChannelModerations**
> List<MMChannelModeration> getChannelModerations(channelId)

Get information about channel's moderation.

##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.22 

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


final String channelId = 'channelId_example'; // String | Channel GUID

try {
  final List&lt;MMChannelModeration&gt; result = await client.channels.getChannelModerations(channelId); // returns List&lt;MMChannelModeration&gt; instance
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

[**List<MMChannelModeration>**](MMChannelModeration.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getChannelStats**
> MMChannelStats getChannelStats(channelId)

Get channel statistics

Get statistics for a channel. ##### Permissions Must have the `read_channel` permission. 

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


final String channelId = 'channelId_example'; // String | Channel GUID

try {
  final MMChannelStats result = await client.channels.getChannelStats(channelId); // returns MMChannelStats instance
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

[**MMChannelStats**](MMChannelStats.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getChannelUnread**
> MMChannelUnread getChannelUnread(userId, channelId)

Get unread messages

Get the total unread messages and mentions for a channel for a user. ##### Permissions Must be logged in as user and have the `read_channel` permission, or have `edit_other_usrs` permission. 

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
final String channelId = 'channelId_example'; // String | Channel GUID

try {
  final MMChannelUnread result = await client.channels.getChannelUnread(userId, channelId); // returns MMChannelUnread instance
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

[**MMChannelUnread**](MMChannelUnread.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getChannelsForTeamForUser**
> List<MMChannel> getChannelsForTeamForUser(userId, teamId, includeDeleted, lastDeleteAt)

Get channels for user

Get all the channels on a team for a user. ##### Permissions Logged in as the user, or have `edit_other_users` permission, and `view_team` permission for the team. 

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
final String teamId = 'teamId_example'; // String | Team GUID
final bool includeDeleted = true; // bool | Defines if deleted channels should be returned or not
final int lastDeleteAt = 56; // int | Filters the deleted channels by this time in epoch format. Does not have any effect if include_deleted is set to false.

try {
  final List&lt;MMChannel&gt; result = await client.channels.getChannelsForTeamForUser(userId, teamId, includeDeleted, lastDeleteAt); // returns List&lt;MMChannel&gt; instance
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

[**List<MMChannel>**](MMChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getChannelsForUser**
> List<MMChannel> getChannelsForUser(userId, lastDeleteAt, includeDeleted)

Get all channels from all teams

Get all channels from all teams that a user is a member of.  __Minimum server version__: 6.1  ##### Permissions  Logged in as the user, or have `edit_other_users` permission. 

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


final String userId = 'userId_example'; // String | The ID of the user. This can also be \"me\" which will point to the current user.
final int lastDeleteAt = 56; // int | Filters the deleted channels by this time in epoch format. Does not have any effect if include_deleted is set to false.
final bool includeDeleted = true; // bool | Defines if deleted channels should be returned or not

try {
  final List&lt;MMChannel&gt; result = await client.channels.getChannelsForUser(userId, lastDeleteAt, includeDeleted); // returns List&lt;MMChannel&gt; instance
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

[**List<MMChannel>**](MMChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getDeletedChannelsForTeam**
> List<MMChannel> getDeletedChannelsForTeam(teamId, page, perPage)

Get deleted channels

Get a page of deleted channels on a team based on query string parameters - team_id, page and per_page.  __Minimum server version__: 3.10 

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
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of public channels per page.

try {
  final List&lt;MMChannel&gt; result = await client.channels.getDeletedChannelsForTeam(teamId, page, perPage); // returns List&lt;MMChannel&gt; instance
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

[**List<MMChannel>**](MMChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getPinnedPosts**
> MMPostList getPinnedPosts(channelId)

Get a channel's pinned posts

Get a list of pinned posts for channel.

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


final String channelId = 'channelId_example'; // String | Channel GUID

try {
  final MMPostList result = await client.channels.getPinnedPosts(channelId); // returns MMPostList instance
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

[**MMPostList**](MMPostList.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getPrivateChannelsForTeam**
> List<MMChannel> getPrivateChannelsForTeam(teamId, page, perPage)

Get private channels

Get a page of private channels on a team based on query string parameters - team_id, page and per_page.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 

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
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of private channels per page.

try {
  final List&lt;MMChannel&gt; result = await client.channels.getPrivateChannelsForTeam(teamId, page, perPage); // returns List&lt;MMChannel&gt; instance
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

[**List<MMChannel>**](MMChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getPublicChannelsByIdsForTeam**
> List<MMChannel> getPublicChannelsByIdsForTeam(teamId, requestBody)

Get a list of channels by ids

Get a list of public channels on a team by id. ##### Permissions `view_team` for the team the channels are on. 

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
final List&lt;String&gt; requestBody = [List<String>()]; // List<String> | List of channel ids

try {
  final List&lt;MMChannel&gt; result = await client.channels.getPublicChannelsByIdsForTeam(teamId, requestBody); // returns List&lt;MMChannel&gt; instance
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

[**List<MMChannel>**](MMChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getPublicChannelsForTeam**
> List<MMChannel> getPublicChannelsForTeam(teamId, page, perPage)

Get public channels

Get a page of public channels on a team based on query string parameters - page and per_page. ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

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
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of public channels per page.

try {
  final List&lt;MMChannel&gt; result = await client.channels.getPublicChannelsForTeam(teamId, page, perPage); // returns List&lt;MMChannel&gt; instance
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

[**List<MMChannel>**](MMChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getSidebarCategoriesForTeamForUser**
> List<MMOrderedSidebarCategories> getSidebarCategoriesForTeamForUser(teamId, userId)

Get user's sidebar categories

Get a list of sidebar categories that will appear in the user's sidebar on the given team, including a list of channel IDs in each category. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

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
final String userId = 'userId_example'; // String | User GUID

try {
  final List&lt;MMOrderedSidebarCategories&gt; result = await client.channels.getSidebarCategoriesForTeamForUser(teamId, userId); // returns List&lt;MMOrderedSidebarCategories&gt; instance
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

[**List<MMOrderedSidebarCategories>**](MMOrderedSidebarCategories.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getSidebarCategoryForTeamForUser**
> MMSidebarCategory getSidebarCategoryForTeamForUser(teamId, userId, categoryId)

Get sidebar category

Returns a single sidebar category for the user on the given team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

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
final String userId = 'userId_example'; // String | User GUID
final String categoryId = 'categoryId_example'; // String | Category GUID

try {
  final MMSidebarCategory result = await client.channels.getSidebarCategoryForTeamForUser(teamId, userId, categoryId); // returns MMSidebarCategory instance
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

[**MMSidebarCategory**](MMSidebarCategory.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getSidebarCategoryOrderForTeamForUser**
> List<String> getSidebarCategoryOrderForTeamForUser(teamId, userId)

Get user's sidebar category order

Returns the order of the sidebar categories for a user on the given team as an array of IDs. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

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
final String userId = 'userId_example'; // String | User GUID

try {
  final List&lt;String&gt; result = await client.channels.getSidebarCategoryOrderForTeamForUser(teamId, userId); // returns List&lt;String&gt; instance
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

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **moveChannel**
> MMChannel moveChannel(channelId, mMMoveChannelRequest)

Move a channel

Move a channel to another team.  __Minimum server version__: 5.26  ##### Permissions  Must have `manage_system` permission. 

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


final String channelId = 'channelId_example'; // String | Channel GUID
final MMMoveChannelRequest mMMoveChannelRequest = MMMoveChannelRequest(); // MMMoveChannelRequest | 

try {
  final MMChannel result = await client.channels.moveChannel(channelId, mMMoveChannelRequest); // returns MMChannel instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostChannelsApi->moveChannel: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **mMMoveChannelRequest** | [**MMMoveChannelRequest**](MMMoveChannelRequest.md)|  | 

### Return type

[**MMChannel**](MMChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **patchChannel**
> MMChannel patchChannel(channelId, mMPatchChannelRequest)

Patch a channel

Partially update a channel by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions If updating a public channel, `manage_public_channel_members` permission is required. If updating a private channel, `manage_private_channel_members` permission is required. 

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


final String channelId = 'channelId_example'; // String | Channel GUID
final MMPatchChannelRequest mMPatchChannelRequest = MMPatchChannelRequest(); // MMPatchChannelRequest | Channel object to be updated

try {
  final MMChannel result = await client.channels.patchChannel(channelId, mMPatchChannelRequest); // returns MMChannel instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostChannelsApi->patchChannel: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **mMPatchChannelRequest** | [**MMPatchChannelRequest**](MMPatchChannelRequest.md)| Channel object to be updated | 

### Return type

[**MMChannel**](MMChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **patchChannelModerations**
> List<MMChannelModeration> patchChannelModerations(channelId, mMChannelModerationPatch)

Update a channel's moderation settings.

##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.22 

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


final String channelId = 'channelId_example'; // String | Channel GUID
final MMChannelModerationPatch mMChannelModerationPatch = MMChannelModerationPatch(); // MMChannelModerationPatch | 

try {
  final List&lt;MMChannelModeration&gt; result = await client.channels.patchChannelModerations(channelId, mMChannelModerationPatch); // returns List&lt;MMChannelModeration&gt; instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostChannelsApi->patchChannelModerations: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **mMChannelModerationPatch** | [**MMChannelModerationPatch**](MMChannelModerationPatch.md)|  | 

### Return type

[**List<MMChannelModeration>**](MMChannelModeration.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **removeSidebarCategoryForTeamForUser**
> MMSidebarCategory removeSidebarCategoryForTeamForUser(teamId, userId, categoryId)

Delete sidebar category

Deletes a single sidebar category for the user on the given team. Only custom categories can be deleted. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

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
final String userId = 'userId_example'; // String | User GUID
final String categoryId = 'categoryId_example'; // String | Category GUID

try {
  final MMSidebarCategory result = await client.channels.removeSidebarCategoryForTeamForUser(teamId, userId, categoryId); // returns MMSidebarCategory instance
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

[**MMSidebarCategory**](MMSidebarCategory.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **removeUserFromChannel**
> MMStatusOK removeUserFromChannel(channelId, userId)

Remove user from channel

Delete a channel member, effectively removing them from a channel.  In server version 5.3 and later, channel members can only be deleted from public or private channels. ##### Permissions `manage_public_channel_members` permission if the channel is public. `manage_private_channel_members` permission if the channel is private. 

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


final String channelId = 'channelId_example'; // String | Channel GUID
final String userId = 'userId_example'; // String | User GUID

try {
  final MMStatusOK result = await client.channels.removeUserFromChannel(channelId, userId); // returns MMStatusOK instance
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

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **restoreChannel**
> MMChannel restoreChannel(channelId)

Restore a channel

Restore channel from the provided channel id string.  __Minimum server version__: 3.10  ##### Permissions `manage_team` permission for the team of the channel. 

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


final String channelId = 'channelId_example'; // String | Channel GUID

try {
  final MMChannel result = await client.channels.restoreChannel(channelId); // returns MMChannel instance
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

[**MMChannel**](MMChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **searchAllChannels**
> MMSearchAllChannels200Response searchAllChannels(mMSearchAllChannelsRequest, systemConsole)

Search all private and open type channels across all teams

Returns all private and open type channels where 'term' matches on the name, display name, or purpose of the channel.  Configured 'default' channels (ex Town Square and Off-Topic) can be excluded from the results with the `exclude_default_channels` boolean parameter.  Channels that are associated (via GroupChannel records) to a given group can be excluded from the results with the `not_associated_to_group` parameter and a group id string. 

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


final MMSearchAllChannelsRequest mMSearchAllChannelsRequest = MMSearchAllChannelsRequest(); // MMSearchAllChannelsRequest | The search terms and logic to use in the search.
final bool systemConsole = true; // bool | Is the request from system_console. If this is set to true, it filters channels by the logged in user. 

try {
  final MMSearchAllChannels200Response result = await client.channels.searchAllChannels(mMSearchAllChannelsRequest, systemConsole); // returns MMSearchAllChannels200Response instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostChannelsApi->searchAllChannels: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mMSearchAllChannelsRequest** | [**MMSearchAllChannelsRequest**](MMSearchAllChannelsRequest.md)| The search terms and logic to use in the search. | 
 **systemConsole** | **bool**| Is the request from system_console. If this is set to true, it filters channels by the logged in user.  | [optional] [default to true]

### Return type

[**MMSearchAllChannels200Response**](MMSearchAllChannels200Response.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **searchArchivedChannels**
> List<MMChannel> searchArchivedChannels(teamId, mMSearchArchivedChannelsRequest)

Search archived channels

Search archived channels on a team based on the search term provided in the request body.  __Minimum server version__: 5.18  ##### Permissions Must have the `list_team_channels` permission.  In server version 5.18 and later, a user without the `list_team_channels` permission will be able to use this endpoint, with the search results limited to the channels that the user is a member of. 

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
final MMSearchArchivedChannelsRequest mMSearchArchivedChannelsRequest = MMSearchArchivedChannelsRequest(); // MMSearchArchivedChannelsRequest | Search criteria

try {
  final List&lt;MMChannel&gt; result = await client.channels.searchArchivedChannels(teamId, mMSearchArchivedChannelsRequest); // returns List&lt;MMChannel&gt; instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostChannelsApi->searchArchivedChannels: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **mMSearchArchivedChannelsRequest** | [**MMSearchArchivedChannelsRequest**](MMSearchArchivedChannelsRequest.md)| Search criteria | 

### Return type

[**List<MMChannel>**](MMChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **searchChannels**
> List<MMChannel> searchChannels(teamId, mMSearchChannelsRequest)

Search channels

Search public channels on a team based on the search term provided in the request body. ##### Permissions Must have the `list_team_channels` permission.  In server version 5.16 and later, a user without the `list_team_channels` permission will be able to use this endpoint, with the search results limited to the channels that the user is a member of. 

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
final MMSearchChannelsRequest mMSearchChannelsRequest = MMSearchChannelsRequest(); // MMSearchChannelsRequest | Search criteria

try {
  final List&lt;MMChannel&gt; result = await client.channels.searchChannels(teamId, mMSearchChannelsRequest); // returns List&lt;MMChannel&gt; instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostChannelsApi->searchChannels: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **mMSearchChannelsRequest** | [**MMSearchChannelsRequest**](MMSearchChannelsRequest.md)| Search criteria | 

### Return type

[**List<MMChannel>**](MMChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **searchGroupChannels**
> List<MMChannel> searchGroupChannels(mMSearchGroupChannelsRequest)

Search Group Channels

Get a list of group channels for a user which members' usernames match the search term.  __Minimum server version__: 5.14 

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


final MMSearchGroupChannelsRequest mMSearchGroupChannelsRequest = MMSearchGroupChannelsRequest(); // MMSearchGroupChannelsRequest | Search criteria

try {
  final List&lt;MMChannel&gt; result = await client.channels.searchGroupChannels(mMSearchGroupChannelsRequest); // returns List&lt;MMChannel&gt; instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostChannelsApi->searchGroupChannels: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mMSearchGroupChannelsRequest** | [**MMSearchGroupChannelsRequest**](MMSearchGroupChannelsRequest.md)| Search criteria | 

### Return type

[**List<MMChannel>**](MMChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateChannel**
> MMChannel updateChannel(channelId, mMUpdateChannelRequest)

Update a channel

Update a channel. The fields that can be updated are listed as parameters. Omitted fields will be treated as blanks. ##### Permissions If updating a public channel, `manage_public_channel_members` permission is required. If updating a private channel, `manage_private_channel_members` permission is required. 

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


final String channelId = 'channelId_example'; // String | Channel GUID
final MMUpdateChannelRequest mMUpdateChannelRequest = MMUpdateChannelRequest(); // MMUpdateChannelRequest | Channel object to be updated

try {
  final MMChannel result = await client.channels.updateChannel(channelId, mMUpdateChannelRequest); // returns MMChannel instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostChannelsApi->updateChannel: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **mMUpdateChannelRequest** | [**MMUpdateChannelRequest**](MMUpdateChannelRequest.md)| Channel object to be updated | 

### Return type

[**MMChannel**](MMChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateChannelMemberSchemeRoles**
> MMStatusOK updateChannelMemberSchemeRoles(channelId, userId, mMUpdateTeamMemberSchemeRolesRequest)

Update the scheme-derived roles of a channel member.

Update a channel member's scheme_admin/scheme_user properties. Typically this should either be `scheme_admin=false, scheme_user=true` for ordinary channel member, or `scheme_admin=true, scheme_user=true` for a channel admin. __Minimum server version__: 5.0 ##### Permissions Must be authenticated and have the `manage_channel_roles` permission. 

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


final String channelId = 'channelId_example'; // String | Channel GUID
final String userId = 'userId_example'; // String | User GUID
final MMUpdateTeamMemberSchemeRolesRequest mMUpdateTeamMemberSchemeRolesRequest = MMUpdateTeamMemberSchemeRolesRequest(); // MMUpdateTeamMemberSchemeRolesRequest | Scheme properties.

try {
  final MMStatusOK result = await client.channels.updateChannelMemberSchemeRoles(channelId, userId, mMUpdateTeamMemberSchemeRolesRequest); // returns MMStatusOK instance
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
 **mMUpdateTeamMemberSchemeRolesRequest** | [**MMUpdateTeamMemberSchemeRolesRequest**](MMUpdateTeamMemberSchemeRolesRequest.md)| Scheme properties. | 

### Return type

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateChannelNotifyProps**
> MMStatusOK updateChannelNotifyProps(channelId, userId, mMChannelNotifyProps)

Update channel notifications

Update a user's notification properties for a channel. Only the provided fields are updated. ##### Permissions Must be logged in as the user or have `edit_other_users` permission. 

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


final String channelId = 'channelId_example'; // String | Channel GUID
final String userId = 'userId_example'; // String | User GUID
final MMChannelNotifyProps mMChannelNotifyProps = MMChannelNotifyProps(); // MMChannelNotifyProps | 

try {
  final MMStatusOK result = await client.channels.updateChannelNotifyProps(channelId, userId, mMChannelNotifyProps); // returns MMStatusOK instance
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
 **mMChannelNotifyProps** | [**MMChannelNotifyProps**](MMChannelNotifyProps.md)|  | 

### Return type

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateChannelPrivacy**
> MMChannel updateChannelPrivacy(channelId, mMUpdateChannelPrivacyRequest)

Update channel's privacy

Updates channel's privacy allowing changing a channel from Public to Private and back.  __Minimum server version__: 5.16  ##### Permissions `manage_team` permission for the channels team on version < 5.28. `convert_public_channel_to_private` permission for the channel if updating privacy to 'P' on version >= 5.28. `convert_private_channel_to_public` permission for the channel if updating privacy to 'O' on version >= 5.28. 

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


final String channelId = 'channelId_example'; // String | Channel GUID
final MMUpdateChannelPrivacyRequest mMUpdateChannelPrivacyRequest = MMUpdateChannelPrivacyRequest(); // MMUpdateChannelPrivacyRequest | 

try {
  final MMChannel result = await client.channels.updateChannelPrivacy(channelId, mMUpdateChannelPrivacyRequest); // returns MMChannel instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostChannelsApi->updateChannelPrivacy: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **mMUpdateChannelPrivacyRequest** | [**MMUpdateChannelPrivacyRequest**](MMUpdateChannelPrivacyRequest.md)|  | 

### Return type

[**MMChannel**](MMChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateChannelRoles**
> MMStatusOK updateChannelRoles(channelId, userId, mMUpdateUserRolesRequest)

Update channel roles

Update a user's roles for a channel. ##### Permissions Must have `manage_channel_roles` permission for the channel. 

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


final String channelId = 'channelId_example'; // String | Channel GUID
final String userId = 'userId_example'; // String | User GUID
final MMUpdateUserRolesRequest mMUpdateUserRolesRequest = MMUpdateUserRolesRequest(); // MMUpdateUserRolesRequest | Space-delimited channel roles to assign to the user

try {
  final MMStatusOK result = await client.channels.updateChannelRoles(channelId, userId, mMUpdateUserRolesRequest); // returns MMStatusOK instance
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
 **mMUpdateUserRolesRequest** | [**MMUpdateUserRolesRequest**](MMUpdateUserRolesRequest.md)| Space-delimited channel roles to assign to the user | 

### Return type

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateChannelScheme**
> MMStatusOK updateChannelScheme(channelId, mMUpdateTeamSchemeRequest)

Set a channel's scheme

Set a channel's scheme, more specifically sets the scheme_id value of a channel record.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.10 

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


final String channelId = 'channelId_example'; // String | Channel GUID
final MMUpdateTeamSchemeRequest mMUpdateTeamSchemeRequest = MMUpdateTeamSchemeRequest(); // MMUpdateTeamSchemeRequest | Scheme GUID

try {
  final MMStatusOK result = await client.channels.updateChannelScheme(channelId, mMUpdateTeamSchemeRequest); // returns MMStatusOK instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostChannelsApi->updateChannelScheme: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **mMUpdateTeamSchemeRequest** | [**MMUpdateTeamSchemeRequest**](MMUpdateTeamSchemeRequest.md)| Scheme GUID | 

### Return type

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateSidebarCategoriesForTeamForUser**
> MMSidebarCategory updateSidebarCategoriesForTeamForUser(teamId, userId, mMSidebarCategory)

Update user's sidebar categories

Update any number of sidebar categories for the user on the given team. This can be used to reorder the channels in these categories. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

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
final String userId = 'userId_example'; // String | User GUID
final List&lt;MMSidebarCategory&gt; mMSidebarCategory = [List<MMSidebarCategory>()]; // List<MMSidebarCategory> | 

try {
  final MMSidebarCategory result = await client.channels.updateSidebarCategoriesForTeamForUser(teamId, userId, mMSidebarCategory); // returns MMSidebarCategory instance
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
 **mMSidebarCategory** | [**List<MMSidebarCategory>**](MMSidebarCategory.md)|  | 

### Return type

[**MMSidebarCategory**](MMSidebarCategory.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateSidebarCategoryForTeamForUser**
> MMSidebarCategory updateSidebarCategoryForTeamForUser(teamId, userId, categoryId, mMSidebarCategory)

Update sidebar category

Updates a single sidebar category for the user on the given team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

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
final String userId = 'userId_example'; // String | User GUID
final String categoryId = 'categoryId_example'; // String | Category GUID
final MMSidebarCategory mMSidebarCategory = MMSidebarCategory(); // MMSidebarCategory | 

try {
  final MMSidebarCategory result = await client.channels.updateSidebarCategoryForTeamForUser(teamId, userId, categoryId, mMSidebarCategory); // returns MMSidebarCategory instance
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
 **mMSidebarCategory** | [**MMSidebarCategory**](MMSidebarCategory.md)|  | 

### Return type

[**MMSidebarCategory**](MMSidebarCategory.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateSidebarCategoryOrderForTeamForUser**
> List<String> updateSidebarCategoryOrderForTeamForUser(teamId, userId, requestBody)

Update user's sidebar category order

Updates the order of the sidebar categories for a user on the given team. The provided array must include the IDs of all categories on the team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

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
final String userId = 'userId_example'; // String | User GUID
final List&lt;String&gt; requestBody = [List<String>()]; // List<String> | 

try {
  final List&lt;String&gt; result = await client.channels.updateSidebarCategoryOrderForTeamForUser(teamId, userId, requestBody); // returns List&lt;String&gt; instance
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

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **viewChannel**
> MMViewChannel200Response viewChannel(userId, mMViewChannelRequest)

View channel

Perform all the actions involved in viewing a channel. This includes marking channels as read, clearing push notifications, and updating the active channel. ##### Permissions Must be logged in as user or have `edit_other_users` permission.  __Response only includes `last_viewed_at_times` in Mattermost server 4.3 and newer.__ 

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


final String userId = 'userId_example'; // String | User ID to perform the view action for
final MMViewChannelRequest mMViewChannelRequest = MMViewChannelRequest(); // MMViewChannelRequest | Paremeters affecting how and which channels to view

try {
  final MMViewChannel200Response result = await client.channels.viewChannel(userId, mMViewChannelRequest); // returns MMViewChannel200Response instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostChannelsApi->viewChannel: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User ID to perform the view action for | 
 **mMViewChannelRequest** | [**MMViewChannelRequest**](MMViewChannelRequest.md)| Paremeters affecting how and which channels to view | 

### Return type

[**MMViewChannel200Response**](MMViewChannel200Response.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

