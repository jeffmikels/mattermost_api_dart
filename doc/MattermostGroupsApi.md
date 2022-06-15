# mattermost_api.api.MattermostGroupsApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addGroupMembers**](MattermostGroupsApi.md#addgroupmembers) | **POST** /groups/{group_id}/members | Adds members to a custom group
[**createGroup**](MattermostGroupsApi.md#creategroup) | **POST** /groups | Create a custom group
[**deleteGroup**](MattermostGroupsApi.md#deletegroup) | **DELETE** /groups/{group_id} | Deletes a custom group
[**deleteGroupMembers**](MattermostGroupsApi.md#deletegroupmembers) | **DELETE** /groups/{group_id}/members | Removes members from a custom group
[**getGroup**](MattermostGroupsApi.md#getgroup) | **GET** /groups/{group_id} | Get a group
[**getGroupStats**](MattermostGroupsApi.md#getgroupstats) | **GET** /groups/{group_id}/stats | Get group stats
[**getGroupSyncableForChannelId**](MattermostGroupsApi.md#getgroupsyncableforchannelid) | **GET** /groups/{group_id}/channels/{channel_id} | Get GroupSyncable from channel ID
[**getGroupSyncableForTeamId**](MattermostGroupsApi.md#getgroupsyncableforteamid) | **GET** /groups/{group_id}/teams/{team_id} | Get GroupSyncable from Team ID
[**getGroupSyncablesChannels**](MattermostGroupsApi.md#getgroupsyncableschannels) | **GET** /groups/{group_id}/channels | Get group channels
[**getGroupSyncablesTeams**](MattermostGroupsApi.md#getgroupsyncablesteams) | **GET** /groups/{group_id}/teams | Get group teams
[**getGroupUsers**](MattermostGroupsApi.md#getgroupusers) | **GET** /groups/{group_id}/members | Get group users
[**getGroups**](MattermostGroupsApi.md#getgroups) | **GET** /groups | Get groups
[**getGroupsAssociatedToChannelsByTeam**](MattermostGroupsApi.md#getgroupsassociatedtochannelsbyteam) | **GET** /teams/{team_id}/groups_by_channels | Get team groups by channels
[**getGroupsByChannel**](MattermostGroupsApi.md#getgroupsbychannel) | **GET** /channels/{channel_id}/groups | Get channel groups
[**getGroupsByTeam**](MattermostGroupsApi.md#getgroupsbyteam) | **GET** /teams/{team_id}/groups | Get team groups
[**getGroupsByUserId**](MattermostGroupsApi.md#getgroupsbyuserid) | **GET** /users/{user_id}/groups | Get groups for a userId
[**linkGroupSyncableForChannel**](MattermostGroupsApi.md#linkgroupsyncableforchannel) | **POST** /groups/{group_id}/channels/{channel_id}/link | Link a channel to a group
[**linkGroupSyncableForTeam**](MattermostGroupsApi.md#linkgroupsyncableforteam) | **POST** /groups/{group_id}/teams/{team_id}/link | Link a team to a group
[**patchGroup**](MattermostGroupsApi.md#patchgroup) | **PUT** /groups/{group_id}/patch | Patch a group
[**patchGroupSyncableForChannel**](MattermostGroupsApi.md#patchgroupsyncableforchannel) | **PUT** /groups/{group_id}/channels/{channel_id}/patch | Patch a GroupSyncable associated to Channel
[**patchGroupSyncableForTeam**](MattermostGroupsApi.md#patchgroupsyncableforteam) | **PUT** /groups/{group_id}/teams/{team_id}/patch | Patch a GroupSyncable associated to Team
[**unlinkGroupSyncableForChannel**](MattermostGroupsApi.md#unlinkgroupsyncableforchannel) | **DELETE** /groups/{group_id}/channels/{channel_id}/link | Delete a link from a channel to a group
[**unlinkGroupSyncableForTeam**](MattermostGroupsApi.md#unlinkgroupsyncableforteam) | **DELETE** /groups/{group_id}/teams/{team_id}/link | Delete a link from a team to a group
[**unlinkLdapGroup**](MattermostGroupsApi.md#unlinkldapgroup) | **DELETE** /ldap/groups/{remote_id}/link | Delete a link for LDAP group


# **addGroupMembers**
> MattermostStatusOK addGroupMembers(groupId, mattermostAddGroupMembersRequest)

Adds members to a custom group

Adds members to a custom group.  ##### Permissions Must have `custom_group_manage_members` permission for the given group.  __Minimum server version__: 6.3 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final groupId = groupId_example; // String | The ID of the group.
final mattermostAddGroupMembersRequest = MattermostAddGroupMembersRequest(); // MattermostAddGroupMembersRequest | 

try {
  final result = await client.groups.addGroupMembers(groupId, mattermostAddGroupMembersRequest);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->addGroupMembers: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| The ID of the group. | 
 **mattermostAddGroupMembersRequest** | [**MattermostAddGroupMembersRequest**](MattermostAddGroupMembersRequest.md)|  | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **createGroup**
> createGroup(mattermostCreateGroupRequest)

Create a custom group

Create a `custom` type group.  #### Permission Must have `create_custom_group` permission.  __Minimum server version__: 6.3 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final mattermostCreateGroupRequest = MattermostCreateGroupRequest(); // MattermostCreateGroupRequest | Group object and initial members.

try {
  await client.groups.createGroup(mattermostCreateGroupRequest);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->createGroup: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostCreateGroupRequest** | [**MattermostCreateGroupRequest**](MattermostCreateGroupRequest.md)| Group object and initial members. | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **deleteGroup**
> MattermostStatusOK deleteGroup(groupId)

Deletes a custom group

Soft deletes a custom group.  ##### Permissions Must have `custom_group_delete` permission for the given group.  __Minimum server version__: 6.3 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final groupId = groupId_example; // String | The ID of the group.

try {
  final result = await client.groups.deleteGroup(groupId);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->deleteGroup: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| The ID of the group. | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **deleteGroupMembers**
> MattermostStatusOK deleteGroupMembers(groupId, mattermostDeleteGroupMembersRequest)

Removes members from a custom group

Soft deletes a custom group members.  ##### Permissions Must have `custom_group_manage_members` permission for the given group.  __Minimum server version__: 6.3 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final groupId = groupId_example; // String | The ID of the group to delete.
final mattermostDeleteGroupMembersRequest = MattermostDeleteGroupMembersRequest(); // MattermostDeleteGroupMembersRequest | 

try {
  final result = await client.groups.deleteGroupMembers(groupId, mattermostDeleteGroupMembersRequest);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->deleteGroupMembers: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| The ID of the group to delete. | 
 **mattermostDeleteGroupMembersRequest** | [**MattermostDeleteGroupMembersRequest**](MattermostDeleteGroupMembersRequest.md)|  | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroup**
> MattermostGroup getGroup(groupId)

Get a group

Get group from the provided group id string  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final groupId = groupId_example; // String | Group GUID

try {
  final result = await client.groups.getGroup(groupId);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->getGroup: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 

### Return type

[**MattermostGroup**](MattermostGroup.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupStats**
> MattermostGetGroupStats200Response getGroupStats(groupId)

Get group stats

Retrieve the stats of a given group.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.26 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final groupId = groupId_example; // String | Group GUID

try {
  final result = await client.groups.getGroupStats(groupId);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->getGroupStats: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 

### Return type

[**MattermostGetGroupStats200Response**](MattermostGetGroupStats200Response.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupSyncableForChannelId**
> MattermostGroupSyncableChannel getGroupSyncableForChannelId(groupId, channelId)

Get GroupSyncable from channel ID

Get the GroupSyncable object with group_id and channel_id from params ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final groupId = groupId_example; // String | Group GUID
final channelId = channelId_example; // String | Channel GUID

try {
  final result = await client.groups.getGroupSyncableForChannelId(groupId, channelId);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->getGroupSyncableForChannelId: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 
 **channelId** | **String**| Channel GUID | 

### Return type

[**MattermostGroupSyncableChannel**](MattermostGroupSyncableChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupSyncableForTeamId**
> MattermostGroupSyncableTeam getGroupSyncableForTeamId(groupId, teamId)

Get GroupSyncable from Team ID

Get the GroupSyncable object with group_id and team_id from params ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final groupId = groupId_example; // String | Group GUID
final teamId = teamId_example; // String | Team GUID

try {
  final result = await client.groups.getGroupSyncableForTeamId(groupId, teamId);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->getGroupSyncableForTeamId: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 
 **teamId** | **String**| Team GUID | 

### Return type

[**MattermostGroupSyncableTeam**](MattermostGroupSyncableTeam.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupSyncablesChannels**
> List<MattermostGroupSyncableChannels> getGroupSyncablesChannels(groupId)

Get group channels

Retrieve the list of channels associated to the group ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final groupId = groupId_example; // String | Group GUID

try {
  final result = await client.groups.getGroupSyncablesChannels(groupId);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->getGroupSyncablesChannels: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 

### Return type

[**List<MattermostGroupSyncableChannels>**](MattermostGroupSyncableChannels.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupSyncablesTeams**
> List<MattermostGroupSyncableTeams> getGroupSyncablesTeams(groupId)

Get group teams

Retrieve the list of teams associated to the group ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final groupId = groupId_example; // String | Group GUID

try {
  final result = await client.groups.getGroupSyncablesTeams(groupId);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->getGroupSyncablesTeams: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 

### Return type

[**List<MattermostGroupSyncableTeams>**](MattermostGroupSyncableTeams.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupUsers**
> MattermostGetGroupUsers200Response getGroupUsers(groupId, page, perPage)

Get group users

Retrieve the list of users associated with a given group.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final groupId = groupId_example; // String | Group GUID
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of groups per page.

try {
  final result = await client.groups.getGroupUsers(groupId, page, perPage);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->getGroupUsers: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of groups per page. | [optional] [default to 60]

### Return type

[**MattermostGetGroupUsers200Response**](MattermostGetGroupUsers200Response.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroups**
> List<MattermostGroup> getGroups(notAssociatedToTeam, notAssociatedToChannel, page, perPage, q, includeMemberCount, since, filterAllowReference)

Get groups

Retrieve a list of all groups not associated to a particular channel or team.  `not_associated_to_team` **OR** `not_associated_to_channel` is required.  If you use `not_associated_to_team`, you must be a team admin for that particular team (permission to manage that team).  If you use `not_associated_to_channel`, you must be a channel admin for that particular channel (permission to manage that channel).  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final notAssociatedToTeam = notAssociatedToTeam_example; // String | Team GUID which is used to return all the groups not associated to this team
final notAssociatedToChannel = notAssociatedToChannel_example; // String | Group GUID which is used to return all the groups not associated to this channel
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of groups per page.
final q = q_example; // String | String to pattern match the `name` and `display_name` field. Will return all groups whose `name` and `display_name` field match any of the text.
final includeMemberCount = true; // bool | Boolean which adds the `member_count` attribute to each group JSON object
final since = 56; // int | Only return groups that have been modified since the given Unix timestamp (in milliseconds). All modified groups, including deleted and created groups, will be returned. __Minimum server version__: 5.24 
final filterAllowReference = true; // bool | Boolean which filters the group entries with the `allow_reference` attribute set.

try {
  final result = await client.groups.getGroups(notAssociatedToTeam, notAssociatedToChannel, page, perPage, q, includeMemberCount, since, filterAllowReference);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->getGroups: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notAssociatedToTeam** | **String**| Team GUID which is used to return all the groups not associated to this team | 
 **notAssociatedToChannel** | **String**| Group GUID which is used to return all the groups not associated to this channel | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of groups per page. | [optional] [default to 60]
 **q** | **String**| String to pattern match the `name` and `display_name` field. Will return all groups whose `name` and `display_name` field match any of the text. | [optional] 
 **includeMemberCount** | **bool**| Boolean which adds the `member_count` attribute to each group JSON object | [optional] 
 **since** | **int**| Only return groups that have been modified since the given Unix timestamp (in milliseconds). All modified groups, including deleted and created groups, will be returned. __Minimum server version__: 5.24  | [optional] 
 **filterAllowReference** | **bool**| Boolean which filters the group entries with the `allow_reference` attribute set. | [optional] [default to false]

### Return type

[**List<MattermostGroup>**](MattermostGroup.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupsAssociatedToChannelsByTeam**
> List<Map<String, List<MattermostGroupWithSchemeAdmin>>> getGroupsAssociatedToChannelsByTeam(teamId, page, perPage, filterAllowReference, paginate)

Get team groups by channels

Retrieve the set of groups associated with the channels in the given team grouped by channel.  ##### Permissions Must have `manage_system` permission or can access only for current user  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final teamId = teamId_example; // String | Team GUID
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of groups per page.
final filterAllowReference = true; // bool | Boolean which filters in the group entries with the `allow_reference` attribute set.
final paginate = true; // bool | Boolean to determine whether the pagination should be applied or not

try {
  final result = await client.groups.getGroupsAssociatedToChannelsByTeam(teamId, page, perPage, filterAllowReference, paginate);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->getGroupsAssociatedToChannelsByTeam: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of groups per page. | [optional] [default to 60]
 **filterAllowReference** | **bool**| Boolean which filters in the group entries with the `allow_reference` attribute set. | [optional] [default to false]
 **paginate** | **bool**| Boolean to determine whether the pagination should be applied or not | [optional] [default to false]

### Return type

[**List<Map<String, List<MattermostGroupWithSchemeAdmin>>>**](Map.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupsByChannel**
> List<MattermostGroup> getGroupsByChannel(channelId, page, perPage, filterAllowReference)

Get channel groups

Retrieve the list of groups associated with a given channel.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final channelId = channelId_example; // String | Channel GUID
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of groups per page.
final filterAllowReference = true; // bool | Boolean which filters the group entries with the `allow_reference` attribute set.

try {
  final result = await client.groups.getGroupsByChannel(channelId, page, perPage, filterAllowReference);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->getGroupsByChannel: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| Channel GUID | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of groups per page. | [optional] [default to 60]
 **filterAllowReference** | **bool**| Boolean which filters the group entries with the `allow_reference` attribute set. | [optional] [default to false]

### Return type

[**List<MattermostGroup>**](MattermostGroup.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupsByTeam**
> List<MattermostGroup> getGroupsByTeam(teamId, page, perPage, filterAllowReference)

Get team groups

Retrieve the list of groups associated with a given team.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final teamId = teamId_example; // String | Team GUID
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of groups per page.
final filterAllowReference = true; // bool | Boolean which filters in the group entries with the `allow_reference` attribute set.

try {
  final result = await client.groups.getGroupsByTeam(teamId, page, perPage, filterAllowReference);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->getGroupsByTeam: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of groups per page. | [optional] [default to 60]
 **filterAllowReference** | **bool**| Boolean which filters in the group entries with the `allow_reference` attribute set. | [optional] [default to false]

### Return type

[**List<MattermostGroup>**](MattermostGroup.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupsByUserId**
> List<MattermostGroup> getGroupsByUserId(userId)

Get groups for a userId

Retrieve the list of groups associated to the user  __Minimum server version__: 5.24 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final userId = userId_example; // String | User GUID

try {
  final result = await client.groups.getGroupsByUserId(userId);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->getGroupsByUserId: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**List<MattermostGroup>**](MattermostGroup.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **linkGroupSyncableForChannel**
> MattermostGroupSyncableChannel linkGroupSyncableForChannel(groupId, channelId)

Link a channel to a group

Link a channel to a group ##### Permissions If the channel is private, you must have `manage_private_channel_members` permission. Otherwise, you must have the `manage_public_channel_members` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final groupId = groupId_example; // String | Group GUID
final channelId = channelId_example; // String | Channel GUID

try {
  final result = await client.groups.linkGroupSyncableForChannel(groupId, channelId);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->linkGroupSyncableForChannel: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 
 **channelId** | **String**| Channel GUID | 

### Return type

[**MattermostGroupSyncableChannel**](MattermostGroupSyncableChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **linkGroupSyncableForTeam**
> MattermostGroupSyncableTeam linkGroupSyncableForTeam(groupId, teamId)

Link a team to a group

Link a team to a group ##### Permissions Must have `manage_team` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final groupId = groupId_example; // String | Group GUID
final teamId = teamId_example; // String | Team GUID

try {
  final result = await client.groups.linkGroupSyncableForTeam(groupId, teamId);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->linkGroupSyncableForTeam: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 
 **teamId** | **String**| Team GUID | 

### Return type

[**MattermostGroupSyncableTeam**](MattermostGroupSyncableTeam.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **patchGroup**
> MattermostGroup patchGroup(groupId, mattermostPatchGroupRequest)

Patch a group

Partially update a group by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final groupId = groupId_example; // String | Group GUID
final mattermostPatchGroupRequest = MattermostPatchGroupRequest(); // MattermostPatchGroupRequest | Group object that is to be updated

try {
  final result = await client.groups.patchGroup(groupId, mattermostPatchGroupRequest);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->patchGroup: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 
 **mattermostPatchGroupRequest** | [**MattermostPatchGroupRequest**](MattermostPatchGroupRequest.md)| Group object that is to be updated | 

### Return type

[**MattermostGroup**](MattermostGroup.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **patchGroupSyncableForChannel**
> MattermostGroupSyncableChannel patchGroupSyncableForChannel(groupId, channelId, mattermostPatchGroupSyncableForTeamRequest)

Patch a GroupSyncable associated to Channel

Partially update a GroupSyncable by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final groupId = groupId_example; // String | Group GUID
final channelId = channelId_example; // String | Channel GUID
final mattermostPatchGroupSyncableForTeamRequest = MattermostPatchGroupSyncableForTeamRequest(); // MattermostPatchGroupSyncableForTeamRequest | GroupSyncable object that is to be updated

try {
  final result = await client.groups.patchGroupSyncableForChannel(groupId, channelId, mattermostPatchGroupSyncableForTeamRequest);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->patchGroupSyncableForChannel: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 
 **channelId** | **String**| Channel GUID | 
 **mattermostPatchGroupSyncableForTeamRequest** | [**MattermostPatchGroupSyncableForTeamRequest**](MattermostPatchGroupSyncableForTeamRequest.md)| GroupSyncable object that is to be updated | 

### Return type

[**MattermostGroupSyncableChannel**](MattermostGroupSyncableChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **patchGroupSyncableForTeam**
> MattermostGroupSyncableTeam patchGroupSyncableForTeam(groupId, teamId, mattermostPatchGroupSyncableForTeamRequest)

Patch a GroupSyncable associated to Team

Partially update a GroupSyncable by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final groupId = groupId_example; // String | Group GUID
final teamId = teamId_example; // String | Team GUID
final mattermostPatchGroupSyncableForTeamRequest = MattermostPatchGroupSyncableForTeamRequest(); // MattermostPatchGroupSyncableForTeamRequest | GroupSyncable object that is to be updated

try {
  final result = await client.groups.patchGroupSyncableForTeam(groupId, teamId, mattermostPatchGroupSyncableForTeamRequest);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->patchGroupSyncableForTeam: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 
 **teamId** | **String**| Team GUID | 
 **mattermostPatchGroupSyncableForTeamRequest** | [**MattermostPatchGroupSyncableForTeamRequest**](MattermostPatchGroupSyncableForTeamRequest.md)| GroupSyncable object that is to be updated | 

### Return type

[**MattermostGroupSyncableTeam**](MattermostGroupSyncableTeam.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **unlinkGroupSyncableForChannel**
> MattermostStatusOK unlinkGroupSyncableForChannel(groupId, channelId)

Delete a link from a channel to a group

Delete a link from a channel to a group ##### Permissions If the channel is private, you must have `manage_private_channel_members` permission. Otherwise, you must have the `manage_public_channel_members` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final groupId = groupId_example; // String | Group GUID
final channelId = channelId_example; // String | Channel GUID

try {
  final result = await client.groups.unlinkGroupSyncableForChannel(groupId, channelId);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->unlinkGroupSyncableForChannel: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 
 **channelId** | **String**| Channel GUID | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **unlinkGroupSyncableForTeam**
> MattermostStatusOK unlinkGroupSyncableForTeam(groupId, teamId)

Delete a link from a team to a group

Delete a link from a team to a group ##### Permissions Must have `manage_team` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final groupId = groupId_example; // String | Group GUID
final teamId = teamId_example; // String | Team GUID

try {
  final result = await client.groups.unlinkGroupSyncableForTeam(groupId, teamId);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->unlinkGroupSyncableForTeam: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 
 **teamId** | **String**| Team GUID | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **unlinkLdapGroup**
> MattermostStatusOK unlinkLdapGroup(remoteId)

Delete a link for LDAP group

##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
late MattermostApiClient client;

// Configure client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


final remoteId = remoteId_example; // String | Group GUID

try {
  final result = await client.groups.unlinkLdapGroup(remoteId);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->unlinkLdapGroup: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **remoteId** | **String**| Group GUID | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

