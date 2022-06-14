# mattermost_api.api.MattermostTeamsApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addTeamMember**](MattermostTeamsApi.md#addteammember) | **POST** /teams/{team_id}/members | Add user to team
[**addTeamMemberFromInvite**](MattermostTeamsApi.md#addteammemberfrominvite) | **POST** /teams/members/invite | Add user to team from invite
[**addTeamMembers**](MattermostTeamsApi.md#addteammembers) | **POST** /teams/{team_id}/members/batch | Add multiple users to team
[**createTeam**](MattermostTeamsApi.md#createteam) | **POST** /teams | Create a team
[**getAllTeams**](MattermostTeamsApi.md#getallteams) | **GET** /teams | Get teams
[**getTeam**](MattermostTeamsApi.md#getteam) | **GET** /teams/{team_id} | Get a team
[**getTeamByName**](MattermostTeamsApi.md#getteambyname) | **GET** /teams/name/{name} | Get a team by name
[**getTeamIcon**](MattermostTeamsApi.md#getteamicon) | **GET** /teams/{team_id}/image | Get the team icon
[**getTeamInviteInfo**](MattermostTeamsApi.md#getteaminviteinfo) | **GET** /teams/invite/{invite_id} | Get invite info for a team
[**getTeamMember**](MattermostTeamsApi.md#getteammember) | **GET** /teams/{team_id}/members/{user_id} | Get a team member
[**getTeamMembers**](MattermostTeamsApi.md#getteammembers) | **GET** /teams/{team_id}/members | Get team members
[**getTeamMembersByIds**](MattermostTeamsApi.md#getteammembersbyids) | **POST** /teams/{team_id}/members/ids | Get team members by ids
[**getTeamMembersForUser**](MattermostTeamsApi.md#getteammembersforuser) | **GET** /users/{user_id}/teams/members | Get team members for a user
[**getTeamStats**](MattermostTeamsApi.md#getteamstats) | **GET** /teams/{team_id}/stats | Get a team stats
[**getTeamUnread**](MattermostTeamsApi.md#getteamunread) | **GET** /users/{user_id}/teams/{team_id}/unread | Get unreads for a team
[**getTeamsForUser**](MattermostTeamsApi.md#getteamsforuser) | **GET** /users/{user_id}/teams | Get a user's teams
[**getTeamsUnreadForUser**](MattermostTeamsApi.md#getteamsunreadforuser) | **GET** /users/{user_id}/teams/unread | Get team unreads for a user
[**importTeam**](MattermostTeamsApi.md#importteam) | **POST** /teams/{team_id}/import | Import a Team from other application
[**invalidateEmailInvites**](MattermostTeamsApi.md#invalidateemailinvites) | **DELETE** /teams/invites/email | Invalidate active email invitations
[**inviteGuestsToTeam**](MattermostTeamsApi.md#invitegueststoteam) | **POST** /teams/{team_id}/invite-guests/email | Invite guests to the team by email
[**inviteUsersToTeam**](MattermostTeamsApi.md#inviteuserstoteam) | **POST** /teams/{team_id}/invite/email | Invite users to the team by email
[**patchTeam**](MattermostTeamsApi.md#patchteam) | **PUT** /teams/{team_id}/patch | Patch a team
[**regenerateTeamInviteId**](MattermostTeamsApi.md#regenerateteaminviteid) | **POST** /teams/{team_id}/regenerate_invite_id | Regenerate the Invite ID from a Team
[**removeTeamIcon**](MattermostTeamsApi.md#removeteamicon) | **DELETE** /teams/{team_id}/image | Remove the team icon
[**removeTeamMember**](MattermostTeamsApi.md#removeteammember) | **DELETE** /teams/{team_id}/members/{user_id} | Remove user from team
[**restoreTeam**](MattermostTeamsApi.md#restoreteam) | **POST** /teams/{team_id}/restore | Restore a team
[**searchFiles**](MattermostTeamsApi.md#searchfiles) | **POST** /teams/{team_id}/files/search | Search files in a team
[**searchTeams**](MattermostTeamsApi.md#searchteams) | **POST** /teams/search | Search teams
[**setTeamIcon**](MattermostTeamsApi.md#setteamicon) | **POST** /teams/{team_id}/image | Sets the team icon
[**softDeleteTeam**](MattermostTeamsApi.md#softdeleteteam) | **DELETE** /teams/{team_id} | Delete a team
[**teamExists**](MattermostTeamsApi.md#teamexists) | **GET** /teams/name/{name}/exists | Check if team exists
[**teamMembersMinusGroupMembers**](MattermostTeamsApi.md#teammembersminusgroupmembers) | **GET** /teams/{team_id}/members_minus_group_members | Team members minus group members.
[**updateTeam**](MattermostTeamsApi.md#updateteam) | **PUT** /teams/{team_id} | Update a team
[**updateTeamMemberRoles**](MattermostTeamsApi.md#updateteammemberroles) | **PUT** /teams/{team_id}/members/{user_id}/roles | Update a team member roles
[**updateTeamMemberSchemeRoles**](MattermostTeamsApi.md#updateteammemberschemeroles) | **PUT** /teams/{team_id}/members/{user_id}/schemeRoles | Update the scheme-derived roles of a team member.
[**updateTeamPrivacy**](MattermostTeamsApi.md#updateteamprivacy) | **PUT** /teams/{team_id}/privacy | Update teams's privacy
[**updateTeamScheme**](MattermostTeamsApi.md#updateteamscheme) | **PUT** /teams/{team_id}/scheme | Set a team's scheme


# **addTeamMember**
> MattermostTeamMember addTeamMember(teamId, mattermostAddTeamMemberRequest)

Add user to team

Add user to the team by user_id. ##### Permissions Must be authenticated and team be open to add self. For adding another user, authenticated user must have the `add_user_to_team` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final teamId = teamId_example; // String | Team GUID
final mattermostAddTeamMemberRequest = MattermostAddTeamMemberRequest(); // MattermostAddTeamMemberRequest | 

try {
    final result = api_instance.addTeamMember(teamId, mattermostAddTeamMemberRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->addTeamMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **mattermostAddTeamMemberRequest** | [**MattermostAddTeamMemberRequest**](MattermostAddTeamMemberRequest.md)|  | 

### Return type

[**MattermostTeamMember**](MattermostTeamMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addTeamMemberFromInvite**
> MattermostTeamMember addTeamMemberFromInvite(token)

Add user to team from invite

Using either an invite id or hash/data pair from an email invite link, add a user to a team. ##### Permissions Must be authenticated. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final token = token_example; // String | Token id from the invitation

try {
    final result = api_instance.addTeamMemberFromInvite(token);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->addTeamMemberFromInvite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Token id from the invitation | 

### Return type

[**MattermostTeamMember**](MattermostTeamMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addTeamMembers**
> List<MattermostTeamMember> addTeamMembers(teamId, mattermostTeamMember, graceful)

Add multiple users to team

Add a number of users to the team by user_id. ##### Permissions Must be authenticated. Authenticated user must have the `add_user_to_team` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final teamId = teamId_example; // String | Team GUID
final mattermostTeamMember = [List<MattermostTeamMember>()]; // List<MattermostTeamMember> | 
final graceful = true; // bool | Instead of aborting the operation if a user cannot be added, return an arrray that will contain both the success and added members and the ones with error, in form of `[{\"member\": {...}, \"user_id\", \"...\", \"error\": {...}}]`

try {
    final result = api_instance.addTeamMembers(teamId, mattermostTeamMember, graceful);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->addTeamMembers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **mattermostTeamMember** | [**List<MattermostTeamMember>**](MattermostTeamMember.md)|  | 
 **graceful** | **bool**| Instead of aborting the operation if a user cannot be added, return an arrray that will contain both the success and added members and the ones with error, in form of `[{\"member\": {...}, \"user_id\", \"...\", \"error\": {...}}]` | [optional] 

### Return type

[**List<MattermostTeamMember>**](MattermostTeamMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTeam**
> MattermostTeam createTeam(mattermostCreateTeamRequest)

Create a team

Create a new team on the system. ##### Permissions Must be authenticated and have the `create_team` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final mattermostCreateTeamRequest = MattermostCreateTeamRequest(); // MattermostCreateTeamRequest | Team that is to be created

try {
    final result = api_instance.createTeam(mattermostCreateTeamRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->createTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostCreateTeamRequest** | [**MattermostCreateTeamRequest**](MattermostCreateTeamRequest.md)| Team that is to be created | 

### Return type

[**MattermostTeam**](MattermostTeam.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllTeams**
> List<MattermostTeam> getAllTeams(page, perPage, includeTotalCount, excludePolicyConstrained)

Get teams

For regular users only returns open teams. Users with the \"manage_system\" permission will return teams regardless of type. The result is based on query string parameters - page and per_page. ##### Permissions Must be authenticated. \"manage_system\" permission is required to show all teams. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of teams per page.
final includeTotalCount = true; // bool | 
final excludePolicyConstrained = true; // bool | If set to true, teams which are part of a data retention policy will be excluded. The `sysconsole_read_compliance` permission is required to use this parameter. __Minimum server version__: 5.35

try {
    final result = api_instance.getAllTeams(page, perPage, includeTotalCount, excludePolicyConstrained);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->getAllTeams: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of teams per page. | [optional] [default to 60]
 **includeTotalCount** | **bool**|  | [optional] [default to false]
 **excludePolicyConstrained** | **bool**| If set to true, teams which are part of a data retention policy will be excluded. The `sysconsole_read_compliance` permission is required to use this parameter. __Minimum server version__: 5.35 | [optional] [default to false]

### Return type

[**List<MattermostTeam>**](MattermostTeam.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTeam**
> MattermostTeam getTeam(teamId)

Get a team

Get a team on the system. ##### Permissions Must be authenticated and have the `view_team` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final teamId = teamId_example; // String | Team GUID

try {
    final result = api_instance.getTeam(teamId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->getTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 

### Return type

[**MattermostTeam**](MattermostTeam.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTeamByName**
> MattermostTeam getTeamByName(name)

Get a team by name

Get a team based on provided name string ##### Permissions Must be authenticated, team type is open and have the `view_team` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final name = name_example; // String | Team Name

try {
    final result = api_instance.getTeamByName(name);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->getTeamByName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Team Name | 

### Return type

[**MattermostTeam**](MattermostTeam.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTeamIcon**
> getTeamIcon(teamId)

Get the team icon

Get the team icon of the team.  __Minimum server version__: 4.9  ##### Permissions User must be authenticated. In addition, team must be open or the user must have the `view_team` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final teamId = teamId_example; // String | Team GUID

try {
    api_instance.getTeamIcon(teamId);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->getTeamIcon: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTeamInviteInfo**
> MattermostGetTeamInviteInfo200Response getTeamInviteInfo(inviteId)

Get invite info for a team

Get the `name`, `display_name`, `description` and `id` for a team from the invite id.  __Minimum server version__: 4.0  ##### Permissions No authentication required. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final inviteId = inviteId_example; // String | Invite id for a team

try {
    final result = api_instance.getTeamInviteInfo(inviteId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->getTeamInviteInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteId** | **String**| Invite id for a team | 

### Return type

[**MattermostGetTeamInviteInfo200Response**](MattermostGetTeamInviteInfo200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTeamMember**
> MattermostTeamMember getTeamMember(teamId, userId)

Get a team member

Get a team member on the system. ##### Permissions Must be authenticated and have the `view_team` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final teamId = teamId_example; // String | Team GUID
final userId = userId_example; // String | User GUID

try {
    final result = api_instance.getTeamMember(teamId, userId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->getTeamMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **userId** | **String**| User GUID | 

### Return type

[**MattermostTeamMember**](MattermostTeamMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTeamMembers**
> List<MattermostTeamMember> getTeamMembers(teamId, page, perPage)

Get team members

Get a page team members list based on query string parameters - team id, page and per page. ##### Permissions Must be authenticated and have the `view_team` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final teamId = teamId_example; // String | Team GUID
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of users per page.

try {
    final result = api_instance.getTeamMembers(teamId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->getTeamMembers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of users per page. | [optional] [default to 60]

### Return type

[**List<MattermostTeamMember>**](MattermostTeamMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTeamMembersByIds**
> List<MattermostTeamMember> getTeamMembersByIds(teamId, requestBody)

Get team members by ids

Get a list of team members based on a provided array of user ids. ##### Permissions Must have `view_team` permission for the team. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final teamId = teamId_example; // String | Team GUID
final requestBody = [List<String>()]; // List<String> | List of user ids

try {
    final result = api_instance.getTeamMembersByIds(teamId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->getTeamMembersByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **requestBody** | [**List<String>**](String.md)| List of user ids | 

### Return type

[**List<MattermostTeamMember>**](MattermostTeamMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTeamMembersForUser**
> List<MattermostTeamMember> getTeamMembersForUser(userId)

Get team members for a user

Get a list of team members for a user. Useful for getting the ids of teams the user is on and the roles they have in those teams. ##### Permissions Must be logged in as the user or have the `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final userId = userId_example; // String | User GUID

try {
    final result = api_instance.getTeamMembersForUser(userId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->getTeamMembersForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**List<MattermostTeamMember>**](MattermostTeamMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTeamStats**
> MattermostTeamStats getTeamStats(teamId)

Get a team stats

Get a team stats on the system. ##### Permissions Must be authenticated and have the `view_team` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final teamId = teamId_example; // String | Team GUID

try {
    final result = api_instance.getTeamStats(teamId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->getTeamStats: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 

### Return type

[**MattermostTeamStats**](MattermostTeamStats.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTeamUnread**
> MattermostTeamUnread getTeamUnread(userId, teamId)

Get unreads for a team

Get the unread mention and message counts for a team for the specified user. ##### Permissions Must be the user or have `edit_other_users` permission and have `view_team` permission for the team. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final userId = userId_example; // String | User GUID
final teamId = teamId_example; // String | Team GUID

try {
    final result = api_instance.getTeamUnread(userId, teamId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->getTeamUnread: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **teamId** | **String**| Team GUID | 

### Return type

[**MattermostTeamUnread**](MattermostTeamUnread.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTeamsForUser**
> List<MattermostTeam> getTeamsForUser(userId)

Get a user's teams

Get a list of teams that a user is on. ##### Permissions Must be authenticated as the user or have the `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final userId = userId_example; // String | User GUID

try {
    final result = api_instance.getTeamsForUser(userId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->getTeamsForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**List<MattermostTeam>**](MattermostTeam.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTeamsUnreadForUser**
> List<MattermostTeamUnread> getTeamsUnreadForUser(userId, excludeTeam, includeCollapsedThreads)

Get team unreads for a user

Get the count for unread messages and mentions in the teams the user is a member of. ##### Permissions Must be logged in. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final userId = userId_example; // String | User GUID
final excludeTeam = excludeTeam_example; // String | Optional team id to be excluded from the results
final includeCollapsedThreads = true; // bool | Boolean to determine whether the collapsed threads should be included or not

try {
    final result = api_instance.getTeamsUnreadForUser(userId, excludeTeam, includeCollapsedThreads);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->getTeamsUnreadForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **excludeTeam** | **String**| Optional team id to be excluded from the results | 
 **includeCollapsedThreads** | **bool**| Boolean to determine whether the collapsed threads should be included or not | [optional] [default to false]

### Return type

[**List<MattermostTeamUnread>**](MattermostTeamUnread.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **importTeam**
> MattermostImportTeam200Response importTeam(teamId, file, filesize, importFrom)

Import a Team from other application

Import a team into a existing team. Import users, channels, posts, hooks. ##### Permissions Must have `permission_import_team` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final teamId = teamId_example; // String | Team GUID
final file = BINARY_DATA_HERE; // MultipartFile | A file to be uploaded in zip format.
final filesize = 56; // int | The size of the zip file to be imported.
final importFrom = importFrom_example; // String | String that defines from which application the team was exported to be imported into Mattermost.

try {
    final result = api_instance.importTeam(teamId, file, filesize, importFrom);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->importTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **file** | **MultipartFile**| A file to be uploaded in zip format. | 
 **filesize** | **int**| The size of the zip file to be imported. | 
 **importFrom** | **String**| String that defines from which application the team was exported to be imported into Mattermost. | 

### Return type

[**MattermostImportTeam200Response**](MattermostImportTeam200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **invalidateEmailInvites**
> MattermostStatusOK invalidateEmailInvites()

Invalidate active email invitations

Invalidate active email invitations that have not been accepted by the user. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();

try {
    final result = api_instance.invalidateEmailInvites();
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->invalidateEmailInvites: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inviteGuestsToTeam**
> MattermostStatusOK inviteGuestsToTeam(teamId, mattermostInviteGuestsToTeamRequest)

Invite guests to the team by email

Invite guests to existing team channels usign the user's email.  The number of emails that can be sent is rate limited to 20 per hour with a burst of 20 emails. If the rate limit exceeds, the error message contains details on when to retry and when the timer will be reset.  __Minimum server version__: 5.16  ##### Permissions Must have `invite_guest` permission for the team. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final teamId = teamId_example; // String | Team GUID
final mattermostInviteGuestsToTeamRequest = MattermostInviteGuestsToTeamRequest(); // MattermostInviteGuestsToTeamRequest | Guests invite information

try {
    final result = api_instance.inviteGuestsToTeam(teamId, mattermostInviteGuestsToTeamRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->inviteGuestsToTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **mattermostInviteGuestsToTeamRequest** | [**MattermostInviteGuestsToTeamRequest**](MattermostInviteGuestsToTeamRequest.md)| Guests invite information | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inviteUsersToTeam**
> MattermostStatusOK inviteUsersToTeam(teamId, requestBody)

Invite users to the team by email

Invite users to the existing team using the user's email.  The number of emails that can be sent is rate limited to 20 per hour with a burst of 20 emails. If the rate limit exceeds, the error message contains details on when to retry and when the timer will be reset. ##### Permissions Must have `invite_user` and `add_user_to_team` permissions for the team. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final teamId = teamId_example; // String | Team GUID
final requestBody = [List<String>()]; // List<String> | List of user's email

try {
    final result = api_instance.inviteUsersToTeam(teamId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->inviteUsersToTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **requestBody** | [**List<String>**](String.md)| List of user's email | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchTeam**
> MattermostTeam patchTeam(teamId, mattermostPatchTeamRequest)

Patch a team

Partially update a team by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must have the `manage_team` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final teamId = teamId_example; // String | Team GUID
final mattermostPatchTeamRequest = MattermostPatchTeamRequest(); // MattermostPatchTeamRequest | Team object that is to be updated

try {
    final result = api_instance.patchTeam(teamId, mattermostPatchTeamRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->patchTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **mattermostPatchTeamRequest** | [**MattermostPatchTeamRequest**](MattermostPatchTeamRequest.md)| Team object that is to be updated | 

### Return type

[**MattermostTeam**](MattermostTeam.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **regenerateTeamInviteId**
> MattermostTeam regenerateTeamInviteId(teamId)

Regenerate the Invite ID from a Team

Regenerates the invite ID used in invite links of a team ##### Permissions Must be authenticated and have the `manage_team` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final teamId = teamId_example; // String | Team GUID

try {
    final result = api_instance.regenerateTeamInviteId(teamId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->regenerateTeamInviteId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 

### Return type

[**MattermostTeam**](MattermostTeam.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeTeamIcon**
> MattermostStatusOK removeTeamIcon(teamId)

Remove the team icon

Remove the team icon for the team.  __Minimum server version__: 4.10  ##### Permissions Must be authenticated and have the `manage_team` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final teamId = teamId_example; // String | Team GUID

try {
    final result = api_instance.removeTeamIcon(teamId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->removeTeamIcon: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeTeamMember**
> MattermostStatusOK removeTeamMember(teamId, userId)

Remove user from team

Delete the team member object for a user, effectively removing them from a team. ##### Permissions Must be logged in as the user or have the `remove_user_from_team` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final teamId = teamId_example; // String | Team GUID
final userId = userId_example; // String | User GUID

try {
    final result = api_instance.removeTeamMember(teamId, userId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->removeTeamMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **userId** | **String**| User GUID | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restoreTeam**
> MattermostTeam restoreTeam(teamId)

Restore a team

Restore a team that was previously soft deleted.  __Minimum server version__: 5.24  ##### Permissions Must have the `manage_team` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final teamId = teamId_example; // String | Team GUID

try {
    final result = api_instance.restoreTeam(teamId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->restoreTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 

### Return type

[**MattermostTeam**](MattermostTeam.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchFiles**
> MattermostFileInfoList searchFiles(teamId, terms, isOrSearch, timeZoneOffset, includeDeletedChannels, page, perPage)

Search files in a team

Search for files in a team based on file name, extention and file content (if file content extraction is enabled and supported for the files). __Minimum server version__: 5.34 ##### Permissions Must be authenticated and have the `view_team` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final teamId = teamId_example; // String | Team GUID
final terms = terms_example; // String | The search terms as inputed by the user. To search for files from a user include `from:someusername`, using a user's username. To search in a specific channel include `in:somechannel`, using the channel name (not the display name). To search for specific extensions included `ext:extension`.
final isOrSearch = true; // bool | Set to true if an Or search should be performed vs an And search.
final timeZoneOffset = 56; // int | Offset from UTC of user timezone for date searches.
final includeDeletedChannels = true; // bool | Set to true if deleted channels should be included in the search. (archived channels)
final page = 56; // int | The page to select. (Only works with Elasticsearch)
final perPage = 56; // int | The number of posts per page. (Only works with Elasticsearch)

try {
    final result = api_instance.searchFiles(teamId, terms, isOrSearch, timeZoneOffset, includeDeletedChannels, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->searchFiles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **terms** | **String**| The search terms as inputed by the user. To search for files from a user include `from:someusername`, using a user's username. To search in a specific channel include `in:somechannel`, using the channel name (not the display name). To search for specific extensions included `ext:extension`. | 
 **isOrSearch** | **bool**| Set to true if an Or search should be performed vs an And search. | 
 **timeZoneOffset** | **int**| Offset from UTC of user timezone for date searches. | [optional] [default to 0]
 **includeDeletedChannels** | **bool**| Set to true if deleted channels should be included in the search. (archived channels) | [optional] 
 **page** | **int**| The page to select. (Only works with Elasticsearch) | [optional] [default to 0]
 **perPage** | **int**| The number of posts per page. (Only works with Elasticsearch) | [optional] [default to 60]

### Return type

[**MattermostFileInfoList**](MattermostFileInfoList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchTeams**
> MattermostSearchTeams200Response searchTeams(mattermostSearchTeamsRequest)

Search teams

Search teams based on search term and options provided in the request body.  ##### Permissions Logged in user only shows open teams Logged in user with \"manage_system\" permission shows all teams 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final mattermostSearchTeamsRequest = MattermostSearchTeamsRequest(); // MattermostSearchTeamsRequest | Search criteria

try {
    final result = api_instance.searchTeams(mattermostSearchTeamsRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->searchTeams: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostSearchTeamsRequest** | [**MattermostSearchTeamsRequest**](MattermostSearchTeamsRequest.md)| Search criteria | 

### Return type

[**MattermostSearchTeams200Response**](MattermostSearchTeams200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setTeamIcon**
> MattermostStatusOK setTeamIcon(teamId, image)

Sets the team icon

Sets the team icon for the team.  __Minimum server version__: 4.9  ##### Permissions Must be authenticated and have the `manage_team` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final teamId = teamId_example; // String | Team GUID
final image = BINARY_DATA_HERE; // MultipartFile | The image to be uploaded

try {
    final result = api_instance.setTeamIcon(teamId, image);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->setTeamIcon: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **image** | **MultipartFile**| The image to be uploaded | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **softDeleteTeam**
> MattermostStatusOK softDeleteTeam(teamId, permanent)

Delete a team

Soft deletes a team, by marking the team as deleted in the database. Soft deleted teams will not be accessible in the user interface.  Optionally use the permanent query parameter to hard delete the team for compliance reasons. As of server version 5.0, to use this feature `ServiceSettings.EnableAPITeamDeletion` must be set to `true` in the server's configuration. ##### Permissions Must have the `manage_team` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final teamId = teamId_example; // String | Team GUID
final permanent = true; // bool | Permanently delete the team, to be used for compliance reasons only. As of server version 5.0, `ServiceSettings.EnableAPITeamDeletion` must be set to `true` in the server's configuration.

try {
    final result = api_instance.softDeleteTeam(teamId, permanent);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->softDeleteTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **permanent** | **bool**| Permanently delete the team, to be used for compliance reasons only. As of server version 5.0, `ServiceSettings.EnableAPITeamDeletion` must be set to `true` in the server's configuration. | [optional] [default to false]

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamExists**
> MattermostTeamExists teamExists(name)

Check if team exists

Check if the team exists based on a team name. ##### Permissions Must be authenticated. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final name = name_example; // String | Team Name

try {
    final result = api_instance.teamExists(name);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->teamExists: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Team Name | 

### Return type

[**MattermostTeamExists**](MattermostTeamExists.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamMembersMinusGroupMembers**
> teamMembersMinusGroupMembers(teamId, groupIds, page, perPage)

Team members minus group members.

Get the set of users who are members of the team minus the set of users who are members of the given groups. Each user object contains an array of group objects representing the group memberships for that user. Each user object contains the boolean fields `scheme_guest`, `scheme_user`, and `scheme_admin` representing the roles that user has for the given team.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.14 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final teamId = teamId_example; // String | Team GUID
final groupIds = groupIds_example; // String | A comma-separated list of group ids.
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of users per page.

try {
    api_instance.teamMembersMinusGroupMembers(teamId, groupIds, page, perPage);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->teamMembersMinusGroupMembers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
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

# **updateTeam**
> MattermostTeam updateTeam(teamId, mattermostUpdateTeamRequest)

Update a team

Update a team by providing the team object. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must have the `manage_team` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final teamId = teamId_example; // String | Team GUID
final mattermostUpdateTeamRequest = MattermostUpdateTeamRequest(); // MattermostUpdateTeamRequest | Team to update

try {
    final result = api_instance.updateTeam(teamId, mattermostUpdateTeamRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->updateTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **mattermostUpdateTeamRequest** | [**MattermostUpdateTeamRequest**](MattermostUpdateTeamRequest.md)| Team to update | 

### Return type

[**MattermostTeam**](MattermostTeam.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTeamMemberRoles**
> MattermostStatusOK updateTeamMemberRoles(teamId, userId, mattermostUpdateUserRolesRequest)

Update a team member roles

Update a team member roles. Valid team roles are \"team_user\", \"team_admin\" or both of them. Overwrites any previously assigned team roles. ##### Permissions Must be authenticated and have the `manage_team_roles` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final teamId = teamId_example; // String | Team GUID
final userId = userId_example; // String | User GUID
final mattermostUpdateUserRolesRequest = MattermostUpdateUserRolesRequest(); // MattermostUpdateUserRolesRequest | Space-delimited team roles to assign to the user

try {
    final result = api_instance.updateTeamMemberRoles(teamId, userId, mattermostUpdateUserRolesRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->updateTeamMemberRoles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **userId** | **String**| User GUID | 
 **mattermostUpdateUserRolesRequest** | [**MattermostUpdateUserRolesRequest**](MattermostUpdateUserRolesRequest.md)| Space-delimited team roles to assign to the user | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTeamMemberSchemeRoles**
> MattermostStatusOK updateTeamMemberSchemeRoles(teamId, userId, mattermostUpdateTeamMemberSchemeRolesRequest)

Update the scheme-derived roles of a team member.

Update a team member's scheme_admin/scheme_user properties. Typically this should either be `scheme_admin=false, scheme_user=true` for ordinary team member, or `scheme_admin=true, scheme_user=true` for a team admin.  __Minimum server version__: 5.0  ##### Permissions Must be authenticated and have the `manage_team_roles` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final teamId = teamId_example; // String | Team GUID
final userId = userId_example; // String | User GUID
final mattermostUpdateTeamMemberSchemeRolesRequest = MattermostUpdateTeamMemberSchemeRolesRequest(); // MattermostUpdateTeamMemberSchemeRolesRequest | Scheme properties.

try {
    final result = api_instance.updateTeamMemberSchemeRoles(teamId, userId, mattermostUpdateTeamMemberSchemeRolesRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->updateTeamMemberSchemeRoles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
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

# **updateTeamPrivacy**
> MattermostTeam updateTeamPrivacy(teamId, mattermostUpdateTeamPrivacyRequest)

Update teams's privacy

Updates team's privacy allowing changing a team from Public (open) to Private (invitation only) and back.  __Minimum server version__: 5.24  ##### Permissions `manage_team` permission for the team of the team. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final teamId = teamId_example; // String | Team GUID
final mattermostUpdateTeamPrivacyRequest = MattermostUpdateTeamPrivacyRequest(); // MattermostUpdateTeamPrivacyRequest | 

try {
    final result = api_instance.updateTeamPrivacy(teamId, mattermostUpdateTeamPrivacyRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->updateTeamPrivacy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **mattermostUpdateTeamPrivacyRequest** | [**MattermostUpdateTeamPrivacyRequest**](MattermostUpdateTeamPrivacyRequest.md)|  | 

### Return type

[**MattermostTeam**](MattermostTeam.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTeamScheme**
> MattermostStatusOK updateTeamScheme(teamId, mattermostUpdateTeamSchemeRequest)

Set a team's scheme

Set a team's scheme, more specifically sets the scheme_id value of a team record.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostTeamsApi();
final teamId = teamId_example; // String | Team GUID
final mattermostUpdateTeamSchemeRequest = MattermostUpdateTeamSchemeRequest(); // MattermostUpdateTeamSchemeRequest | Scheme GUID

try {
    final result = api_instance.updateTeamScheme(teamId, mattermostUpdateTeamSchemeRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostTeamsApi->updateTeamScheme: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **mattermostUpdateTeamSchemeRequest** | [**MattermostUpdateTeamSchemeRequest**](MattermostUpdateTeamSchemeRequest.md)| Scheme GUID | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

