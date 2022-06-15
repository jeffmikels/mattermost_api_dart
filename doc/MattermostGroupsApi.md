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
> MmStatusOK addGroupMembers(groupId, mmAddGroupMembersRequest)

Adds members to a custom group

Adds members to a custom group.  ##### Permissions Must have `custom_group_manage_members` permission for the given group.  __Minimum server version__: 6.3 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String groupId = 'groupId_example'; // String | The ID of the group.
final MmAddGroupMembersRequest mmAddGroupMembersRequest = MmAddGroupMembersRequest(); // MmAddGroupMembersRequest | 

try {
  final MmStatusOK? result = await client.groups.addGroupMembers(groupId, mmAddGroupMembersRequest); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostGroupsApi->addGroupMembers: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| The ID of the group. | 
 **mmAddGroupMembersRequest** | [**MmAddGroupMembersRequest**](MmAddGroupMembersRequest.md)|  | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **createGroup**
> createGroup(mmCreateGroupRequest)

Create a custom group

Create a `custom` type group.  #### Permission Must have `create_custom_group` permission.  __Minimum server version__: 6.3 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final MmCreateGroupRequest mmCreateGroupRequest = MmCreateGroupRequest(); // MmCreateGroupRequest | Group object and initial members.

try {
  await client.groups.createGroup(mmCreateGroupRequest); 
} catch (e) {
  print('Exception when calling MattermostGroupsApi->createGroup: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmCreateGroupRequest** | [**MmCreateGroupRequest**](MmCreateGroupRequest.md)| Group object and initial members. | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **deleteGroup**
> MmStatusOK deleteGroup(groupId)

Deletes a custom group

Soft deletes a custom group.  ##### Permissions Must have `custom_group_delete` permission for the given group.  __Minimum server version__: 6.3 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String groupId = 'groupId_example'; // String | The ID of the group.

try {
  final MmStatusOK? result = await client.groups.deleteGroup(groupId); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostGroupsApi->deleteGroup: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| The ID of the group. | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **deleteGroupMembers**
> MmStatusOK deleteGroupMembers(groupId, mmDeleteGroupMembersRequest)

Removes members from a custom group

Soft deletes a custom group members.  ##### Permissions Must have `custom_group_manage_members` permission for the given group.  __Minimum server version__: 6.3 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String groupId = 'groupId_example'; // String | The ID of the group to delete.
final MmDeleteGroupMembersRequest mmDeleteGroupMembersRequest = MmDeleteGroupMembersRequest(); // MmDeleteGroupMembersRequest | 

try {
  final MmStatusOK? result = await client.groups.deleteGroupMembers(groupId, mmDeleteGroupMembersRequest); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostGroupsApi->deleteGroupMembers: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| The ID of the group to delete. | 
 **mmDeleteGroupMembersRequest** | [**MmDeleteGroupMembersRequest**](MmDeleteGroupMembersRequest.md)|  | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroup**
> MmGroup getGroup(groupId)

Get a group

Get group from the provided group id string  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String groupId = 'groupId_example'; // String | Group GUID

try {
  final MmGroup? result = await client.groups.getGroup(groupId); // await the Future<MmGroup?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostGroupsApi->getGroup: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 

### Return type

[**MmGroup**](MmGroup.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupStats**
> MmGetGroupStats200Response getGroupStats(groupId)

Get group stats

Retrieve the stats of a given group.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.26 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String groupId = 'groupId_example'; // String | Group GUID

try {
  final MmGetGroupStats200Response? result = await client.groups.getGroupStats(groupId); // await the Future<MmGetGroupStats200Response?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostGroupsApi->getGroupStats: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 

### Return type

[**MmGetGroupStats200Response**](MmGetGroupStats200Response.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupSyncableForChannelId**
> MmGroupSyncableChannel getGroupSyncableForChannelId(groupId, channelId)

Get GroupSyncable from channel ID

Get the GroupSyncable object with group_id and channel_id from params ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String groupId = 'groupId_example'; // String | Group GUID
final String channelId = 'channelId_example'; // String | Channel GUID

try {
  final MmGroupSyncableChannel? result = await client.groups.getGroupSyncableForChannelId(groupId, channelId); // await the Future<MmGroupSyncableChannel?>
  print(result ?? 'resolved to null');
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

[**MmGroupSyncableChannel**](MmGroupSyncableChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupSyncableForTeamId**
> MmGroupSyncableTeam getGroupSyncableForTeamId(groupId, teamId)

Get GroupSyncable from Team ID

Get the GroupSyncable object with group_id and team_id from params ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String groupId = 'groupId_example'; // String | Group GUID
final String teamId = 'teamId_example'; // String | Team GUID

try {
  final MmGroupSyncableTeam? result = await client.groups.getGroupSyncableForTeamId(groupId, teamId); // await the Future<MmGroupSyncableTeam?>
  print(result ?? 'resolved to null');
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

[**MmGroupSyncableTeam**](MmGroupSyncableTeam.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupSyncablesChannels**
> List<MmGroupSyncableChannels> getGroupSyncablesChannels(groupId)

Get group channels

Retrieve the list of channels associated to the group ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String groupId = 'groupId_example'; // String | Group GUID

try {
  final List&lt;MmGroupSyncableChannels&gt;? result = await client.groups.getGroupSyncablesChannels(groupId); // await the Future<List&lt;MmGroupSyncableChannels&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostGroupsApi->getGroupSyncablesChannels: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 

### Return type

[**List<MmGroupSyncableChannels>**](MmGroupSyncableChannels.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupSyncablesTeams**
> List<MmGroupSyncableTeams> getGroupSyncablesTeams(groupId)

Get group teams

Retrieve the list of teams associated to the group ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String groupId = 'groupId_example'; // String | Group GUID

try {
  final List&lt;MmGroupSyncableTeams&gt;? result = await client.groups.getGroupSyncablesTeams(groupId); // await the Future<List&lt;MmGroupSyncableTeams&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostGroupsApi->getGroupSyncablesTeams: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 

### Return type

[**List<MmGroupSyncableTeams>**](MmGroupSyncableTeams.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupUsers**
> MmGetGroupUsers200Response getGroupUsers(groupId, page, perPage)

Get group users

Retrieve the list of users associated with a given group.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String groupId = 'groupId_example'; // String | Group GUID
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of groups per page.

try {
  final MmGetGroupUsers200Response? result = await client.groups.getGroupUsers(groupId, page, perPage); // await the Future<MmGetGroupUsers200Response?>
  print(result ?? 'resolved to null');
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

[**MmGetGroupUsers200Response**](MmGetGroupUsers200Response.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroups**
> List<MmGroup> getGroups(notAssociatedToTeam, notAssociatedToChannel, page, perPage, q, includeMemberCount, since, filterAllowReference)

Get groups

Retrieve a list of all groups not associated to a particular channel or team.  `not_associated_to_team` **OR** `not_associated_to_channel` is required.  If you use `not_associated_to_team`, you must be a team admin for that particular team (permission to manage that team).  If you use `not_associated_to_channel`, you must be a channel admin for that particular channel (permission to manage that channel).  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
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
  final List&lt;MmGroup&gt;? result = await client.groups.getGroups(notAssociatedToTeam, notAssociatedToChannel, page, perPage, q, includeMemberCount, since, filterAllowReference); // await the Future<List&lt;MmGroup&gt;?>
  print(result ?? 'resolved to null');
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

[**List<MmGroup>**](MmGroup.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupsAssociatedToChannelsByTeam**
> List<Map<String, List<MmGroupWithSchemeAdmin>>> getGroupsAssociatedToChannelsByTeam(teamId, page, perPage, filterAllowReference, paginate)

Get team groups by channels

Retrieve the set of groups associated with the channels in the given team grouped by channel.  ##### Permissions Must have `manage_system` permission or can access only for current user  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String teamId = 'teamId_example'; // String | Team GUID
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of groups per page.
final bool filterAllowReference = true; // bool | Boolean which filters in the group entries with the `allow_reference` attribute set.
final bool paginate = true; // bool | Boolean to determine whether the pagination should be applied or not

try {
  final List&lt;Map&lt;String, List&lt;MmGroupWithSchemeAdmin&gt;&gt;&gt;? result = await client.groups.getGroupsAssociatedToChannelsByTeam(teamId, page, perPage, filterAllowReference, paginate); // await the Future<List&lt;Map&lt;String, List&lt;MmGroupWithSchemeAdmin&gt;&gt;&gt;?>
  print(result ?? 'resolved to null');
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

[**List<Map<String, List<MmGroupWithSchemeAdmin>>>**](Map.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupsByChannel**
> List<MmGroup> getGroupsByChannel(channelId, page, perPage, filterAllowReference)

Get channel groups

Retrieve the list of groups associated with a given channel.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String channelId = 'channelId_example'; // String | Channel GUID
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of groups per page.
final bool filterAllowReference = true; // bool | Boolean which filters the group entries with the `allow_reference` attribute set.

try {
  final List&lt;MmGroup&gt;? result = await client.groups.getGroupsByChannel(channelId, page, perPage, filterAllowReference); // await the Future<List&lt;MmGroup&gt;?>
  print(result ?? 'resolved to null');
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

[**List<MmGroup>**](MmGroup.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupsByTeam**
> List<MmGroup> getGroupsByTeam(teamId, page, perPage, filterAllowReference)

Get team groups

Retrieve the list of groups associated with a given team.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String teamId = 'teamId_example'; // String | Team GUID
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of groups per page.
final bool filterAllowReference = true; // bool | Boolean which filters in the group entries with the `allow_reference` attribute set.

try {
  final List&lt;MmGroup&gt;? result = await client.groups.getGroupsByTeam(teamId, page, perPage, filterAllowReference); // await the Future<List&lt;MmGroup&gt;?>
  print(result ?? 'resolved to null');
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

[**List<MmGroup>**](MmGroup.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getGroupsByUserId**
> List<MmGroup> getGroupsByUserId(userId)

Get groups for a userId

Retrieve the list of groups associated to the user  __Minimum server version__: 5.24 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String userId = 'userId_example'; // String | User GUID

try {
  final List&lt;MmGroup&gt;? result = await client.groups.getGroupsByUserId(userId); // await the Future<List&lt;MmGroup&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostGroupsApi->getGroupsByUserId: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**List<MmGroup>**](MmGroup.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **linkGroupSyncableForChannel**
> MmGroupSyncableChannel linkGroupSyncableForChannel(groupId, channelId)

Link a channel to a group

Link a channel to a group ##### Permissions If the channel is private, you must have `manage_private_channel_members` permission. Otherwise, you must have the `manage_public_channel_members` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String groupId = 'groupId_example'; // String | Group GUID
final String channelId = 'channelId_example'; // String | Channel GUID

try {
  final MmGroupSyncableChannel? result = await client.groups.linkGroupSyncableForChannel(groupId, channelId); // await the Future<MmGroupSyncableChannel?>
  print(result ?? 'resolved to null');
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

[**MmGroupSyncableChannel**](MmGroupSyncableChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **linkGroupSyncableForTeam**
> MmGroupSyncableTeam linkGroupSyncableForTeam(groupId, teamId)

Link a team to a group

Link a team to a group ##### Permissions Must have `manage_team` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String groupId = 'groupId_example'; // String | Group GUID
final String teamId = 'teamId_example'; // String | Team GUID

try {
  final MmGroupSyncableTeam? result = await client.groups.linkGroupSyncableForTeam(groupId, teamId); // await the Future<MmGroupSyncableTeam?>
  print(result ?? 'resolved to null');
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

[**MmGroupSyncableTeam**](MmGroupSyncableTeam.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **patchGroup**
> MmGroup patchGroup(groupId, mmPatchGroupRequest)

Patch a group

Partially update a group by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String groupId = 'groupId_example'; // String | Group GUID
final MmPatchGroupRequest mmPatchGroupRequest = MmPatchGroupRequest(); // MmPatchGroupRequest | Group object that is to be updated

try {
  final MmGroup? result = await client.groups.patchGroup(groupId, mmPatchGroupRequest); // await the Future<MmGroup?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostGroupsApi->patchGroup: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 
 **mmPatchGroupRequest** | [**MmPatchGroupRequest**](MmPatchGroupRequest.md)| Group object that is to be updated | 

### Return type

[**MmGroup**](MmGroup.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **patchGroupSyncableForChannel**
> MmGroupSyncableChannel patchGroupSyncableForChannel(groupId, channelId, mmPatchGroupSyncableForTeamRequest)

Patch a GroupSyncable associated to Channel

Partially update a GroupSyncable by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String groupId = 'groupId_example'; // String | Group GUID
final String channelId = 'channelId_example'; // String | Channel GUID
final MmPatchGroupSyncableForTeamRequest mmPatchGroupSyncableForTeamRequest = MmPatchGroupSyncableForTeamRequest(); // MmPatchGroupSyncableForTeamRequest | GroupSyncable object that is to be updated

try {
  final MmGroupSyncableChannel? result = await client.groups.patchGroupSyncableForChannel(groupId, channelId, mmPatchGroupSyncableForTeamRequest); // await the Future<MmGroupSyncableChannel?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostGroupsApi->patchGroupSyncableForChannel: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 
 **channelId** | **String**| Channel GUID | 
 **mmPatchGroupSyncableForTeamRequest** | [**MmPatchGroupSyncableForTeamRequest**](MmPatchGroupSyncableForTeamRequest.md)| GroupSyncable object that is to be updated | 

### Return type

[**MmGroupSyncableChannel**](MmGroupSyncableChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **patchGroupSyncableForTeam**
> MmGroupSyncableTeam patchGroupSyncableForTeam(groupId, teamId, mmPatchGroupSyncableForTeamRequest)

Patch a GroupSyncable associated to Team

Partially update a GroupSyncable by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String groupId = 'groupId_example'; // String | Group GUID
final String teamId = 'teamId_example'; // String | Team GUID
final MmPatchGroupSyncableForTeamRequest mmPatchGroupSyncableForTeamRequest = MmPatchGroupSyncableForTeamRequest(); // MmPatchGroupSyncableForTeamRequest | GroupSyncable object that is to be updated

try {
  final MmGroupSyncableTeam? result = await client.groups.patchGroupSyncableForTeam(groupId, teamId, mmPatchGroupSyncableForTeamRequest); // await the Future<MmGroupSyncableTeam?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostGroupsApi->patchGroupSyncableForTeam: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 
 **teamId** | **String**| Team GUID | 
 **mmPatchGroupSyncableForTeamRequest** | [**MmPatchGroupSyncableForTeamRequest**](MmPatchGroupSyncableForTeamRequest.md)| GroupSyncable object that is to be updated | 

### Return type

[**MmGroupSyncableTeam**](MmGroupSyncableTeam.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **unlinkGroupSyncableForChannel**
> MmStatusOK unlinkGroupSyncableForChannel(groupId, channelId)

Delete a link from a channel to a group

Delete a link from a channel to a group ##### Permissions If the channel is private, you must have `manage_private_channel_members` permission. Otherwise, you must have the `manage_public_channel_members` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String groupId = 'groupId_example'; // String | Group GUID
final String channelId = 'channelId_example'; // String | Channel GUID

try {
  final MmStatusOK? result = await client.groups.unlinkGroupSyncableForChannel(groupId, channelId); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
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

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **unlinkGroupSyncableForTeam**
> MmStatusOK unlinkGroupSyncableForTeam(groupId, teamId)

Delete a link from a team to a group

Delete a link from a team to a group ##### Permissions Must have `manage_team` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String groupId = 'groupId_example'; // String | Group GUID
final String teamId = 'teamId_example'; // String | Team GUID

try {
  final MmStatusOK? result = await client.groups.unlinkGroupSyncableForTeam(groupId, teamId); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
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

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **unlinkLdapGroup**
> MmStatusOK unlinkLdapGroup(remoteId)

Delete a link for LDAP group

##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String remoteId = 'remoteId_example'; // String | Group GUID

try {
  final MmStatusOK? result = await client.groups.unlinkLdapGroup(remoteId); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostGroupsApi->unlinkLdapGroup: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **remoteId** | **String**| Group GUID | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

