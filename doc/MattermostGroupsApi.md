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
> MMStatusOK addGroupMembers(groupId, mMAddGroupMembersRequest)

Adds members to a custom group

Adds members to a custom group.  ##### Permissions Must have `custom_group_manage_members` permission for the given group.  __Minimum server version__: 6.3 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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


final String groupId = 'groupId_example'; // String | The ID of the group.
final MMAddGroupMembersRequest mMAddGroupMembersRequest = MMAddGroupMembersRequest(); // MMAddGroupMembersRequest | 

try {
  final result = await client.groups.addGroupMembers(groupId, mMAddGroupMembersRequest);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->addGroupMembers: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| The ID of the group. | 
 **mMAddGroupMembersRequest** | [**MMAddGroupMembersRequest**](MMAddGroupMembersRequest.md)|  | 

### Return type

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **createGroup**
> createGroup(mMCreateGroupRequest)

Create a custom group

Create a `custom` type group.  #### Permission Must have `create_custom_group` permission.  __Minimum server version__: 6.3 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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


final MMCreateGroupRequest mMCreateGroupRequest = MMCreateGroupRequest(); // MMCreateGroupRequest | Group object and initial members.

try {
  await client.groups.createGroup(mMCreateGroupRequest);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->createGroup: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mMCreateGroupRequest** | [**MMCreateGroupRequest**](MMCreateGroupRequest.md)| Group object and initial members. | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **deleteGroup**
> MMStatusOK deleteGroup(groupId)

Deletes a custom group

Soft deletes a custom group.  ##### Permissions Must have `custom_group_delete` permission for the given group.  __Minimum server version__: 6.3 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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


final String groupId = 'groupId_example'; // String | The ID of the group.

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

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **deleteGroupMembers**
> MMStatusOK deleteGroupMembers(groupId, mMDeleteGroupMembersRequest)

Removes members from a custom group

Soft deletes a custom group members.  ##### Permissions Must have `custom_group_manage_members` permission for the given group.  __Minimum server version__: 6.3 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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


final String groupId = 'groupId_example'; // String | The ID of the group to delete.
final MMDeleteGroupMembersRequest mMDeleteGroupMembersRequest = MMDeleteGroupMembersRequest(); // MMDeleteGroupMembersRequest | 

try {
  final result = await client.groups.deleteGroupMembers(groupId, mMDeleteGroupMembersRequest);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->deleteGroupMembers: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| The ID of the group to delete. | 
 **mMDeleteGroupMembersRequest** | [**MMDeleteGroupMembersRequest**](MMDeleteGroupMembersRequest.md)|  | 

### Return type

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroup**
> MMGroup getGroup(groupId)

Get a group

Get group from the provided group id string  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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


final String groupId = 'groupId_example'; // String | Group GUID

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

[**MMGroup**](MMGroup.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupStats**
> MMGetGroupStats200Response getGroupStats(groupId)

Get group stats

Retrieve the stats of a given group.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.26 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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


final String groupId = 'groupId_example'; // String | Group GUID

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

[**MMGetGroupStats200Response**](MMGetGroupStats200Response.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupSyncableForChannelId**
> MMGroupSyncableChannel getGroupSyncableForChannelId(groupId, channelId)

Get GroupSyncable from channel ID

Get the GroupSyncable object with group_id and channel_id from params ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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


final String groupId = 'groupId_example'; // String | Group GUID
final String channelId = 'channelId_example'; // String | Channel GUID

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

[**MMGroupSyncableChannel**](MMGroupSyncableChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupSyncableForTeamId**
> MMGroupSyncableTeam getGroupSyncableForTeamId(groupId, teamId)

Get GroupSyncable from Team ID

Get the GroupSyncable object with group_id and team_id from params ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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


final String groupId = 'groupId_example'; // String | Group GUID
final String teamId = 'teamId_example'; // String | Team GUID

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

[**MMGroupSyncableTeam**](MMGroupSyncableTeam.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupSyncablesChannels**
> List<MMGroupSyncableChannels> getGroupSyncablesChannels(groupId)

Get group channels

Retrieve the list of channels associated to the group ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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


final String groupId = 'groupId_example'; // String | Group GUID

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

[**List<MMGroupSyncableChannels>**](MMGroupSyncableChannels.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupSyncablesTeams**
> List<MMGroupSyncableTeams> getGroupSyncablesTeams(groupId)

Get group teams

Retrieve the list of teams associated to the group ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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


final String groupId = 'groupId_example'; // String | Group GUID

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

[**List<MMGroupSyncableTeams>**](MMGroupSyncableTeams.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupUsers**
> MMGetGroupUsers200Response getGroupUsers(groupId, page, perPage)

Get group users

Retrieve the list of users associated with a given group.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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


final String groupId = 'groupId_example'; // String | Group GUID
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of groups per page.

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

[**MMGetGroupUsers200Response**](MMGetGroupUsers200Response.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroups**
> List<MMGroup> getGroups(notAssociatedToTeam, notAssociatedToChannel, page, perPage, q, includeMemberCount, since, filterAllowReference)

Get groups

Retrieve a list of all groups not associated to a particular channel or team.  `not_associated_to_team` **OR** `not_associated_to_channel` is required.  If you use `not_associated_to_team`, you must be a team admin for that particular team (permission to manage that team).  If you use `not_associated_to_channel`, you must be a channel admin for that particular channel (permission to manage that channel).  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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


final String notAssociatedToTeam = 'notAssociatedToTeam_example'; // String | Team GUID which is used to return all the groups not associated to this team
final String notAssociatedToChannel = 'notAssociatedToChannel_example'; // String | Group GUID which is used to return all the groups not associated to this channel
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of groups per page.
final String q = 'q_example'; // String | String to pattern match the `name` and `display_name` field. Will return all groups whose `name` and `display_name` field match any of the text.
final bool includeMemberCount = true; // bool | Boolean which adds the `member_count` attribute to each group JSON object
final int since = 56; // int | Only return groups that have been modified since the given Unix timestamp (in milliseconds). All modified groups, including deleted and created groups, will be returned. __Minimum server version__: 5.24 
final bool filterAllowReference = true; // bool | Boolean which filters the group entries with the `allow_reference` attribute set.

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

[**List<MMGroup>**](MMGroup.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupsAssociatedToChannelsByTeam**
> List<Map<String, List<MMGroupWithSchemeAdmin>>> getGroupsAssociatedToChannelsByTeam(teamId, page, perPage, filterAllowReference, paginate)

Get team groups by channels

Retrieve the set of groups associated with the channels in the given team grouped by channel.  ##### Permissions Must have `manage_system` permission or can access only for current user  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of groups per page.
final bool filterAllowReference = true; // bool | Boolean which filters in the group entries with the `allow_reference` attribute set.
final bool paginate = true; // bool | Boolean to determine whether the pagination should be applied or not

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

[**List<Map<String, List<MMGroupWithSchemeAdmin>>>**](Map.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupsByChannel**
> List<MMGroup> getGroupsByChannel(channelId, page, perPage, filterAllowReference)

Get channel groups

Retrieve the list of groups associated with a given channel.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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


final String channelId = 'channelId_example'; // String | Channel GUID
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of groups per page.
final bool filterAllowReference = true; // bool | Boolean which filters the group entries with the `allow_reference` attribute set.

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

[**List<MMGroup>**](MMGroup.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupsByTeam**
> List<MMGroup> getGroupsByTeam(teamId, page, perPage, filterAllowReference)

Get team groups

Retrieve the list of groups associated with a given team.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of groups per page.
final bool filterAllowReference = true; // bool | Boolean which filters in the group entries with the `allow_reference` attribute set.

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

[**List<MMGroup>**](MMGroup.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupsByUserId**
> List<MMGroup> getGroupsByUserId(userId)

Get groups for a userId

Retrieve the list of groups associated to the user  __Minimum server version__: 5.24 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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

[**List<MMGroup>**](MMGroup.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **linkGroupSyncableForChannel**
> MMGroupSyncableChannel linkGroupSyncableForChannel(groupId, channelId)

Link a channel to a group

Link a channel to a group ##### Permissions If the channel is private, you must have `manage_private_channel_members` permission. Otherwise, you must have the `manage_public_channel_members` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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


final String groupId = 'groupId_example'; // String | Group GUID
final String channelId = 'channelId_example'; // String | Channel GUID

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

[**MMGroupSyncableChannel**](MMGroupSyncableChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **linkGroupSyncableForTeam**
> MMGroupSyncableTeam linkGroupSyncableForTeam(groupId, teamId)

Link a team to a group

Link a team to a group ##### Permissions Must have `manage_team` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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


final String groupId = 'groupId_example'; // String | Group GUID
final String teamId = 'teamId_example'; // String | Team GUID

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

[**MMGroupSyncableTeam**](MMGroupSyncableTeam.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **patchGroup**
> MMGroup patchGroup(groupId, mMPatchGroupRequest)

Patch a group

Partially update a group by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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


final String groupId = 'groupId_example'; // String | Group GUID
final MMPatchGroupRequest mMPatchGroupRequest = MMPatchGroupRequest(); // MMPatchGroupRequest | Group object that is to be updated

try {
  final result = await client.groups.patchGroup(groupId, mMPatchGroupRequest);
  print(result);
} catch (e) {
  print('Exception when calling MattermostGroupsApi->patchGroup: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 
 **mMPatchGroupRequest** | [**MMPatchGroupRequest**](MMPatchGroupRequest.md)| Group object that is to be updated | 

### Return type

[**MMGroup**](MMGroup.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **patchGroupSyncableForChannel**
> MMGroupSyncableChannel patchGroupSyncableForChannel(groupId, channelId, mMPatchGroupSyncableForTeamRequest)

Patch a GroupSyncable associated to Channel

Partially update a GroupSyncable by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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


final String groupId = 'groupId_example'; // String | Group GUID
final String channelId = 'channelId_example'; // String | Channel GUID
final MMPatchGroupSyncableForTeamRequest mMPatchGroupSyncableForTeamRequest = MMPatchGroupSyncableForTeamRequest(); // MMPatchGroupSyncableForTeamRequest | GroupSyncable object that is to be updated

try {
  final result = await client.groups.patchGroupSyncableForChannel(groupId, channelId, mMPatchGroupSyncableForTeamRequest);
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
 **mMPatchGroupSyncableForTeamRequest** | [**MMPatchGroupSyncableForTeamRequest**](MMPatchGroupSyncableForTeamRequest.md)| GroupSyncable object that is to be updated | 

### Return type

[**MMGroupSyncableChannel**](MMGroupSyncableChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **patchGroupSyncableForTeam**
> MMGroupSyncableTeam patchGroupSyncableForTeam(groupId, teamId, mMPatchGroupSyncableForTeamRequest)

Patch a GroupSyncable associated to Team

Partially update a GroupSyncable by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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


final String groupId = 'groupId_example'; // String | Group GUID
final String teamId = 'teamId_example'; // String | Team GUID
final MMPatchGroupSyncableForTeamRequest mMPatchGroupSyncableForTeamRequest = MMPatchGroupSyncableForTeamRequest(); // MMPatchGroupSyncableForTeamRequest | GroupSyncable object that is to be updated

try {
  final result = await client.groups.patchGroupSyncableForTeam(groupId, teamId, mMPatchGroupSyncableForTeamRequest);
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
 **mMPatchGroupSyncableForTeamRequest** | [**MMPatchGroupSyncableForTeamRequest**](MMPatchGroupSyncableForTeamRequest.md)| GroupSyncable object that is to be updated | 

### Return type

[**MMGroupSyncableTeam**](MMGroupSyncableTeam.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **unlinkGroupSyncableForChannel**
> MMStatusOK unlinkGroupSyncableForChannel(groupId, channelId)

Delete a link from a channel to a group

Delete a link from a channel to a group ##### Permissions If the channel is private, you must have `manage_private_channel_members` permission. Otherwise, you must have the `manage_public_channel_members` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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


final String groupId = 'groupId_example'; // String | Group GUID
final String channelId = 'channelId_example'; // String | Channel GUID

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

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **unlinkGroupSyncableForTeam**
> MMStatusOK unlinkGroupSyncableForTeam(groupId, teamId)

Delete a link from a team to a group

Delete a link from a team to a group ##### Permissions Must have `manage_team` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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


final String groupId = 'groupId_example'; // String | Group GUID
final String teamId = 'teamId_example'; // String | Team GUID

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

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **unlinkLdapGroup**
> MMStatusOK unlinkLdapGroup(remoteId)

Delete a link for LDAP group

##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
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


final String remoteId = 'remoteId_example'; // String | Group GUID

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

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

