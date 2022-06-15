# mattermost_api.api.MattermostUsersApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**attachDeviceId**](MattermostUsersApi.md#attachdeviceid) | **PUT** /users/sessions/device | Attach mobile device
[**autocompleteUsers**](MattermostUsersApi.md#autocompleteusers) | **GET** /users/autocomplete | Autocomplete users
[**checkUserMfa**](MattermostUsersApi.md#checkusermfa) | **POST** /users/mfa | Check MFA
[**convertBotToUser**](MattermostUsersApi.md#convertbottouser) | **POST** /bots/{bot_user_id}/convert_to_user | Convert a bot into a user
[**convertUserToBot**](MattermostUsersApi.md#convertusertobot) | **POST** /users/{user_id}/convert_to_bot | Convert a user into a bot
[**createUser**](MattermostUsersApi.md#createuser) | **POST** /users | Create a user
[**createUserAccessToken**](MattermostUsersApi.md#createuseraccesstoken) | **POST** /users/{user_id}/tokens | Create a user access token
[**deleteUser**](MattermostUsersApi.md#deleteuser) | **DELETE** /users/{user_id} | Deactivate a user account.
[**demoteUserToGuest**](MattermostUsersApi.md#demoteusertoguest) | **POST** /users/{user_id}/demote | Demote a user to a guest
[**disableUserAccessToken**](MattermostUsersApi.md#disableuseraccesstoken) | **POST** /users/tokens/disable | Disable personal access token
[**enableUserAccessToken**](MattermostUsersApi.md#enableuseraccesstoken) | **POST** /users/tokens/enable | Enable personal access token
[**generateMfaSecret**](MattermostUsersApi.md#generatemfasecret) | **POST** /users/{user_id}/mfa/generate | Generate MFA secret
[**getChannelMembersWithTeamDataForUser**](MattermostUsersApi.md#getchannelmemberswithteamdataforuser) | **GET** /users/{user_id}/channel_members | Get all channel members from all teams for a user
[**getDefaultProfileImage**](MattermostUsersApi.md#getdefaultprofileimage) | **GET** /users/{user_id}/image/default | Return user's default (generated) profile image
[**getKnownUsers**](MattermostUsersApi.md#getknownusers) | **GET** /users/known | Get user IDs of known users
[**getProfileImage**](MattermostUsersApi.md#getprofileimage) | **GET** /users/{user_id}/image | Get user's profile image
[**getSessions**](MattermostUsersApi.md#getsessions) | **GET** /users/{user_id}/sessions | Get user's sessions
[**getTotalUsersStats**](MattermostUsersApi.md#gettotalusersstats) | **GET** /users/stats | Get total count of users in the system
[**getTotalUsersStatsFiltered**](MattermostUsersApi.md#gettotalusersstatsfiltered) | **GET** /users/stats/filtered | Get total count of users in the system matching the specified filters
[**getUploadsForUser**](MattermostUsersApi.md#getuploadsforuser) | **GET** /users/{user_id}/uploads | Get uploads for a user
[**getUser**](MattermostUsersApi.md#getuser) | **GET** /users/{user_id} | Get a user
[**getUserAccessToken**](MattermostUsersApi.md#getuseraccesstoken) | **GET** /users/tokens/{token_id} | Get a user access token
[**getUserAccessTokens**](MattermostUsersApi.md#getuseraccesstokens) | **GET** /users/tokens | Get user access tokens
[**getUserAccessTokensForUser**](MattermostUsersApi.md#getuseraccesstokensforuser) | **GET** /users/{user_id}/tokens | Get user access tokens
[**getUserAudits**](MattermostUsersApi.md#getuseraudits) | **GET** /users/{user_id}/audits | Get user's audits
[**getUserByEmail**](MattermostUsersApi.md#getuserbyemail) | **GET** /users/email/{email} | Get a user by email
[**getUserByUsername**](MattermostUsersApi.md#getuserbyusername) | **GET** /users/username/{username} | Get a user by username
[**getUserTermsOfService**](MattermostUsersApi.md#getusertermsofservice) | **GET** /users/{user_id}/terms_of_service | Fetches user's latest terms of service action if the latest action was for acceptance.
[**getUsers**](MattermostUsersApi.md#getusers) | **GET** /users | Get users
[**getUsersByGroupChannelIds**](MattermostUsersApi.md#getusersbygroupchannelids) | **POST** /users/group_channels | Get users by group channels ids
[**getUsersByIds**](MattermostUsersApi.md#getusersbyids) | **POST** /users/ids | Get users by ids
[**getUsersByUsernames**](MattermostUsersApi.md#getusersbyusernames) | **POST** /users/usernames | Get users by usernames
[**login**](MattermostUsersApi.md#login) | **POST** /users/login | Login to Mattermost server
[**loginByCwsToken**](MattermostUsersApi.md#loginbycwstoken) | **POST** /users/login/cws | Auto-Login to Mattermost server using CWS token
[**logout**](MattermostUsersApi.md#logout) | **POST** /users/logout | Logout from the Mattermost server
[**migrateAuthToLdap**](MattermostUsersApi.md#migrateauthtoldap) | **POST** /users/migrate_auth/ldap | Migrate user accounts authentication type to LDAP.
[**migrateAuthToSaml**](MattermostUsersApi.md#migrateauthtosaml) | **POST** /users/migrate_auth/saml | Migrate user accounts authentication type to SAML.
[**patchUser**](MattermostUsersApi.md#patchuser) | **PUT** /users/{user_id}/patch | Patch a user
[**permanentDeleteAllUsers**](MattermostUsersApi.md#permanentdeleteallusers) | **DELETE** /users | Permanent delete all users
[**promoteGuestToUser**](MattermostUsersApi.md#promoteguesttouser) | **POST** /users/{user_id}/promote | Promote a guest to user
[**publishUserTyping**](MattermostUsersApi.md#publishusertyping) | **POST** /users/{user_id}/typing | Publish a user typing websocket event.
[**registerTermsOfServiceAction**](MattermostUsersApi.md#registertermsofserviceaction) | **POST** /users/{user_id}/terms_of_service | Records user action when they accept or decline custom terms of service
[**resetPassword**](MattermostUsersApi.md#resetpassword) | **POST** /users/password/reset | Reset password
[**revokeAllSessions**](MattermostUsersApi.md#revokeallsessions) | **POST** /users/{user_id}/sessions/revoke/all | Revoke all active sessions for a user
[**revokeSession**](MattermostUsersApi.md#revokesession) | **POST** /users/{user_id}/sessions/revoke | Revoke a user session
[**revokeSessionsFromAllUsers**](MattermostUsersApi.md#revokesessionsfromallusers) | **POST** /users/sessions/revoke/all | Revoke all sessions from all users.
[**revokeUserAccessToken**](MattermostUsersApi.md#revokeuseraccesstoken) | **POST** /users/tokens/revoke | Revoke a user access token
[**searchUserAccessTokens**](MattermostUsersApi.md#searchuseraccesstokens) | **POST** /users/tokens/search | Search tokens
[**searchUsers**](MattermostUsersApi.md#searchusers) | **POST** /users/search | Search users
[**sendPasswordResetEmail**](MattermostUsersApi.md#sendpasswordresetemail) | **POST** /users/password/reset/send | Send password reset email
[**sendVerificationEmail**](MattermostUsersApi.md#sendverificationemail) | **POST** /users/email/verify/send | Send verification email
[**setDefaultProfileImage**](MattermostUsersApi.md#setdefaultprofileimage) | **DELETE** /users/{user_id}/image | Delete user's profile image
[**setProfileImage**](MattermostUsersApi.md#setprofileimage) | **POST** /users/{user_id}/image | Set user's profile image
[**switchAccountType**](MattermostUsersApi.md#switchaccounttype) | **POST** /users/login/switch | Switch login method
[**updateUser**](MattermostUsersApi.md#updateuser) | **PUT** /users/{user_id} | Update a user
[**updateUserActive**](MattermostUsersApi.md#updateuseractive) | **PUT** /users/{user_id}/active | Update user active status
[**updateUserAuth**](MattermostUsersApi.md#updateuserauth) | **PUT** /users/{user_id}/auth | Update a user's authentication method
[**updateUserMfa**](MattermostUsersApi.md#updateusermfa) | **PUT** /users/{user_id}/mfa | Update a user's MFA
[**updateUserPassword**](MattermostUsersApi.md#updateuserpassword) | **PUT** /users/{user_id}/password | Update a user's password
[**updateUserRoles**](MattermostUsersApi.md#updateuserroles) | **PUT** /users/{user_id}/roles | Update a user's roles
[**verifyUserEmail**](MattermostUsersApi.md#verifyuseremail) | **POST** /users/email/verify | Verify user email
[**verifyUserEmailWithoutToken**](MattermostUsersApi.md#verifyuseremailwithouttoken) | **POST** /users/{user_id}/email/verify/member | Verify user email by ID


# **attachDeviceId**
> MattermostStatusOK attachDeviceId(mattermostAttachDeviceIdRequest)

Attach mobile device

Attach a mobile device id to the currently logged in session. This will enable push notifications for a user, if configured by the server. ##### Permissions Must be authenticated. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final mattermostAttachDeviceIdRequest = MattermostAttachDeviceIdRequest(); // MattermostAttachDeviceIdRequest | 

try {
    final result = await client.users.attachDeviceId(mattermostAttachDeviceIdRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->attachDeviceId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostAttachDeviceIdRequest** | [**MattermostAttachDeviceIdRequest**](MattermostAttachDeviceIdRequest.md)|  | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocompleteUsers**
> MattermostUserAutocomplete autocompleteUsers(name, teamId, channelId, limit)

Autocomplete users

Get a list of users for the purpose of autocompleting based on the provided search term. Specify a combination of `team_id` and `channel_id` to filter results further. ##### Permissions Requires an active session and `view_team` and `read_channel` on any teams or channels used to filter the results further. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final name = name_example; // String | Username, nickname first name or last name
final teamId = teamId_example; // String | Team ID
final channelId = channelId_example; // String | Channel ID
final limit = 56; // int | The maximum number of users to return in each subresult  __Available as of server version 5.6. Defaults to `100` if not provided or on an earlier server version.__ 

try {
    final result = await client.users.autocompleteUsers(name, teamId, channelId, limit);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->autocompleteUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Username, nickname first name or last name | 
 **teamId** | **String**| Team ID | [optional] 
 **channelId** | **String**| Channel ID | [optional] 
 **limit** | **int**| The maximum number of users to return in each subresult  __Available as of server version 5.6. Defaults to `100` if not provided or on an earlier server version.__  | [optional] [default to 100]

### Return type

[**MattermostUserAutocomplete**](MattermostUserAutocomplete.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkUserMfa**
> MattermostCheckUserMfa200Response checkUserMfa(mattermostCheckUserMfaRequest)

Check MFA

Check if a user has multi-factor authentication active on their account by providing a login id. Used to check whether an MFA code needs to be provided when logging in. ##### Permissions No permission required. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final mattermostCheckUserMfaRequest = MattermostCheckUserMfaRequest(); // MattermostCheckUserMfaRequest | 

try {
    final result = await client.users.checkUserMfa(mattermostCheckUserMfaRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->checkUserMfa: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostCheckUserMfaRequest** | [**MattermostCheckUserMfaRequest**](MattermostCheckUserMfaRequest.md)|  | 

### Return type

[**MattermostCheckUserMfa200Response**](MattermostCheckUserMfa200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertBotToUser**
> MattermostStatusOK convertBotToUser(botUserId, mattermostConvertBotToUserRequest, setSystemAdmin)

Convert a bot into a user

Convert a bot into a user.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final botUserId = botUserId_example; // String | Bot user ID
final mattermostConvertBotToUserRequest = MattermostConvertBotToUserRequest(); // MattermostConvertBotToUserRequest | Data to be used in the user creation
final setSystemAdmin = true; // bool | Whether to give the user the system admin role.

try {
    final result = await client.users.convertBotToUser(botUserId, mattermostConvertBotToUserRequest, setSystemAdmin);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->convertBotToUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **botUserId** | **String**| Bot user ID | 
 **mattermostConvertBotToUserRequest** | [**MattermostConvertBotToUserRequest**](MattermostConvertBotToUserRequest.md)| Data to be used in the user creation | 
 **setSystemAdmin** | **bool**| Whether to give the user the system admin role. | [optional] [default to false]

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertUserToBot**
> MattermostStatusOK convertUserToBot(userId)

Convert a user into a bot

Convert a user into a bot.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID

try {
    final result = await client.users.convertUserToBot(userId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->convertUserToBot: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUser**
> MattermostUser createUser(mattermostCreateUserRequest, t, iid)

Create a user

Create a new user on the system. Password is required for email login. For other authentication types such as LDAP or SAML, auth_data and auth_service fields are required. ##### Permissions No permission required for creating email/username accounts on an open server. Auth Token is required for other authentication types such as LDAP or SAML. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final mattermostCreateUserRequest = MattermostCreateUserRequest(); // MattermostCreateUserRequest | User object to be created
final t = t_example; // String | Token id from an email invitation
final iid = iid_example; // String | Token id from an invitation link

try {
    final result = await client.users.createUser(mattermostCreateUserRequest, t, iid);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->createUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostCreateUserRequest** | [**MattermostCreateUserRequest**](MattermostCreateUserRequest.md)| User object to be created | 
 **t** | **String**| Token id from an email invitation | [optional] 
 **iid** | **String**| Token id from an invitation link | [optional] 

### Return type

[**MattermostUser**](MattermostUser.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUserAccessToken**
> MattermostUserAccessToken createUserAccessToken(userId, mattermostCreateUserAccessTokenRequest)

Create a user access token

Generate a user access token that can be used to authenticate with the Mattermost REST API.  __Minimum server version__: 4.1  ##### Permissions Must have `create_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID
final mattermostCreateUserAccessTokenRequest = MattermostCreateUserAccessTokenRequest(); // MattermostCreateUserAccessTokenRequest | 

try {
    final result = await client.users.createUserAccessToken(userId, mattermostCreateUserAccessTokenRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->createUserAccessToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mattermostCreateUserAccessTokenRequest** | [**MattermostCreateUserAccessTokenRequest**](MattermostCreateUserAccessTokenRequest.md)|  | 

### Return type

[**MattermostUserAccessToken**](MattermostUserAccessToken.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUser**
> MattermostStatusOK deleteUser(userId)

Deactivate a user account.

Deactivates the user and revokes all its sessions by archiving its user object.  As of server version 5.28, optionally use the `permanent=true` query parameter to permanently delete the user for compliance reasons. To use this feature `ServiceSettings.EnableAPIUserDeletion` must be set to `true` in the server's configuration. ##### Permissions Must be logged in as the user being deactivated or have the `edit_other_users` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID

try {
    final result = await client.users.deleteUser(userId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->deleteUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **demoteUserToGuest**
> MattermostStatusOK demoteUserToGuest(userId)

Demote a user to a guest

Convert a regular user into a guest. This will convert the user into a guest for the whole system while retaining their existing team and channel memberships.  __Minimum server version__: 5.16  ##### Permissions Must be logged in as the user or have the `demote_to_guest` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID

try {
    final result = await client.users.demoteUserToGuest(userId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->demoteUserToGuest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disableUserAccessToken**
> MattermostStatusOK disableUserAccessToken(mattermostDisableUserAccessTokenRequest)

Disable personal access token

Disable a personal access token and delete any sessions using the token. The token can be re-enabled using `/users/tokens/enable`.  __Minimum server version__: 4.4  ##### Permissions Must have `revoke_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final mattermostDisableUserAccessTokenRequest = MattermostDisableUserAccessTokenRequest(); // MattermostDisableUserAccessTokenRequest | 

try {
    final result = await client.users.disableUserAccessToken(mattermostDisableUserAccessTokenRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->disableUserAccessToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostDisableUserAccessTokenRequest** | [**MattermostDisableUserAccessTokenRequest**](MattermostDisableUserAccessTokenRequest.md)|  | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enableUserAccessToken**
> MattermostStatusOK enableUserAccessToken(mattermostEnableUserAccessTokenRequest)

Enable personal access token

Re-enable a personal access token that has been disabled.  __Minimum server version__: 4.4  ##### Permissions Must have `create_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final mattermostEnableUserAccessTokenRequest = MattermostEnableUserAccessTokenRequest(); // MattermostEnableUserAccessTokenRequest | 

try {
    final result = await client.users.enableUserAccessToken(mattermostEnableUserAccessTokenRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->enableUserAccessToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostEnableUserAccessTokenRequest** | [**MattermostEnableUserAccessTokenRequest**](MattermostEnableUserAccessTokenRequest.md)|  | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateMfaSecret**
> MattermostGenerateMfaSecret200Response generateMfaSecret(userId)

Generate MFA secret

Generates an multi-factor authentication secret for a user and returns it as a string and as base64 encoded QR code image. ##### Permissions Must be logged in as the user or have the `edit_other_users` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID

try {
    final result = await client.users.generateMfaSecret(userId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->generateMfaSecret: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**MattermostGenerateMfaSecret200Response**](MattermostGenerateMfaSecret200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelMembersWithTeamDataForUser**
> List<MattermostChannelMemberWithTeamData> getChannelMembersWithTeamDataForUser(userId, page, pageSize)

Get all channel members from all teams for a user

Get all channel members from all teams for a user.  __Minimum server version__: 6.2.0  ##### Permissions Logged in as the user, or have `edit_other_users` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | The ID of the user. This can also be \"me\" which will point to the current user.
final page = 56; // int | Page specifies which part of the results to return, by PageSize.
final pageSize = 56; // int | PageSize specifies the size of the returned chunk of results.

try {
    final result = await client.users.getChannelMembersWithTeamDataForUser(userId, page, pageSize);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->getChannelMembersWithTeamDataForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The ID of the user. This can also be \"me\" which will point to the current user. | 
 **page** | **int**| Page specifies which part of the results to return, by PageSize. | [optional] 
 **pageSize** | **int**| PageSize specifies the size of the returned chunk of results. | [optional] 

### Return type

[**List<MattermostChannelMemberWithTeamData>**](MattermostChannelMemberWithTeamData.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDefaultProfileImage**
> getDefaultProfileImage(userId)

Return user's default (generated) profile image

Returns the default (generated) user profile image based on user_id string parameter. ##### Permissions Must be logged in. __Minimum server version__: 5.5 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID

try {
    await client.users.getDefaultProfileImage(userId);
} catch (e) {
    print('Exception when calling MattermostUsersApi->getDefaultProfileImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getKnownUsers**
> MattermostUsersStats getKnownUsers()

Get user IDs of known users

Get the list of user IDs of users with any direct relationship with a user. That means any user sharing any channel, including direct and group channels. ##### Permissions Must be authenticated.  __Minimum server version__: 5.23 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users


try {
    final result = await client.users.getKnownUsers();
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->getKnownUsers: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostUsersStats**](MattermostUsersStats.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProfileImage**
> getProfileImage(userId, q)

Get user's profile image

Get a user's profile image based on user_id string parameter. ##### Permissions Must be logged in. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID
final q = 8.14; // num | Not used by the server. Clients can pass in the last picture update time of the user to potentially take advantage of caching

try {
    await client.users.getProfileImage(userId, q);
} catch (e) {
    print('Exception when calling MattermostUsersApi->getProfileImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **q** | **num**| Not used by the server. Clients can pass in the last picture update time of the user to potentially take advantage of caching | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSessions**
> List<MattermostSession> getSessions(userId)

Get user's sessions

Get a list of sessions by providing the user GUID. Sensitive information will be sanitized out. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID

try {
    final result = await client.users.getSessions(userId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->getSessions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**List<MattermostSession>**](MattermostSession.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTotalUsersStats**
> MattermostUsersStats getTotalUsersStats()

Get total count of users in the system

Get a total count of users in the system. ##### Permissions Must be authenticated. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users


try {
    final result = await client.users.getTotalUsersStats();
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->getTotalUsersStats: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostUsersStats**](MattermostUsersStats.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTotalUsersStatsFiltered**
> MattermostUsersStats getTotalUsersStatsFiltered(inTeam, inChannel, includeDeleted, includeBots, roles, channelRoles, teamRoles)

Get total count of users in the system matching the specified filters

Get a count of users in the system matching the specified filters.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final inTeam = inTeam_example; // String | The ID of the team to get user stats for.
final inChannel = inChannel_example; // String | The ID of the channel to get user stats for.
final includeDeleted = true; // bool | If deleted accounts should be included in the count.
final includeBots = true; // bool | If bot accounts should be included in the count.
final roles = roles_example; // String | Comma separated string used to filter users based on any of the specified system roles  Example: `?roles=system_admin,system_user` will include users that are either system admins or system users 
final channelRoles = channelRoles_example; // String | Comma separated string used to filter users based on any of the specified channel roles, can only be used in conjunction with `in_channel`  Example: `?in_channel=4eb6axxw7fg3je5iyasnfudc5y&channel_roles=channel_user` will include users that are only channel users and not admins or guests 
final teamRoles = teamRoles_example; // String | Comma separated string used to filter users based on any of the specified team roles, can only be used in conjunction with `in_team`  Example: `?in_team=4eb6axxw7fg3je5iyasnfudc5y&team_roles=team_user` will include users that are only team users and not admins or guests 

try {
    final result = await client.users.getTotalUsersStatsFiltered(inTeam, inChannel, includeDeleted, includeBots, roles, channelRoles, teamRoles);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->getTotalUsersStatsFiltered: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inTeam** | **String**| The ID of the team to get user stats for. | [optional] 
 **inChannel** | **String**| The ID of the channel to get user stats for. | [optional] 
 **includeDeleted** | **bool**| If deleted accounts should be included in the count. | [optional] 
 **includeBots** | **bool**| If bot accounts should be included in the count. | [optional] 
 **roles** | **String**| Comma separated string used to filter users based on any of the specified system roles  Example: `?roles=system_admin,system_user` will include users that are either system admins or system users  | [optional] 
 **channelRoles** | **String**| Comma separated string used to filter users based on any of the specified channel roles, can only be used in conjunction with `in_channel`  Example: `?in_channel=4eb6axxw7fg3je5iyasnfudc5y&channel_roles=channel_user` will include users that are only channel users and not admins or guests  | [optional] 
 **teamRoles** | **String**| Comma separated string used to filter users based on any of the specified team roles, can only be used in conjunction with `in_team`  Example: `?in_team=4eb6axxw7fg3je5iyasnfudc5y&team_roles=team_user` will include users that are only team users and not admins or guests  | [optional] 

### Return type

[**MattermostUsersStats**](MattermostUsersStats.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUploadsForUser**
> List<MattermostUploadSession> getUploadsForUser(userId)

Get uploads for a user

Gets all the upload sessions belonging to a user.  __Minimum server version__: 5.28  ##### Permissions Must be logged in as the user who created the upload sessions. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | The ID of the user. This can also be \"me\" which will point to the current user.

try {
    final result = await client.users.getUploadsForUser(userId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->getUploadsForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The ID of the user. This can also be \"me\" which will point to the current user. | 

### Return type

[**List<MattermostUploadSession>**](MattermostUploadSession.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
> MattermostUser getUser(userId)

Get a user

Get a user a object. Sensitive information will be sanitized out. ##### Permissions Requires an active session but no other permissions. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID. This can also be \"me\" which will point to the current user.

try {
    final result = await client.users.getUser(userId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->getUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID. This can also be \"me\" which will point to the current user. | 

### Return type

[**MattermostUser**](MattermostUser.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserAccessToken**
> MattermostUserAccessTokenSanitized getUserAccessToken(tokenId)

Get a user access token

Get a user access token. Does not include the actual authentication token.  __Minimum server version__: 4.1  ##### Permissions Must have `read_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final tokenId = tokenId_example; // String | User access token GUID

try {
    final result = await client.users.getUserAccessToken(tokenId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->getUserAccessToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenId** | **String**| User access token GUID | 

### Return type

[**MattermostUserAccessTokenSanitized**](MattermostUserAccessTokenSanitized.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserAccessTokens**
> List<MattermostUserAccessTokenSanitized> getUserAccessTokens(page, perPage)

Get user access tokens

Get a page of user access tokens for users on the system. Does not include the actual authentication tokens. Use query parameters for paging.  __Minimum server version__: 4.7  ##### Permissions Must have `manage_system` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final page = 56; // int | The page to select.
final perPage = 56; // int | The number of tokens per page.

try {
    final result = await client.users.getUserAccessTokens(page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->getUserAccessTokens: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of tokens per page. | [optional] [default to 60]

### Return type

[**List<MattermostUserAccessTokenSanitized>**](MattermostUserAccessTokenSanitized.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserAccessTokensForUser**
> List<MattermostUserAccessTokenSanitized> getUserAccessTokensForUser(userId, page, perPage)

Get user access tokens

Get a list of user access tokens for a user. Does not include the actual authentication tokens. Use query parameters for paging.  __Minimum server version__: 4.1  ##### Permissions Must have `read_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of tokens per page.

try {
    final result = await client.users.getUserAccessTokensForUser(userId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->getUserAccessTokensForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of tokens per page. | [optional] [default to 60]

### Return type

[**List<MattermostUserAccessTokenSanitized>**](MattermostUserAccessTokenSanitized.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserAudits**
> List<MattermostAudit> getUserAudits(userId)

Get user's audits

Get a list of audit by providing the user GUID. ##### Permissions Must be logged in as the user or have the `edit_other_users` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID

try {
    final result = await client.users.getUserAudits(userId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->getUserAudits: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**List<MattermostAudit>**](MattermostAudit.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserByEmail**
> MattermostUser getUserByEmail(email)

Get a user by email

Get a user object by providing a user email. Sensitive information will be sanitized out. ##### Permissions Requires an active session and for the current session to be able to view another user's email based on the server's privacy settings. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final email = email_example; // String | User Email

try {
    final result = await client.users.getUserByEmail(email);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->getUserByEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| User Email | 

### Return type

[**MattermostUser**](MattermostUser.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserByUsername**
> MattermostUser getUserByUsername(username)

Get a user by username

Get a user object by providing a username. Sensitive information will be sanitized out. ##### Permissions Requires an active session but no other permissions. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final username = username_example; // String | Username

try {
    final result = await client.users.getUserByUsername(username);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->getUserByUsername: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| Username | 

### Return type

[**MattermostUser**](MattermostUser.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserTermsOfService**
> MattermostUserTermsOfService getUserTermsOfService(userId)

Fetches user's latest terms of service action if the latest action was for acceptance.

Will be deprecated in v6.0 Fetches user's latest terms of service action if the latest action was for acceptance.  __Minimum server version__: 5.6 ##### Permissions Must be logged in as the user being acted on. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID

try {
    final result = await client.users.getUserTermsOfService(userId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->getUserTermsOfService: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**MattermostUserTermsOfService**](MattermostUserTermsOfService.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsers**
> List<MattermostUser> getUsers(page, perPage, inTeam, notInTeam, inChannel, notInChannel, inGroup, groupConstrained, withoutTeam, active, inactive, role, sort, roles, channelRoles, teamRoles)

Get users

Get a page of a list of users. Based on query string parameters, select users from a team, channel, or select users not in a specific channel.  Since server version 4.0, some basic sorting is available using the `sort` query parameter. Sorting is currently only supported when selecting users on a team. ##### Permissions Requires an active session and (if specified) membership to the channel or team being selected from. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final page = 56; // int | The page to select.
final perPage = 56; // int | The number of users per page. There is a maximum limit of 200 users per page.
final inTeam = inTeam_example; // String | The ID of the team to get users for.
final notInTeam = notInTeam_example; // String | The ID of the team to exclude users for. Must not be used with \"in_team\" query parameter.
final inChannel = inChannel_example; // String | The ID of the channel to get users for.
final notInChannel = notInChannel_example; // String | The ID of the channel to exclude users for. Must be used with \"in_channel\" query parameter.
final inGroup = inGroup_example; // String | The ID of the group to get users for. Must have `manage_system` permission.
final groupConstrained = true; // bool | When used with `not_in_channel` or `not_in_team`, returns only the users that are allowed to join the channel or team based on its group constrains.
final withoutTeam = true; // bool | Whether or not to list users that are not on any team. This option takes precendence over `in_team`, `in_channel`, and `not_in_channel`.
final active = true; // bool | Whether or not to list only users that are active. This option cannot be used along with the `inactive` option.
final inactive = true; // bool | Whether or not to list only users that are deactivated. This option cannot be used along with the `active` option.
final role = role_example; // String | Returns users that have this role.
final sort = sort_example; // String | Sort is only available in conjunction with certain options below. The paging parameter is also always available.  ##### `in_team` Can be \"\", \"last_activity_at\" or \"create_at\". When left blank, sorting is done by username. __Minimum server version__: 4.0 ##### `in_channel` Can be \"\", \"status\". When left blank, sorting is done by username. `status` will sort by User's current status (Online, Away, DND, Offline), then by Username. __Minimum server version__: 4.7 
final roles = roles_example; // String | Comma separated string used to filter users based on any of the specified system roles  Example: `?roles=system_admin,system_user` will return users that are either system admins or system users  __Minimum server version__: 5.26 
final channelRoles = channelRoles_example; // String | Comma separated string used to filter users based on any of the specified channel roles, can only be used in conjunction with `in_channel`  Example: `?in_channel=4eb6axxw7fg3je5iyasnfudc5y&channel_roles=channel_user` will return users that are only channel users and not admins or guests  __Minimum server version__: 5.26 
final teamRoles = teamRoles_example; // String | Comma separated string used to filter users based on any of the specified team roles, can only be used in conjunction with `in_team`  Example: `?in_team=4eb6axxw7fg3je5iyasnfudc5y&team_roles=team_user` will return users that are only team users and not admins or guests  __Minimum server version__: 5.26 

try {
    final result = await client.users.getUsers(page, perPage, inTeam, notInTeam, inChannel, notInChannel, inGroup, groupConstrained, withoutTeam, active, inactive, role, sort, roles, channelRoles, teamRoles);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->getUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of users per page. There is a maximum limit of 200 users per page. | [optional] [default to 60]
 **inTeam** | **String**| The ID of the team to get users for. | [optional] 
 **notInTeam** | **String**| The ID of the team to exclude users for. Must not be used with \"in_team\" query parameter. | [optional] 
 **inChannel** | **String**| The ID of the channel to get users for. | [optional] 
 **notInChannel** | **String**| The ID of the channel to exclude users for. Must be used with \"in_channel\" query parameter. | [optional] 
 **inGroup** | **String**| The ID of the group to get users for. Must have `manage_system` permission. | [optional] 
 **groupConstrained** | **bool**| When used with `not_in_channel` or `not_in_team`, returns only the users that are allowed to join the channel or team based on its group constrains. | [optional] 
 **withoutTeam** | **bool**| Whether or not to list users that are not on any team. This option takes precendence over `in_team`, `in_channel`, and `not_in_channel`. | [optional] 
 **active** | **bool**| Whether or not to list only users that are active. This option cannot be used along with the `inactive` option. | [optional] 
 **inactive** | **bool**| Whether or not to list only users that are deactivated. This option cannot be used along with the `active` option. | [optional] 
 **role** | **String**| Returns users that have this role. | [optional] 
 **sort** | **String**| Sort is only available in conjunction with certain options below. The paging parameter is also always available.  ##### `in_team` Can be \"\", \"last_activity_at\" or \"create_at\". When left blank, sorting is done by username. __Minimum server version__: 4.0 ##### `in_channel` Can be \"\", \"status\". When left blank, sorting is done by username. `status` will sort by User's current status (Online, Away, DND, Offline), then by Username. __Minimum server version__: 4.7  | [optional] 
 **roles** | **String**| Comma separated string used to filter users based on any of the specified system roles  Example: `?roles=system_admin,system_user` will return users that are either system admins or system users  __Minimum server version__: 5.26  | [optional] 
 **channelRoles** | **String**| Comma separated string used to filter users based on any of the specified channel roles, can only be used in conjunction with `in_channel`  Example: `?in_channel=4eb6axxw7fg3je5iyasnfudc5y&channel_roles=channel_user` will return users that are only channel users and not admins or guests  __Minimum server version__: 5.26  | [optional] 
 **teamRoles** | **String**| Comma separated string used to filter users based on any of the specified team roles, can only be used in conjunction with `in_team`  Example: `?in_team=4eb6axxw7fg3je5iyasnfudc5y&team_roles=team_user` will return users that are only team users and not admins or guests  __Minimum server version__: 5.26  | [optional] 

### Return type

[**List<MattermostUser>**](MattermostUser.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersByGroupChannelIds**
> MattermostGetUsersByGroupChannelIds200Response getUsersByGroupChannelIds(requestBody)

Get users by group channels ids

Get an object containing a key per group channel id in the query and its value as a list of users members of that group channel.  The user must be a member of the group ids in the query, or they will be omitted from the response. ##### Permissions Requires an active session but no other permissions.  __Minimum server version__: 5.14 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final requestBody = [List<String>()]; // List<String> | List of group channel ids

try {
    final result = await client.users.getUsersByGroupChannelIds(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->getUsersByGroupChannelIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)| List of group channel ids | 

### Return type

[**MattermostGetUsersByGroupChannelIds200Response**](MattermostGetUsersByGroupChannelIds200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersByIds**
> List<MattermostUser> getUsersByIds(requestBody, since)

Get users by ids

Get a list of users based on a provided list of user ids. ##### Permissions Requires an active session but no other permissions. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final requestBody = [List<String>()]; // List<String> | List of user ids
final since = 56; // int | Only return users that have been modified since the given Unix timestamp (in milliseconds).  __Minimum server version__: 5.14 

try {
    final result = await client.users.getUsersByIds(requestBody, since);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->getUsersByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)| List of user ids | 
 **since** | **int**| Only return users that have been modified since the given Unix timestamp (in milliseconds).  __Minimum server version__: 5.14  | [optional] 

### Return type

[**List<MattermostUser>**](MattermostUser.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersByUsernames**
> List<MattermostUser> getUsersByUsernames(requestBody)

Get users by usernames

Get a list of users based on a provided list of usernames. ##### Permissions Requires an active session but no other permissions. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final requestBody = [List<String>()]; // List<String> | List of usernames

try {
    final result = await client.users.getUsersByUsernames(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->getUsersByUsernames: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)| List of usernames | 

### Return type

[**List<MattermostUser>**](MattermostUser.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login**
> MattermostUser login(mattermostLoginRequest)

Login to Mattermost server

##### Permissions No permission required 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final mattermostLoginRequest = MattermostLoginRequest(); // MattermostLoginRequest | User authentication object

try {
    final result = await client.users.login(mattermostLoginRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->login: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostLoginRequest** | [**MattermostLoginRequest**](MattermostLoginRequest.md)| User authentication object | 

### Return type

[**MattermostUser**](MattermostUser.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **loginByCwsToken**
> loginByCwsToken(mattermostLoginByCwsTokenRequest)

Auto-Login to Mattermost server using CWS token

CWS stands for Customer Web Server which is the cloud service used to manage cloud instances. ##### Permissions A Cloud license is required 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final mattermostLoginByCwsTokenRequest = MattermostLoginByCwsTokenRequest(); // MattermostLoginByCwsTokenRequest | User authentication object

try {
    await client.users.loginByCwsToken(mattermostLoginByCwsTokenRequest);
} catch (e) {
    print('Exception when calling MattermostUsersApi->loginByCwsToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostLoginByCwsTokenRequest** | [**MattermostLoginByCwsTokenRequest**](MattermostLoginByCwsTokenRequest.md)| User authentication object | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout**
> MattermostStatusOK logout()

Logout from the Mattermost server

##### Permissions An active session is required 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users


try {
    final result = await client.users.logout();
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->logout: $e\n');
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

# **migrateAuthToLdap**
> migrateAuthToLdap(mattermostMigrateAuthToLdapRequest)

Migrate user accounts authentication type to LDAP.

Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to LDAP. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final mattermostMigrateAuthToLdapRequest = MattermostMigrateAuthToLdapRequest(); // MattermostMigrateAuthToLdapRequest | 

try {
    await client.users.migrateAuthToLdap(mattermostMigrateAuthToLdapRequest);
} catch (e) {
    print('Exception when calling MattermostUsersApi->migrateAuthToLdap: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostMigrateAuthToLdapRequest** | [**MattermostMigrateAuthToLdapRequest**](MattermostMigrateAuthToLdapRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrateAuthToSaml**
> migrateAuthToSaml(mattermostMigrateAuthToSamlRequest)

Migrate user accounts authentication type to SAML.

Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to SAML. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final mattermostMigrateAuthToSamlRequest = MattermostMigrateAuthToSamlRequest(); // MattermostMigrateAuthToSamlRequest | 

try {
    await client.users.migrateAuthToSaml(mattermostMigrateAuthToSamlRequest);
} catch (e) {
    print('Exception when calling MattermostUsersApi->migrateAuthToSaml: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostMigrateAuthToSamlRequest** | [**MattermostMigrateAuthToSamlRequest**](MattermostMigrateAuthToSamlRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUser**
> MattermostUser patchUser(userId, mattermostPatchUserRequest)

Patch a user

Partially update a user by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID
final mattermostPatchUserRequest = MattermostPatchUserRequest(); // MattermostPatchUserRequest | User object that is to be updated

try {
    final result = await client.users.patchUser(userId, mattermostPatchUserRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->patchUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mattermostPatchUserRequest** | [**MattermostPatchUserRequest**](MattermostPatchUserRequest.md)| User object that is to be updated | 

### Return type

[**MattermostUser**](MattermostUser.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **permanentDeleteAllUsers**
> permanentDeleteAllUsers()

Permanent delete all users

Permanently deletes all users and all their related information, including posts.  __Minimum server version__: 5.26.0  __Local mode only__: This endpoint is only available through [local mode](https://docs.mattermost.com/administration/mmctl-cli-tool.html#local-mode). 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users


try {
    await client.users.permanentDeleteAllUsers();
} catch (e) {
    print('Exception when calling MattermostUsersApi->permanentDeleteAllUsers: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **promoteGuestToUser**
> MattermostStatusOK promoteGuestToUser(userId)

Promote a guest to user

Convert a guest into a regular user. This will convert the guest into a user for the whole system while retaining any team and channel memberships and automatically joining them to the default channels.  __Minimum server version__: 5.16  ##### Permissions Must be logged in as the user or have the `promote_guest` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID

try {
    final result = await client.users.promoteGuestToUser(userId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->promoteGuestToUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **publishUserTyping**
> publishUserTyping(userId, mattermostPublishUserTypingRequest)

Publish a user typing websocket event.

Notify users in the given channel via websocket that the given user is typing. __Minimum server version__: 5.26 ##### Permissions Must have `manage_system` permission to publish for any user other than oneself. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID
final mattermostPublishUserTypingRequest = MattermostPublishUserTypingRequest(); // MattermostPublishUserTypingRequest | 

try {
    await client.users.publishUserTyping(userId, mattermostPublishUserTypingRequest);
} catch (e) {
    print('Exception when calling MattermostUsersApi->publishUserTyping: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mattermostPublishUserTypingRequest** | [**MattermostPublishUserTypingRequest**](MattermostPublishUserTypingRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerTermsOfServiceAction**
> MattermostStatusOK registerTermsOfServiceAction(userId, mattermostRegisterTermsOfServiceActionRequest)

Records user action when they accept or decline custom terms of service

Records user action when they accept or decline custom terms of service. Records the action in audit table. Updates user's last accepted terms of service ID if they accepted it.  __Minimum server version__: 5.4 ##### Permissions Must be logged in as the user being acted on. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID
final mattermostRegisterTermsOfServiceActionRequest = MattermostRegisterTermsOfServiceActionRequest(); // MattermostRegisterTermsOfServiceActionRequest | terms of service details

try {
    final result = await client.users.registerTermsOfServiceAction(userId, mattermostRegisterTermsOfServiceActionRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->registerTermsOfServiceAction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mattermostRegisterTermsOfServiceActionRequest** | [**MattermostRegisterTermsOfServiceActionRequest**](MattermostRegisterTermsOfServiceActionRequest.md)| terms of service details | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetPassword**
> MattermostStatusOK resetPassword(mattermostResetPasswordRequest)

Reset password

Update the password for a user using a one-use, timed recovery code tied to the user's account. Only works for non-SSO users. ##### Permissions No permissions required. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final mattermostResetPasswordRequest = MattermostResetPasswordRequest(); // MattermostResetPasswordRequest | 

try {
    final result = await client.users.resetPassword(mattermostResetPasswordRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->resetPassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostResetPasswordRequest** | [**MattermostResetPasswordRequest**](MattermostResetPasswordRequest.md)|  | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeAllSessions**
> MattermostStatusOK revokeAllSessions(userId)

Revoke all active sessions for a user

Revokes all user sessions from the provided user id and session id strings. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. __Minimum server version__: 4.4 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID

try {
    final result = await client.users.revokeAllSessions(userId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->revokeAllSessions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeSession**
> MattermostStatusOK revokeSession(userId, mattermostRevokeSessionRequest)

Revoke a user session

Revokes a user session from the provided user id and session id strings. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID
final mattermostRevokeSessionRequest = MattermostRevokeSessionRequest(); // MattermostRevokeSessionRequest | 

try {
    final result = await client.users.revokeSession(userId, mattermostRevokeSessionRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->revokeSession: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mattermostRevokeSessionRequest** | [**MattermostRevokeSessionRequest**](MattermostRevokeSessionRequest.md)|  | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeSessionsFromAllUsers**
> revokeSessionsFromAllUsers()

Revoke all sessions from all users.

For any session currently on the server (including admin) it will be revoked. Clients will be notified to log out users.  __Minimum server version__: 5.14  ##### Permissions Must have `manage_system` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users


try {
    await client.users.revokeSessionsFromAllUsers();
} catch (e) {
    print('Exception when calling MattermostUsersApi->revokeSessionsFromAllUsers: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeUserAccessToken**
> MattermostStatusOK revokeUserAccessToken(mattermostRevokeUserAccessTokenRequest)

Revoke a user access token

Revoke a user access token and delete any sessions using the token.  __Minimum server version__: 4.1  ##### Permissions Must have `revoke_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final mattermostRevokeUserAccessTokenRequest = MattermostRevokeUserAccessTokenRequest(); // MattermostRevokeUserAccessTokenRequest | 

try {
    final result = await client.users.revokeUserAccessToken(mattermostRevokeUserAccessTokenRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->revokeUserAccessToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostRevokeUserAccessTokenRequest** | [**MattermostRevokeUserAccessTokenRequest**](MattermostRevokeUserAccessTokenRequest.md)|  | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchUserAccessTokens**
> List<MattermostUserAccessTokenSanitized> searchUserAccessTokens(mattermostSearchUserAccessTokensRequest)

Search tokens

Get a list of tokens based on search criteria provided in the request body. Searches are done against the token id, user id and username.  __Minimum server version__: 4.7  ##### Permissions Must have `manage_system` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final mattermostSearchUserAccessTokensRequest = MattermostSearchUserAccessTokensRequest(); // MattermostSearchUserAccessTokensRequest | Search criteria

try {
    final result = await client.users.searchUserAccessTokens(mattermostSearchUserAccessTokensRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->searchUserAccessTokens: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostSearchUserAccessTokensRequest** | [**MattermostSearchUserAccessTokensRequest**](MattermostSearchUserAccessTokensRequest.md)| Search criteria | 

### Return type

[**List<MattermostUserAccessTokenSanitized>**](MattermostUserAccessTokenSanitized.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchUsers**
> List<MattermostUser> searchUsers(mattermostSearchUsersRequest)

Search users

Get a list of users based on search criteria provided in the request body. Searches are typically done against username, full name, nickname and email unless otherwise configured by the server. ##### Permissions Requires an active session and `read_channel` and/or `view_team` permissions for any channels or teams specified in the request body. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final mattermostSearchUsersRequest = MattermostSearchUsersRequest(); // MattermostSearchUsersRequest | Search criteria

try {
    final result = await client.users.searchUsers(mattermostSearchUsersRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->searchUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostSearchUsersRequest** | [**MattermostSearchUsersRequest**](MattermostSearchUsersRequest.md)| Search criteria | 

### Return type

[**List<MattermostUser>**](MattermostUser.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendPasswordResetEmail**
> MattermostStatusOK sendPasswordResetEmail(mattermostSendPasswordResetEmailRequest)

Send password reset email

Send an email containing a link for resetting the user's password. The link will contain a one-use, timed recovery code tied to the user's account. Only works for non-SSO users. ##### Permissions No permissions required. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final mattermostSendPasswordResetEmailRequest = MattermostSendPasswordResetEmailRequest(); // MattermostSendPasswordResetEmailRequest | 

try {
    final result = await client.users.sendPasswordResetEmail(mattermostSendPasswordResetEmailRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->sendPasswordResetEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostSendPasswordResetEmailRequest** | [**MattermostSendPasswordResetEmailRequest**](MattermostSendPasswordResetEmailRequest.md)|  | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendVerificationEmail**
> MattermostStatusOK sendVerificationEmail(mattermostSendVerificationEmailRequest)

Send verification email

Send an email with a verification link to a user that has an email matching the one in the request body. This endpoint will return success even if the email does not match any users on the system. ##### Permissions No permissions required. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final mattermostSendVerificationEmailRequest = MattermostSendVerificationEmailRequest(); // MattermostSendVerificationEmailRequest | 

try {
    final result = await client.users.sendVerificationEmail(mattermostSendVerificationEmailRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->sendVerificationEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostSendVerificationEmailRequest** | [**MattermostSendVerificationEmailRequest**](MattermostSendVerificationEmailRequest.md)|  | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setDefaultProfileImage**
> MattermostStatusOK setDefaultProfileImage(userId)

Delete user's profile image

Delete user's profile image and reset to default image based on user_id string parameter. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. __Minimum server version__: 5.5 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID

try {
    final result = await client.users.setDefaultProfileImage(userId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->setDefaultProfileImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setProfileImage**
> MattermostStatusOK setProfileImage(userId, image)

Set user's profile image

Set a user's profile image based on user_id string parameter. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID
final image = BINARY_DATA_HERE; // MultipartFile | The image to be uploaded

try {
    final result = await client.users.setProfileImage(userId, image);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->setProfileImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **image** | **MultipartFile**| The image to be uploaded | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **switchAccountType**
> MattermostSwitchAccountType200Response switchAccountType(mattermostSwitchAccountTypeRequest)

Switch login method

Switch a user's login method from using email to OAuth2/SAML/LDAP or back to email. When switching to OAuth2/SAML, account switching is not complete until the user follows the returned link and completes any steps on the OAuth2/SAML service provider.  To switch from email to OAuth2/SAML, specify `current_service`, `new_service`, `email` and `password`.  To switch from OAuth2/SAML to email, specify `current_service`, `new_service`, `email` and `new_password`.  To switch from email to LDAP/AD, specify `current_service`, `new_service`, `email`, `password`, `ldap_ip` and `new_password` (this is the user's LDAP password).  To switch from LDAP/AD to email, specify `current_service`, `new_service`, `ldap_ip`, `password` (this is the user's LDAP password), `email`  and `new_password`.  Additionally, specify `mfa_code` when trying to switch an account on LDAP/AD or email that has MFA activated.  ##### Permissions No current authentication required except when switching from OAuth2/SAML to email. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final mattermostSwitchAccountTypeRequest = MattermostSwitchAccountTypeRequest(); // MattermostSwitchAccountTypeRequest | 

try {
    final result = await client.users.switchAccountType(mattermostSwitchAccountTypeRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->switchAccountType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostSwitchAccountTypeRequest** | [**MattermostSwitchAccountTypeRequest**](MattermostSwitchAccountTypeRequest.md)|  | 

### Return type

[**MattermostSwitchAccountType200Response**](MattermostSwitchAccountType200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUser**
> MattermostUser updateUser(userId, mattermostUpdateUserRequest)

Update a user

Update a user by providing the user object. The fields that can be updated are defined in the request body, all other provided fields will be ignored. Any fields not included in the request body will be set to null or reverted to default values. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID
final mattermostUpdateUserRequest = MattermostUpdateUserRequest(); // MattermostUpdateUserRequest | User object that is to be updated

try {
    final result = await client.users.updateUser(userId, mattermostUpdateUserRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->updateUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mattermostUpdateUserRequest** | [**MattermostUpdateUserRequest**](MattermostUpdateUserRequest.md)| User object that is to be updated | 

### Return type

[**MattermostUser**](MattermostUser.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserActive**
> MattermostStatusOK updateUserActive(userId, mattermostUpdateUserActiveRequest)

Update user active status

Update user active or inactive status.  __Since server version 4.6, users using a SSO provider to login can be activated or deactivated with this endpoint. However, if their activation status in Mattermost does not reflect their status in the SSO provider, the next synchronization or login by that user will reset the activation status to that of their account in the SSO provider. Server versions 4.5 and before do not allow activation or deactivation of SSO users from this endpoint.__ ##### Permissions User can deactivate themselves. User with `manage_system` permission can activate or deactivate a user. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID
final mattermostUpdateUserActiveRequest = MattermostUpdateUserActiveRequest(); // MattermostUpdateUserActiveRequest | Use `true` to set the user active, `false` for inactive

try {
    final result = await client.users.updateUserActive(userId, mattermostUpdateUserActiveRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->updateUserActive: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mattermostUpdateUserActiveRequest** | [**MattermostUpdateUserActiveRequest**](MattermostUpdateUserActiveRequest.md)| Use `true` to set the user active, `false` for inactive | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserAuth**
> MattermostUserAuthData updateUserAuth(userId, mattermostUserAuthData)

Update a user's authentication method

Updates a user's authentication method. This can be used to change them to/from LDAP authentication for example.  __Minimum server version__: 4.6 ##### Permissions Must have the `edit_other_users` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID
final mattermostUserAuthData = MattermostUserAuthData(); // MattermostUserAuthData | 

try {
    final result = await client.users.updateUserAuth(userId, mattermostUserAuthData);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->updateUserAuth: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mattermostUserAuthData** | [**MattermostUserAuthData**](MattermostUserAuthData.md)|  | 

### Return type

[**MattermostUserAuthData**](MattermostUserAuthData.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserMfa**
> MattermostStatusOK updateUserMfa(userId, mattermostUpdateUserMfaRequest)

Update a user's MFA

Activates multi-factor authentication for the user if `activate` is true and a valid `code` is provided. If activate is false, then `code` is not required and multi-factor authentication is disabled for the user. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID
final mattermostUpdateUserMfaRequest = MattermostUpdateUserMfaRequest(); // MattermostUpdateUserMfaRequest | 

try {
    final result = await client.users.updateUserMfa(userId, mattermostUpdateUserMfaRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->updateUserMfa: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mattermostUpdateUserMfaRequest** | [**MattermostUpdateUserMfaRequest**](MattermostUpdateUserMfaRequest.md)|  | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserPassword**
> MattermostStatusOK updateUserPassword(userId, mattermostUpdateUserPasswordRequest)

Update a user's password

Update a user's password. New password must meet password policy set by server configuration. Current password is required if you're updating your own password. ##### Permissions Must be logged in as the user the password is being changed for or have `manage_system` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID
final mattermostUpdateUserPasswordRequest = MattermostUpdateUserPasswordRequest(); // MattermostUpdateUserPasswordRequest | 

try {
    final result = await client.users.updateUserPassword(userId, mattermostUpdateUserPasswordRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->updateUserPassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mattermostUpdateUserPasswordRequest** | [**MattermostUpdateUserPasswordRequest**](MattermostUpdateUserPasswordRequest.md)|  | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserRoles**
> MattermostStatusOK updateUserRoles(userId, mattermostUpdateUserRolesRequest)

Update a user's roles

Update a user's system-level roles. Valid user roles are \"system_user\", \"system_admin\" or both of them. Overwrites any previously assigned system-level roles. ##### Permissions Must have the `manage_roles` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID
final mattermostUpdateUserRolesRequest = MattermostUpdateUserRolesRequest(); // MattermostUpdateUserRolesRequest | Space-delimited system roles to assign to the user

try {
    final result = await client.users.updateUserRoles(userId, mattermostUpdateUserRolesRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->updateUserRoles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mattermostUpdateUserRolesRequest** | [**MattermostUpdateUserRolesRequest**](MattermostUpdateUserRolesRequest.md)| Space-delimited system roles to assign to the user | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyUserEmail**
> MattermostStatusOK verifyUserEmail(mattermostVerifyUserEmailRequest)

Verify user email

Verify the email used by a user to sign-up their account with. ##### Permissions No permissions required. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final mattermostVerifyUserEmailRequest = MattermostVerifyUserEmailRequest(); // MattermostVerifyUserEmailRequest | 

try {
    final result = await client.users.verifyUserEmail(mattermostVerifyUserEmailRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->verifyUserEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostVerifyUserEmailRequest** | [**MattermostVerifyUserEmailRequest**](MattermostVerifyUserEmailRequest.md)|  | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyUserEmailWithoutToken**
> MattermostUser verifyUserEmailWithoutToken(userId)

Verify user email by ID

Verify the email used by a user without a token.  __Minimum server version__: 5.24  ##### Permissions  Must have `manage_system` permission. 

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

// Then, access MattermostUsersApi api instance
// final MattermostUsersApi api_instance = client.users

final userId = userId_example; // String | User GUID

try {
    final result = await client.users.verifyUserEmailWithoutToken(userId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsersApi->verifyUserEmailWithoutToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**MattermostUser**](MattermostUser.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

