# mattermost_api.api.GroupsApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addGroupMembers**](GroupsApi.md#addgroupmembers) | **POST** /groups/{group_id}/members | Adds members to a custom group
[**createGroup**](GroupsApi.md#creategroup) | **POST** /groups | Create a custom group
[**deleteGroup**](GroupsApi.md#deletegroup) | **DELETE** /groups/{group_id} | Deletes a custom group
[**deleteGroupMembers**](GroupsApi.md#deletegroupmembers) | **DELETE** /groups/{group_id}/members | Removes members from a custom group
[**getGroup**](GroupsApi.md#getgroup) | **GET** /groups/{group_id} | Get a group
[**getGroupStats**](GroupsApi.md#getgroupstats) | **GET** /groups/{group_id}/stats | Get group stats
[**getGroupSyncableForChannelId**](GroupsApi.md#getgroupsyncableforchannelid) | **GET** /groups/{group_id}/channels/{channel_id} | Get GroupSyncable from channel ID
[**getGroupSyncableForTeamId**](GroupsApi.md#getgroupsyncableforteamid) | **GET** /groups/{group_id}/teams/{team_id} | Get GroupSyncable from Team ID
[**getGroupSyncablesChannels**](GroupsApi.md#getgroupsyncableschannels) | **GET** /groups/{group_id}/channels | Get group channels
[**getGroupSyncablesTeams**](GroupsApi.md#getgroupsyncablesteams) | **GET** /groups/{group_id}/teams | Get group teams
[**getGroupUsers**](GroupsApi.md#getgroupusers) | **GET** /groups/{group_id}/members | Get group users
[**getGroups**](GroupsApi.md#getgroups) | **GET** /groups | Get groups
[**getGroupsAssociatedToChannelsByTeam**](GroupsApi.md#getgroupsassociatedtochannelsbyteam) | **GET** /teams/{team_id}/groups_by_channels | Get team groups by channels
[**getGroupsByChannel**](GroupsApi.md#getgroupsbychannel) | **GET** /channels/{channel_id}/groups | Get channel groups
[**getGroupsByTeam**](GroupsApi.md#getgroupsbyteam) | **GET** /teams/{team_id}/groups | Get team groups
[**getGroupsByUserId**](GroupsApi.md#getgroupsbyuserid) | **GET** /users/{user_id}/groups | Get groups for a userId
[**linkGroupSyncableForChannel**](GroupsApi.md#linkgroupsyncableforchannel) | **POST** /groups/{group_id}/channels/{channel_id}/link | Link a channel to a group
[**linkGroupSyncableForTeam**](GroupsApi.md#linkgroupsyncableforteam) | **POST** /groups/{group_id}/teams/{team_id}/link | Link a team to a group
[**patchGroup**](GroupsApi.md#patchgroup) | **PUT** /groups/{group_id}/patch | Patch a group
[**patchGroupSyncableForChannel**](GroupsApi.md#patchgroupsyncableforchannel) | **PUT** /groups/{group_id}/channels/{channel_id}/patch | Patch a GroupSyncable associated to Channel
[**patchGroupSyncableForTeam**](GroupsApi.md#patchgroupsyncableforteam) | **PUT** /groups/{group_id}/teams/{team_id}/patch | Patch a GroupSyncable associated to Team
[**unlinkGroupSyncableForChannel**](GroupsApi.md#unlinkgroupsyncableforchannel) | **DELETE** /groups/{group_id}/channels/{channel_id}/link | Delete a link from a channel to a group
[**unlinkGroupSyncableForTeam**](GroupsApi.md#unlinkgroupsyncableforteam) | **DELETE** /groups/{group_id}/teams/{team_id}/link | Delete a link from a team to a group
[**unlinkLdapGroup**](GroupsApi.md#unlinkldapgroup) | **DELETE** /ldap/groups/{remote_id}/link | Delete a link for LDAP group


# **addGroupMembers**
> StatusOK addGroupMembers(groupId, addGroupMembersRequest)

Adds members to a custom group

Adds members to a custom group.  ##### Permissions Must have `custom_group_manage_members` permission for the given group.  __Minimum server version__: 6.3 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final groupId = groupId_example; // String | The ID of the group.
final addGroupMembersRequest = AddGroupMembersRequest(); // AddGroupMembersRequest | 

try {
    final result = api_instance.addGroupMembers(groupId, addGroupMembersRequest);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->addGroupMembers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| The ID of the group. | 
 **addGroupMembersRequest** | [**AddGroupMembersRequest**](AddGroupMembersRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createGroup**
> createGroup(createGroupRequest)

Create a custom group

Create a `custom` type group.  #### Permission Must have `create_custom_group` permission.  __Minimum server version__: 6.3 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final createGroupRequest = CreateGroupRequest(); // CreateGroupRequest | Group object and initial members.

try {
    api_instance.createGroup(createGroupRequest);
} catch (e) {
    print('Exception when calling GroupsApi->createGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createGroupRequest** | [**CreateGroupRequest**](CreateGroupRequest.md)| Group object and initial members. | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroup**
> StatusOK deleteGroup(groupId)

Deletes a custom group

Soft deletes a custom group.  ##### Permissions Must have `custom_group_delete` permission for the given group.  __Minimum server version__: 6.3 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final groupId = groupId_example; // String | The ID of the group.

try {
    final result = api_instance.deleteGroup(groupId);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->deleteGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| The ID of the group. | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroupMembers**
> StatusOK deleteGroupMembers(groupId, deleteGroupMembersRequest)

Removes members from a custom group

Soft deletes a custom group members.  ##### Permissions Must have `custom_group_manage_members` permission for the given group.  __Minimum server version__: 6.3 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final groupId = groupId_example; // String | The ID of the group to delete.
final deleteGroupMembersRequest = DeleteGroupMembersRequest(); // DeleteGroupMembersRequest | 

try {
    final result = api_instance.deleteGroupMembers(groupId, deleteGroupMembersRequest);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->deleteGroupMembers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| The ID of the group to delete. | 
 **deleteGroupMembersRequest** | [**DeleteGroupMembersRequest**](DeleteGroupMembersRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroup**
> Group getGroup(groupId)

Get a group

Get group from the provided group id string  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final groupId = groupId_example; // String | Group GUID

try {
    final result = api_instance.getGroup(groupId);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->getGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 

### Return type

[**Group**](Group.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupStats**
> GetGroupStats200Response getGroupStats(groupId)

Get group stats

Retrieve the stats of a given group.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.26 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final groupId = groupId_example; // String | Group GUID

try {
    final result = api_instance.getGroupStats(groupId);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->getGroupStats: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 

### Return type

[**GetGroupStats200Response**](GetGroupStats200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupSyncableForChannelId**
> GroupSyncableChannel getGroupSyncableForChannelId(groupId, channelId)

Get GroupSyncable from channel ID

Get the GroupSyncable object with group_id and channel_id from params ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final groupId = groupId_example; // String | Group GUID
final channelId = channelId_example; // String | Channel GUID

try {
    final result = api_instance.getGroupSyncableForChannelId(groupId, channelId);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->getGroupSyncableForChannelId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 
 **channelId** | **String**| Channel GUID | 

### Return type

[**GroupSyncableChannel**](GroupSyncableChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupSyncableForTeamId**
> GroupSyncableTeam getGroupSyncableForTeamId(groupId, teamId)

Get GroupSyncable from Team ID

Get the GroupSyncable object with group_id and team_id from params ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final groupId = groupId_example; // String | Group GUID
final teamId = teamId_example; // String | Team GUID

try {
    final result = api_instance.getGroupSyncableForTeamId(groupId, teamId);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->getGroupSyncableForTeamId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 
 **teamId** | **String**| Team GUID | 

### Return type

[**GroupSyncableTeam**](GroupSyncableTeam.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupSyncablesChannels**
> List<GroupSyncableChannels> getGroupSyncablesChannels(groupId)

Get group channels

Retrieve the list of channels associated to the group ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final groupId = groupId_example; // String | Group GUID

try {
    final result = api_instance.getGroupSyncablesChannels(groupId);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->getGroupSyncablesChannels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 

### Return type

[**List<GroupSyncableChannels>**](GroupSyncableChannels.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupSyncablesTeams**
> List<GroupSyncableTeams> getGroupSyncablesTeams(groupId)

Get group teams

Retrieve the list of teams associated to the group ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final groupId = groupId_example; // String | Group GUID

try {
    final result = api_instance.getGroupSyncablesTeams(groupId);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->getGroupSyncablesTeams: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 

### Return type

[**List<GroupSyncableTeams>**](GroupSyncableTeams.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupUsers**
> GetGroupUsers200Response getGroupUsers(groupId, page, perPage)

Get group users

Retrieve the list of users associated with a given group.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final groupId = groupId_example; // String | Group GUID
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of groups per page.

try {
    final result = api_instance.getGroupUsers(groupId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->getGroupUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of groups per page. | [optional] [default to 60]

### Return type

[**GetGroupUsers200Response**](GetGroupUsers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroups**
> List<Group> getGroups(notAssociatedToTeam, notAssociatedToChannel, page, perPage, q, includeMemberCount, since, filterAllowReference)

Get groups

Retrieve a list of all groups not associated to a particular channel or team.  `not_associated_to_team` **OR** `not_associated_to_channel` is required.  If you use `not_associated_to_team`, you must be a team admin for that particular team (permission to manage that team).  If you use `not_associated_to_channel`, you must be a channel admin for that particular channel (permission to manage that channel).  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final notAssociatedToTeam = notAssociatedToTeam_example; // String | Team GUID which is used to return all the groups not associated to this team
final notAssociatedToChannel = notAssociatedToChannel_example; // String | Group GUID which is used to return all the groups not associated to this channel
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of groups per page.
final q = q_example; // String | String to pattern match the `name` and `display_name` field. Will return all groups whose `name` and `display_name` field match any of the text.
final includeMemberCount = true; // bool | Boolean which adds the `member_count` attribute to each group JSON object
final since = 56; // int | Only return groups that have been modified since the given Unix timestamp (in milliseconds). All modified groups, including deleted and created groups, will be returned. __Minimum server version__: 5.24 
final filterAllowReference = true; // bool | Boolean which filters the group entries with the `allow_reference` attribute set.

try {
    final result = api_instance.getGroups(notAssociatedToTeam, notAssociatedToChannel, page, perPage, q, includeMemberCount, since, filterAllowReference);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->getGroups: $e\n');
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

[**List<Group>**](Group.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupsAssociatedToChannelsByTeam**
> List<Map<String, List<GroupWithSchemeAdmin>>> getGroupsAssociatedToChannelsByTeam(teamId, page, perPage, filterAllowReference, paginate)

Get team groups by channels

Retrieve the set of groups associated with the channels in the given team grouped by channel.  ##### Permissions Must have `manage_system` permission or can access only for current user  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final teamId = teamId_example; // String | Team GUID
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of groups per page.
final filterAllowReference = true; // bool | Boolean which filters in the group entries with the `allow_reference` attribute set.
final paginate = true; // bool | Boolean to determine whether the pagination should be applied or not

try {
    final result = api_instance.getGroupsAssociatedToChannelsByTeam(teamId, page, perPage, filterAllowReference, paginate);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->getGroupsAssociatedToChannelsByTeam: $e\n');
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

[**List<Map<String, List<GroupWithSchemeAdmin>>>**](Map.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupsByChannel**
> List<Group> getGroupsByChannel(channelId, page, perPage, filterAllowReference)

Get channel groups

Retrieve the list of groups associated with a given channel.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final channelId = channelId_example; // String | Channel GUID
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of groups per page.
final filterAllowReference = true; // bool | Boolean which filters the group entries with the `allow_reference` attribute set.

try {
    final result = api_instance.getGroupsByChannel(channelId, page, perPage, filterAllowReference);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->getGroupsByChannel: $e\n');
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

[**List<Group>**](Group.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupsByTeam**
> List<Group> getGroupsByTeam(teamId, page, perPage, filterAllowReference)

Get team groups

Retrieve the list of groups associated with a given team.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final teamId = teamId_example; // String | Team GUID
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of groups per page.
final filterAllowReference = true; // bool | Boolean which filters in the group entries with the `allow_reference` attribute set.

try {
    final result = api_instance.getGroupsByTeam(teamId, page, perPage, filterAllowReference);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->getGroupsByTeam: $e\n');
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

[**List<Group>**](Group.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupsByUserId**
> List<Group> getGroupsByUserId(userId)

Get groups for a userId

Retrieve the list of groups associated to the user  __Minimum server version__: 5.24 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final userId = userId_example; // String | User GUID

try {
    final result = api_instance.getGroupsByUserId(userId);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->getGroupsByUserId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**List<Group>**](Group.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkGroupSyncableForChannel**
> GroupSyncableChannel linkGroupSyncableForChannel(groupId, channelId)

Link a channel to a group

Link a channel to a group ##### Permissions If the channel is private, you must have `manage_private_channel_members` permission. Otherwise, you must have the `manage_public_channel_members` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final groupId = groupId_example; // String | Group GUID
final channelId = channelId_example; // String | Channel GUID

try {
    final result = api_instance.linkGroupSyncableForChannel(groupId, channelId);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->linkGroupSyncableForChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 
 **channelId** | **String**| Channel GUID | 

### Return type

[**GroupSyncableChannel**](GroupSyncableChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkGroupSyncableForTeam**
> GroupSyncableTeam linkGroupSyncableForTeam(groupId, teamId)

Link a team to a group

Link a team to a group ##### Permissions Must have `manage_team` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final groupId = groupId_example; // String | Group GUID
final teamId = teamId_example; // String | Team GUID

try {
    final result = api_instance.linkGroupSyncableForTeam(groupId, teamId);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->linkGroupSyncableForTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 
 **teamId** | **String**| Team GUID | 

### Return type

[**GroupSyncableTeam**](GroupSyncableTeam.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchGroup**
> Group patchGroup(groupId, patchGroupRequest)

Patch a group

Partially update a group by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final groupId = groupId_example; // String | Group GUID
final patchGroupRequest = PatchGroupRequest(); // PatchGroupRequest | Group object that is to be updated

try {
    final result = api_instance.patchGroup(groupId, patchGroupRequest);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->patchGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 
 **patchGroupRequest** | [**PatchGroupRequest**](PatchGroupRequest.md)| Group object that is to be updated | 

### Return type

[**Group**](Group.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchGroupSyncableForChannel**
> GroupSyncableChannel patchGroupSyncableForChannel(groupId, channelId, patchGroupSyncableForTeamRequest)

Patch a GroupSyncable associated to Channel

Partially update a GroupSyncable by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final groupId = groupId_example; // String | Group GUID
final channelId = channelId_example; // String | Channel GUID
final patchGroupSyncableForTeamRequest = PatchGroupSyncableForTeamRequest(); // PatchGroupSyncableForTeamRequest | GroupSyncable object that is to be updated

try {
    final result = api_instance.patchGroupSyncableForChannel(groupId, channelId, patchGroupSyncableForTeamRequest);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->patchGroupSyncableForChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 
 **channelId** | **String**| Channel GUID | 
 **patchGroupSyncableForTeamRequest** | [**PatchGroupSyncableForTeamRequest**](PatchGroupSyncableForTeamRequest.md)| GroupSyncable object that is to be updated | 

### Return type

[**GroupSyncableChannel**](GroupSyncableChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchGroupSyncableForTeam**
> GroupSyncableTeam patchGroupSyncableForTeam(groupId, teamId, patchGroupSyncableForTeamRequest)

Patch a GroupSyncable associated to Team

Partially update a GroupSyncable by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final groupId = groupId_example; // String | Group GUID
final teamId = teamId_example; // String | Team GUID
final patchGroupSyncableForTeamRequest = PatchGroupSyncableForTeamRequest(); // PatchGroupSyncableForTeamRequest | GroupSyncable object that is to be updated

try {
    final result = api_instance.patchGroupSyncableForTeam(groupId, teamId, patchGroupSyncableForTeamRequest);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->patchGroupSyncableForTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 
 **teamId** | **String**| Team GUID | 
 **patchGroupSyncableForTeamRequest** | [**PatchGroupSyncableForTeamRequest**](PatchGroupSyncableForTeamRequest.md)| GroupSyncable object that is to be updated | 

### Return type

[**GroupSyncableTeam**](GroupSyncableTeam.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlinkGroupSyncableForChannel**
> StatusOK unlinkGroupSyncableForChannel(groupId, channelId)

Delete a link from a channel to a group

Delete a link from a channel to a group ##### Permissions If the channel is private, you must have `manage_private_channel_members` permission. Otherwise, you must have the `manage_public_channel_members` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final groupId = groupId_example; // String | Group GUID
final channelId = channelId_example; // String | Channel GUID

try {
    final result = api_instance.unlinkGroupSyncableForChannel(groupId, channelId);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->unlinkGroupSyncableForChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 
 **channelId** | **String**| Channel GUID | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlinkGroupSyncableForTeam**
> StatusOK unlinkGroupSyncableForTeam(groupId, teamId)

Delete a link from a team to a group

Delete a link from a team to a group ##### Permissions Must have `manage_team` permission.  __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final groupId = groupId_example; // String | Group GUID
final teamId = teamId_example; // String | Team GUID

try {
    final result = api_instance.unlinkGroupSyncableForTeam(groupId, teamId);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->unlinkGroupSyncableForTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| Group GUID | 
 **teamId** | **String**| Team GUID | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlinkLdapGroup**
> StatusOK unlinkLdapGroup(remoteId)

Delete a link for LDAP group

##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final remoteId = remoteId_example; // String | Group GUID

try {
    final result = api_instance.unlinkLdapGroup(remoteId);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->unlinkLdapGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **remoteId** | **String**| Group GUID | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

