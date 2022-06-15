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
> MmStatusOK attachDeviceId(mmAttachDeviceIdRequest)

Attach mobile device

Attach a mobile device id to the currently logged in session. This will enable push notifications for a user, if configured by the server. ##### Permissions Must be authenticated. 

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


final MmAttachDeviceIdRequest mmAttachDeviceIdRequest = MmAttachDeviceIdRequest(); // MmAttachDeviceIdRequest | 

try {
  final MmStatusOK? result = await client.users.attachDeviceId(mmAttachDeviceIdRequest); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->attachDeviceId: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmAttachDeviceIdRequest** | [**MmAttachDeviceIdRequest**](MmAttachDeviceIdRequest.md)|  | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **autocompleteUsers**
> MmUserAutocomplete autocompleteUsers(name, teamId, channelId, limit)

Autocomplete users

Get a list of users for the purpose of autocompleting based on the provided search term. Specify a combination of `team_id` and `channel_id` to filter results further. ##### Permissions Requires an active session and `view_team` and `read_channel` on any teams or channels used to filter the results further. 

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


final String name = 'name_example'; // String | Username, nickname first name or last name
final String teamId = 'teamId_example'; // String | Team ID
final String channelId = 'channelId_example'; // String | Channel ID
final int limit = 56; // int | The maximum number of users to return in each subresult  __Available as of server version 5.6. Defaults to `100` if not provided or on an earlier server version.__ 

try {
  final MmUserAutocomplete? result = await client.users.autocompleteUsers(name, teamId, channelId, limit); // await the Future<MmUserAutocomplete?>
  print(result ?? 'resolved to null');
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

[**MmUserAutocomplete**](MmUserAutocomplete.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **checkUserMfa**
> MmCheckUserMfa200Response checkUserMfa(mmCheckUserMfaRequest)

Check MFA

Check if a user has multi-factor authentication active on their account by providing a login id. Used to check whether an MFA code needs to be provided when logging in. ##### Permissions No permission required. 

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


final MmCheckUserMfaRequest mmCheckUserMfaRequest = MmCheckUserMfaRequest(); // MmCheckUserMfaRequest | 

try {
  final MmCheckUserMfa200Response? result = await client.users.checkUserMfa(mmCheckUserMfaRequest); // await the Future<MmCheckUserMfa200Response?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->checkUserMfa: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmCheckUserMfaRequest** | [**MmCheckUserMfaRequest**](MmCheckUserMfaRequest.md)|  | 

### Return type

[**MmCheckUserMfa200Response**](MmCheckUserMfa200Response.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **convertBotToUser**
> MmStatusOK convertBotToUser(botUserId, mmConvertBotToUserRequest, setSystemAdmin)

Convert a bot into a user

Convert a bot into a user.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 

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


final String botUserId = 'botUserId_example'; // String | Bot user ID
final MmConvertBotToUserRequest mmConvertBotToUserRequest = MmConvertBotToUserRequest(); // MmConvertBotToUserRequest | Data to be used in the user creation
final bool setSystemAdmin = true; // bool | Whether to give the user the system admin role.

try {
  final MmStatusOK? result = await client.users.convertBotToUser(botUserId, mmConvertBotToUserRequest, setSystemAdmin); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->convertBotToUser: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **botUserId** | **String**| Bot user ID | 
 **mmConvertBotToUserRequest** | [**MmConvertBotToUserRequest**](MmConvertBotToUserRequest.md)| Data to be used in the user creation | 
 **setSystemAdmin** | **bool**| Whether to give the user the system admin role. | [optional] [default to false]

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **convertUserToBot**
> MmStatusOK convertUserToBot(userId)

Convert a user into a bot

Convert a user into a bot.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 

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
  final MmStatusOK? result = await client.users.convertUserToBot(userId); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->convertUserToBot: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **createUser**
> MmUser createUser(mmCreateUserRequest, t, iid)

Create a user

Create a new user on the system. Password is required for email login. For other authentication types such as LDAP or SAML, auth_data and auth_service fields are required. ##### Permissions No permission required for creating email/username accounts on an open server. Auth Token is required for other authentication types such as LDAP or SAML. 

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


final MmCreateUserRequest mmCreateUserRequest = MmCreateUserRequest(); // MmCreateUserRequest | User object to be created
final String t = 't_example'; // String | Token id from an email invitation
final String iid = 'iid_example'; // String | Token id from an invitation link

try {
  final MmUser? result = await client.users.createUser(mmCreateUserRequest, t, iid); // await the Future<MmUser?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->createUser: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmCreateUserRequest** | [**MmCreateUserRequest**](MmCreateUserRequest.md)| User object to be created | 
 **t** | **String**| Token id from an email invitation | [optional] 
 **iid** | **String**| Token id from an invitation link | [optional] 

### Return type

[**MmUser**](MmUser.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **createUserAccessToken**
> MmUserAccessToken createUserAccessToken(userId, mmCreateUserAccessTokenRequest)

Create a user access token

Generate a user access token that can be used to authenticate with the Mattermost REST API.  __Minimum server version__: 4.1  ##### Permissions Must have `create_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 

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
final MmCreateUserAccessTokenRequest mmCreateUserAccessTokenRequest = MmCreateUserAccessTokenRequest(); // MmCreateUserAccessTokenRequest | 

try {
  final MmUserAccessToken? result = await client.users.createUserAccessToken(userId, mmCreateUserAccessTokenRequest); // await the Future<MmUserAccessToken?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->createUserAccessToken: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mmCreateUserAccessTokenRequest** | [**MmCreateUserAccessTokenRequest**](MmCreateUserAccessTokenRequest.md)|  | 

### Return type

[**MmUserAccessToken**](MmUserAccessToken.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **deleteUser**
> MmStatusOK deleteUser(userId)

Deactivate a user account.

Deactivates the user and revokes all its sessions by archiving its user object.  As of server version 5.28, optionally use the `permanent=true` query parameter to permanently delete the user for compliance reasons. To use this feature `ServiceSettings.EnableAPIUserDeletion` must be set to `true` in the server's configuration. ##### Permissions Must be logged in as the user being deactivated or have the `edit_other_users` permission. 

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
  final MmStatusOK? result = await client.users.deleteUser(userId); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->deleteUser: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **demoteUserToGuest**
> MmStatusOK demoteUserToGuest(userId)

Demote a user to a guest

Convert a regular user into a guest. This will convert the user into a guest for the whole system while retaining their existing team and channel memberships.  __Minimum server version__: 5.16  ##### Permissions Must be logged in as the user or have the `demote_to_guest` permission. 

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
  final MmStatusOK? result = await client.users.demoteUserToGuest(userId); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->demoteUserToGuest: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **disableUserAccessToken**
> MmStatusOK disableUserAccessToken(mmDisableUserAccessTokenRequest)

Disable personal access token

Disable a personal access token and delete any sessions using the token. The token can be re-enabled using `/users/tokens/enable`.  __Minimum server version__: 4.4  ##### Permissions Must have `revoke_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 

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


final MmDisableUserAccessTokenRequest mmDisableUserAccessTokenRequest = MmDisableUserAccessTokenRequest(); // MmDisableUserAccessTokenRequest | 

try {
  final MmStatusOK? result = await client.users.disableUserAccessToken(mmDisableUserAccessTokenRequest); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->disableUserAccessToken: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmDisableUserAccessTokenRequest** | [**MmDisableUserAccessTokenRequest**](MmDisableUserAccessTokenRequest.md)|  | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **enableUserAccessToken**
> MmStatusOK enableUserAccessToken(mmEnableUserAccessTokenRequest)

Enable personal access token

Re-enable a personal access token that has been disabled.  __Minimum server version__: 4.4  ##### Permissions Must have `create_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 

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


final MmEnableUserAccessTokenRequest mmEnableUserAccessTokenRequest = MmEnableUserAccessTokenRequest(); // MmEnableUserAccessTokenRequest | 

try {
  final MmStatusOK? result = await client.users.enableUserAccessToken(mmEnableUserAccessTokenRequest); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->enableUserAccessToken: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmEnableUserAccessTokenRequest** | [**MmEnableUserAccessTokenRequest**](MmEnableUserAccessTokenRequest.md)|  | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **generateMfaSecret**
> MmGenerateMfaSecret200Response generateMfaSecret(userId)

Generate MFA secret

Generates an multi-factor authentication secret for a user and returns it as a string and as base64 encoded QR code image. ##### Permissions Must be logged in as the user or have the `edit_other_users` permission. 

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
  final MmGenerateMfaSecret200Response? result = await client.users.generateMfaSecret(userId); // await the Future<MmGenerateMfaSecret200Response?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->generateMfaSecret: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**MmGenerateMfaSecret200Response**](MmGenerateMfaSecret200Response.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getChannelMembersWithTeamDataForUser**
> List<MmChannelMemberWithTeamData> getChannelMembersWithTeamDataForUser(userId, page, pageSize)

Get all channel members from all teams for a user

Get all channel members from all teams for a user.  __Minimum server version__: 6.2.0  ##### Permissions Logged in as the user, or have `edit_other_users` permission. 

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


final String userId = 'userId_example'; // String | The ID of the user. This can also be \"me\" which will point to the current user.
final int page = 56; // int | Page specifies which part of the results to return, by PageSize.
final int pageSize = 56; // int | PageSize specifies the size of the returned chunk of results.

try {
  final List&lt;MmChannelMemberWithTeamData&gt;? result = await client.users.getChannelMembersWithTeamDataForUser(userId, page, pageSize); // await the Future<List&lt;MmChannelMemberWithTeamData&gt;?>
  print(result ?? 'resolved to null');
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

[**List<MmChannelMemberWithTeamData>**](MmChannelMemberWithTeamData.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getDefaultProfileImage**
> getDefaultProfileImage(userId)

Return user's default (generated) profile image

Returns the default (generated) user profile image based on user_id string parameter. ##### Permissions Must be logged in. __Minimum server version__: 5.5 

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

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getKnownUsers**
> MmUsersStats getKnownUsers()

Get user IDs of known users

Get the list of user IDs of users with any direct relationship with a user. That means any user sharing any channel, including direct and group channels. ##### Permissions Must be authenticated.  __Minimum server version__: 5.23 

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



try {
  final MmUsersStats? result = await client.users.getKnownUsers(); // await the Future<MmUsersStats?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->getKnownUsers: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MmUsersStats**](MmUsersStats.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getProfileImage**
> getProfileImage(userId, q)

Get user's profile image

Get a user's profile image based on user_id string parameter. ##### Permissions Must be logged in. 

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
final num q = 8.14; // num | Not used by the server. Clients can pass in the last picture update time of the user to potentially take advantage of caching

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

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getSessions**
> List<MmSession> getSessions(userId)

Get user's sessions

Get a list of sessions by providing the user GUID. Sensitive information will be sanitized out. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

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
  final List&lt;MmSession&gt;? result = await client.users.getSessions(userId); // await the Future<List&lt;MmSession&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->getSessions: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**List<MmSession>**](MmSession.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getTotalUsersStats**
> MmUsersStats getTotalUsersStats()

Get total count of users in the system

Get a total count of users in the system. ##### Permissions Must be authenticated. 

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



try {
  final MmUsersStats? result = await client.users.getTotalUsersStats(); // await the Future<MmUsersStats?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->getTotalUsersStats: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MmUsersStats**](MmUsersStats.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getTotalUsersStatsFiltered**
> MmUsersStats getTotalUsersStatsFiltered(inTeam, inChannel, includeDeleted, includeBots, roles, channelRoles, teamRoles)

Get total count of users in the system matching the specified filters

Get a count of users in the system matching the specified filters.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 

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


final String inTeam = 'inTeam_example'; // String | The ID of the team to get user stats for.
final String inChannel = 'inChannel_example'; // String | The ID of the channel to get user stats for.
final bool includeDeleted = true; // bool | If deleted accounts should be included in the count.
final bool includeBots = true; // bool | If bot accounts should be included in the count.
final String roles = 'roles_example'; // String | Comma separated string used to filter users based on any of the specified system roles  Example: `?roles=system_admin,system_user` will include users that are either system admins or system users 
final String channelRoles = 'channelRoles_example'; // String | Comma separated string used to filter users based on any of the specified channel roles, can only be used in conjunction with `in_channel`  Example: `?in_channel=4eb6axxw7fg3je5iyasnfudc5y&channel_roles=channel_user` will include users that are only channel users and not admins or guests 
final String teamRoles = 'teamRoles_example'; // String | Comma separated string used to filter users based on any of the specified team roles, can only be used in conjunction with `in_team`  Example: `?in_team=4eb6axxw7fg3je5iyasnfudc5y&team_roles=team_user` will include users that are only team users and not admins or guests 

try {
  final MmUsersStats? result = await client.users.getTotalUsersStatsFiltered(inTeam, inChannel, includeDeleted, includeBots, roles, channelRoles, teamRoles); // await the Future<MmUsersStats?>
  print(result ?? 'resolved to null');
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

[**MmUsersStats**](MmUsersStats.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getUploadsForUser**
> List<MmUploadSession> getUploadsForUser(userId)

Get uploads for a user

Gets all the upload sessions belonging to a user.  __Minimum server version__: 5.28  ##### Permissions Must be logged in as the user who created the upload sessions. 

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


final String userId = 'userId_example'; // String | The ID of the user. This can also be \"me\" which will point to the current user.

try {
  final List&lt;MmUploadSession&gt;? result = await client.users.getUploadsForUser(userId); // await the Future<List&lt;MmUploadSession&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->getUploadsForUser: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The ID of the user. This can also be \"me\" which will point to the current user. | 

### Return type

[**List<MmUploadSession>**](MmUploadSession.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getUser**
> MmUser getUser(userId)

Get a user

Get a user a object. Sensitive information will be sanitized out. ##### Permissions Requires an active session but no other permissions. 

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


final String userId = 'userId_example'; // String | User GUID. This can also be \"me\" which will point to the current user.

try {
  final MmUser? result = await client.users.getUser(userId); // await the Future<MmUser?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->getUser: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID. This can also be \"me\" which will point to the current user. | 

### Return type

[**MmUser**](MmUser.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getUserAccessToken**
> MmUserAccessTokenSanitized getUserAccessToken(tokenId)

Get a user access token

Get a user access token. Does not include the actual authentication token.  __Minimum server version__: 4.1  ##### Permissions Must have `read_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 

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


final String tokenId = 'tokenId_example'; // String | User access token GUID

try {
  final MmUserAccessTokenSanitized? result = await client.users.getUserAccessToken(tokenId); // await the Future<MmUserAccessTokenSanitized?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->getUserAccessToken: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenId** | **String**| User access token GUID | 

### Return type

[**MmUserAccessTokenSanitized**](MmUserAccessTokenSanitized.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getUserAccessTokens**
> List<MmUserAccessTokenSanitized> getUserAccessTokens(page, perPage)

Get user access tokens

Get a page of user access tokens for users on the system. Does not include the actual authentication tokens. Use query parameters for paging.  __Minimum server version__: 4.7  ##### Permissions Must have `manage_system` permission. 

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


final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of tokens per page.

try {
  final List&lt;MmUserAccessTokenSanitized&gt;? result = await client.users.getUserAccessTokens(page, perPage); // await the Future<List&lt;MmUserAccessTokenSanitized&gt;?>
  print(result ?? 'resolved to null');
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

[**List<MmUserAccessTokenSanitized>**](MmUserAccessTokenSanitized.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getUserAccessTokensForUser**
> List<MmUserAccessTokenSanitized> getUserAccessTokensForUser(userId, page, perPage)

Get user access tokens

Get a list of user access tokens for a user. Does not include the actual authentication tokens. Use query parameters for paging.  __Minimum server version__: 4.1  ##### Permissions Must have `read_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 

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
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of tokens per page.

try {
  final List&lt;MmUserAccessTokenSanitized&gt;? result = await client.users.getUserAccessTokensForUser(userId, page, perPage); // await the Future<List&lt;MmUserAccessTokenSanitized&gt;?>
  print(result ?? 'resolved to null');
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

[**List<MmUserAccessTokenSanitized>**](MmUserAccessTokenSanitized.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getUserAudits**
> List<MmAudit> getUserAudits(userId)

Get user's audits

Get a list of audit by providing the user GUID. ##### Permissions Must be logged in as the user or have the `edit_other_users` permission. 

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
  final List&lt;MmAudit&gt;? result = await client.users.getUserAudits(userId); // await the Future<List&lt;MmAudit&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->getUserAudits: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**List<MmAudit>**](MmAudit.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getUserByEmail**
> MmUser getUserByEmail(email)

Get a user by email

Get a user object by providing a user email. Sensitive information will be sanitized out. ##### Permissions Requires an active session and for the current session to be able to view another user's email based on the server's privacy settings. 

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


final String email = 'email_example'; // String | User Email

try {
  final MmUser? result = await client.users.getUserByEmail(email); // await the Future<MmUser?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->getUserByEmail: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| User Email | 

### Return type

[**MmUser**](MmUser.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getUserByUsername**
> MmUser getUserByUsername(username)

Get a user by username

Get a user object by providing a username. Sensitive information will be sanitized out. ##### Permissions Requires an active session but no other permissions. 

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


final String username = 'username_example'; // String | Username

try {
  final MmUser? result = await client.users.getUserByUsername(username); // await the Future<MmUser?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->getUserByUsername: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| Username | 

### Return type

[**MmUser**](MmUser.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getUserTermsOfService**
> MmUserTermsOfService getUserTermsOfService(userId)

Fetches user's latest terms of service action if the latest action was for acceptance.

Will be deprecated in v6.0 Fetches user's latest terms of service action if the latest action was for acceptance.  __Minimum server version__: 5.6 ##### Permissions Must be logged in as the user being acted on. 

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
  final MmUserTermsOfService? result = await client.users.getUserTermsOfService(userId); // await the Future<MmUserTermsOfService?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->getUserTermsOfService: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**MmUserTermsOfService**](MmUserTermsOfService.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getUsers**
> List<MmUser> getUsers(page, perPage, inTeam, notInTeam, inChannel, notInChannel, inGroup, groupConstrained, withoutTeam, active, inactive, role, sort, roles, channelRoles, teamRoles)

Get users

Get a page of a list of users. Based on query string parameters, select users from a team, channel, or select users not in a specific channel.  Since server version 4.0, some basic sorting is available using the `sort` query parameter. Sorting is currently only supported when selecting users on a team. ##### Permissions Requires an active session and (if specified) membership to the channel or team being selected from. 

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


final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of users per page. There is a maximum limit of 200 users per page.
final String inTeam = 'inTeam_example'; // String | The ID of the team to get users for.
final String notInTeam = 'notInTeam_example'; // String | The ID of the team to exclude users for. Must not be used with \"in_team\" query parameter.
final String inChannel = 'inChannel_example'; // String | The ID of the channel to get users for.
final String notInChannel = 'notInChannel_example'; // String | The ID of the channel to exclude users for. Must be used with \"in_channel\" query parameter.
final String inGroup = 'inGroup_example'; // String | The ID of the group to get users for. Must have `manage_system` permission.
final bool groupConstrained = true; // bool | When used with `not_in_channel` or `not_in_team`, returns only the users that are allowed to join the channel or team based on its group constrains.
final bool withoutTeam = true; // bool | Whether or not to list users that are not on any team. This option takes precendence over `in_team`, `in_channel`, and `not_in_channel`.
final bool active = true; // bool | Whether or not to list only users that are active. This option cannot be used along with the `inactive` option.
final bool inactive = true; // bool | Whether or not to list only users that are deactivated. This option cannot be used along with the `active` option.
final String role = 'role_example'; // String | Returns users that have this role.
final String sort = 'sort_example'; // String | Sort is only available in conjunction with certain options below. The paging parameter is also always available.  ##### `in_team` Can be \"\", \"last_activity_at\" or \"create_at\". When left blank, sorting is done by username. __Minimum server version__: 4.0 ##### `in_channel` Can be \"\", \"status\". When left blank, sorting is done by username. `status` will sort by User's current status (Online, Away, DND, Offline), then by Username. __Minimum server version__: 4.7 
final String roles = 'roles_example'; // String | Comma separated string used to filter users based on any of the specified system roles  Example: `?roles=system_admin,system_user` will return users that are either system admins or system users  __Minimum server version__: 5.26 
final String channelRoles = 'channelRoles_example'; // String | Comma separated string used to filter users based on any of the specified channel roles, can only be used in conjunction with `in_channel`  Example: `?in_channel=4eb6axxw7fg3je5iyasnfudc5y&channel_roles=channel_user` will return users that are only channel users and not admins or guests  __Minimum server version__: 5.26 
final String teamRoles = 'teamRoles_example'; // String | Comma separated string used to filter users based on any of the specified team roles, can only be used in conjunction with `in_team`  Example: `?in_team=4eb6axxw7fg3je5iyasnfudc5y&team_roles=team_user` will return users that are only team users and not admins or guests  __Minimum server version__: 5.26 

try {
  final List&lt;MmUser&gt;? result = await client.users.getUsers(page, perPage, inTeam, notInTeam, inChannel, notInChannel, inGroup, groupConstrained, withoutTeam, active, inactive, role, sort, roles, channelRoles, teamRoles); // await the Future<List&lt;MmUser&gt;?>
  print(result ?? 'resolved to null');
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

[**List<MmUser>**](MmUser.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getUsersByGroupChannelIds**
> MmGetUsersByGroupChannelIds200Response getUsersByGroupChannelIds(requestBody)

Get users by group channels ids

Get an object containing a key per group channel id in the query and its value as a list of users members of that group channel.  The user must be a member of the group ids in the query, or they will be omitted from the response. ##### Permissions Requires an active session but no other permissions.  __Minimum server version__: 5.14 

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


final List&lt;String&gt; requestBody = [List<String>()]; // List<String> | List of group channel ids

try {
  final MmGetUsersByGroupChannelIds200Response? result = await client.users.getUsersByGroupChannelIds(requestBody); // await the Future<MmGetUsersByGroupChannelIds200Response?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->getUsersByGroupChannelIds: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)| List of group channel ids | 

### Return type

[**MmGetUsersByGroupChannelIds200Response**](MmGetUsersByGroupChannelIds200Response.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getUsersByIds**
> List<MmUser> getUsersByIds(requestBody, since)

Get users by ids

Get a list of users based on a provided list of user ids. ##### Permissions Requires an active session but no other permissions. 

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


final List&lt;String&gt; requestBody = [List<String>()]; // List<String> | List of user ids
final int since = 56; // int | Only return users that have been modified since the given Unix timestamp (in milliseconds).  __Minimum server version__: 5.14 

try {
  final List&lt;MmUser&gt;? result = await client.users.getUsersByIds(requestBody, since); // await the Future<List&lt;MmUser&gt;?>
  print(result ?? 'resolved to null');
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

[**List<MmUser>**](MmUser.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getUsersByUsernames**
> List<MmUser> getUsersByUsernames(requestBody)

Get users by usernames

Get a list of users based on a provided list of usernames. ##### Permissions Requires an active session but no other permissions. 

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


final List&lt;String&gt; requestBody = [List<String>()]; // List<String> | List of usernames

try {
  final List&lt;MmUser&gt;? result = await client.users.getUsersByUsernames(requestBody); // await the Future<List&lt;MmUser&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->getUsersByUsernames: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)| List of usernames | 

### Return type

[**List<MmUser>**](MmUser.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **login**
> MmUser login(mmLoginRequest)

Login to Mattermost server

##### Permissions No permission required 

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


final MmLoginRequest mmLoginRequest = MmLoginRequest(); // MmLoginRequest | User authentication object

try {
  final MmUser? result = await client.users.login(mmLoginRequest); // await the Future<MmUser?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->login: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmLoginRequest** | [**MmLoginRequest**](MmLoginRequest.md)| User authentication object | 

### Return type

[**MmUser**](MmUser.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **loginByCwsToken**
> loginByCwsToken(mmLoginByCwsTokenRequest)

Auto-Login to Mattermost server using CWS token

CWS stands for Customer Web Server which is the cloud service used to manage cloud instances. ##### Permissions A Cloud license is required 

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


final MmLoginByCwsTokenRequest mmLoginByCwsTokenRequest = MmLoginByCwsTokenRequest(); // MmLoginByCwsTokenRequest | User authentication object

try {
  await client.users.loginByCwsToken(mmLoginByCwsTokenRequest); 
} catch (e) {
  print('Exception when calling MattermostUsersApi->loginByCwsToken: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmLoginByCwsTokenRequest** | [**MmLoginByCwsTokenRequest**](MmLoginByCwsTokenRequest.md)| User authentication object | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **logout**
> MmStatusOK logout()

Logout from the Mattermost server

##### Permissions An active session is required 

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



try {
  final MmStatusOK? result = await client.users.logout(); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->logout: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **migrateAuthToLdap**
> migrateAuthToLdap(mmMigrateAuthToLdapRequest)

Migrate user accounts authentication type to LDAP.

Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to LDAP. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 

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


final MmMigrateAuthToLdapRequest mmMigrateAuthToLdapRequest = MmMigrateAuthToLdapRequest(); // MmMigrateAuthToLdapRequest | 

try {
  await client.users.migrateAuthToLdap(mmMigrateAuthToLdapRequest); 
} catch (e) {
  print('Exception when calling MattermostUsersApi->migrateAuthToLdap: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmMigrateAuthToLdapRequest** | [**MmMigrateAuthToLdapRequest**](MmMigrateAuthToLdapRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **migrateAuthToSaml**
> migrateAuthToSaml(mmMigrateAuthToSamlRequest)

Migrate user accounts authentication type to SAML.

Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to SAML. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 

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


final MmMigrateAuthToSamlRequest mmMigrateAuthToSamlRequest = MmMigrateAuthToSamlRequest(); // MmMigrateAuthToSamlRequest | 

try {
  await client.users.migrateAuthToSaml(mmMigrateAuthToSamlRequest); 
} catch (e) {
  print('Exception when calling MattermostUsersApi->migrateAuthToSaml: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmMigrateAuthToSamlRequest** | [**MmMigrateAuthToSamlRequest**](MmMigrateAuthToSamlRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **patchUser**
> MmUser patchUser(userId, mmPatchUserRequest)

Patch a user

Partially update a user by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

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
final MmPatchUserRequest mmPatchUserRequest = MmPatchUserRequest(); // MmPatchUserRequest | User object that is to be updated

try {
  final MmUser? result = await client.users.patchUser(userId, mmPatchUserRequest); // await the Future<MmUser?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->patchUser: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mmPatchUserRequest** | [**MmPatchUserRequest**](MmPatchUserRequest.md)| User object that is to be updated | 

### Return type

[**MmUser**](MmUser.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **permanentDeleteAllUsers**
> permanentDeleteAllUsers()

Permanent delete all users

Permanently deletes all users and all their related information, including posts.  __Minimum server version__: 5.26.0  __Local mode only__: This endpoint is only available through [local mode](https://docs.mattermost.com/administration/mmctl-cli-tool.html#local-mode). 

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

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **promoteGuestToUser**
> MmStatusOK promoteGuestToUser(userId)

Promote a guest to user

Convert a guest into a regular user. This will convert the guest into a user for the whole system while retaining any team and channel memberships and automatically joining them to the default channels.  __Minimum server version__: 5.16  ##### Permissions Must be logged in as the user or have the `promote_guest` permission. 

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
  final MmStatusOK? result = await client.users.promoteGuestToUser(userId); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->promoteGuestToUser: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **publishUserTyping**
> publishUserTyping(userId, mmPublishUserTypingRequest)

Publish a user typing websocket event.

Notify users in the given channel via websocket that the given user is typing. __Minimum server version__: 5.26 ##### Permissions Must have `manage_system` permission to publish for any user other than oneself. 

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
final MmPublishUserTypingRequest mmPublishUserTypingRequest = MmPublishUserTypingRequest(); // MmPublishUserTypingRequest | 

try {
  await client.users.publishUserTyping(userId, mmPublishUserTypingRequest); 
} catch (e) {
  print('Exception when calling MattermostUsersApi->publishUserTyping: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mmPublishUserTypingRequest** | [**MmPublishUserTypingRequest**](MmPublishUserTypingRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **registerTermsOfServiceAction**
> MmStatusOK registerTermsOfServiceAction(userId, mmRegisterTermsOfServiceActionRequest)

Records user action when they accept or decline custom terms of service

Records user action when they accept or decline custom terms of service. Records the action in audit table. Updates user's last accepted terms of service ID if they accepted it.  __Minimum server version__: 5.4 ##### Permissions Must be logged in as the user being acted on. 

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
final MmRegisterTermsOfServiceActionRequest mmRegisterTermsOfServiceActionRequest = MmRegisterTermsOfServiceActionRequest(); // MmRegisterTermsOfServiceActionRequest | terms of service details

try {
  final MmStatusOK? result = await client.users.registerTermsOfServiceAction(userId, mmRegisterTermsOfServiceActionRequest); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->registerTermsOfServiceAction: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mmRegisterTermsOfServiceActionRequest** | [**MmRegisterTermsOfServiceActionRequest**](MmRegisterTermsOfServiceActionRequest.md)| terms of service details | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **resetPassword**
> MmStatusOK resetPassword(mmResetPasswordRequest)

Reset password

Update the password for a user using a one-use, timed recovery code tied to the user's account. Only works for non-SSO users. ##### Permissions No permissions required. 

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


final MmResetPasswordRequest mmResetPasswordRequest = MmResetPasswordRequest(); // MmResetPasswordRequest | 

try {
  final MmStatusOK? result = await client.users.resetPassword(mmResetPasswordRequest); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->resetPassword: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmResetPasswordRequest** | [**MmResetPasswordRequest**](MmResetPasswordRequest.md)|  | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **revokeAllSessions**
> MmStatusOK revokeAllSessions(userId)

Revoke all active sessions for a user

Revokes all user sessions from the provided user id and session id strings. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. __Minimum server version__: 4.4 

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
  final MmStatusOK? result = await client.users.revokeAllSessions(userId); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->revokeAllSessions: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **revokeSession**
> MmStatusOK revokeSession(userId, mmRevokeSessionRequest)

Revoke a user session

Revokes a user session from the provided user id and session id strings. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

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
final MmRevokeSessionRequest mmRevokeSessionRequest = MmRevokeSessionRequest(); // MmRevokeSessionRequest | 

try {
  final MmStatusOK? result = await client.users.revokeSession(userId, mmRevokeSessionRequest); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->revokeSession: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mmRevokeSessionRequest** | [**MmRevokeSessionRequest**](MmRevokeSessionRequest.md)|  | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **revokeSessionsFromAllUsers**
> revokeSessionsFromAllUsers()

Revoke all sessions from all users.

For any session currently on the server (including admin) it will be revoked. Clients will be notified to log out users.  __Minimum server version__: 5.14  ##### Permissions Must have `manage_system` permission. 

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

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **revokeUserAccessToken**
> MmStatusOK revokeUserAccessToken(mmRevokeUserAccessTokenRequest)

Revoke a user access token

Revoke a user access token and delete any sessions using the token.  __Minimum server version__: 4.1  ##### Permissions Must have `revoke_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 

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


final MmRevokeUserAccessTokenRequest mmRevokeUserAccessTokenRequest = MmRevokeUserAccessTokenRequest(); // MmRevokeUserAccessTokenRequest | 

try {
  final MmStatusOK? result = await client.users.revokeUserAccessToken(mmRevokeUserAccessTokenRequest); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->revokeUserAccessToken: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmRevokeUserAccessTokenRequest** | [**MmRevokeUserAccessTokenRequest**](MmRevokeUserAccessTokenRequest.md)|  | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **searchUserAccessTokens**
> List<MmUserAccessTokenSanitized> searchUserAccessTokens(mmSearchUserAccessTokensRequest)

Search tokens

Get a list of tokens based on search criteria provided in the request body. Searches are done against the token id, user id and username.  __Minimum server version__: 4.7  ##### Permissions Must have `manage_system` permission. 

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


final MmSearchUserAccessTokensRequest mmSearchUserAccessTokensRequest = MmSearchUserAccessTokensRequest(); // MmSearchUserAccessTokensRequest | Search criteria

try {
  final List&lt;MmUserAccessTokenSanitized&gt;? result = await client.users.searchUserAccessTokens(mmSearchUserAccessTokensRequest); // await the Future<List&lt;MmUserAccessTokenSanitized&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->searchUserAccessTokens: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmSearchUserAccessTokensRequest** | [**MmSearchUserAccessTokensRequest**](MmSearchUserAccessTokensRequest.md)| Search criteria | 

### Return type

[**List<MmUserAccessTokenSanitized>**](MmUserAccessTokenSanitized.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **searchUsers**
> List<MmUser> searchUsers(mmSearchUsersRequest)

Search users

Get a list of users based on search criteria provided in the request body. Searches are typically done against username, full name, nickname and email unless otherwise configured by the server. ##### Permissions Requires an active session and `read_channel` and/or `view_team` permissions for any channels or teams specified in the request body. 

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


final MmSearchUsersRequest mmSearchUsersRequest = MmSearchUsersRequest(); // MmSearchUsersRequest | Search criteria

try {
  final List&lt;MmUser&gt;? result = await client.users.searchUsers(mmSearchUsersRequest); // await the Future<List&lt;MmUser&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->searchUsers: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmSearchUsersRequest** | [**MmSearchUsersRequest**](MmSearchUsersRequest.md)| Search criteria | 

### Return type

[**List<MmUser>**](MmUser.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **sendPasswordResetEmail**
> MmStatusOK sendPasswordResetEmail(mmSendPasswordResetEmailRequest)

Send password reset email

Send an email containing a link for resetting the user's password. The link will contain a one-use, timed recovery code tied to the user's account. Only works for non-SSO users. ##### Permissions No permissions required. 

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


final MmSendPasswordResetEmailRequest mmSendPasswordResetEmailRequest = MmSendPasswordResetEmailRequest(); // MmSendPasswordResetEmailRequest | 

try {
  final MmStatusOK? result = await client.users.sendPasswordResetEmail(mmSendPasswordResetEmailRequest); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->sendPasswordResetEmail: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmSendPasswordResetEmailRequest** | [**MmSendPasswordResetEmailRequest**](MmSendPasswordResetEmailRequest.md)|  | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **sendVerificationEmail**
> MmStatusOK sendVerificationEmail(mmSendVerificationEmailRequest)

Send verification email

Send an email with a verification link to a user that has an email matching the one in the request body. This endpoint will return success even if the email does not match any users on the system. ##### Permissions No permissions required. 

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


final MmSendVerificationEmailRequest mmSendVerificationEmailRequest = MmSendVerificationEmailRequest(); // MmSendVerificationEmailRequest | 

try {
  final MmStatusOK? result = await client.users.sendVerificationEmail(mmSendVerificationEmailRequest); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->sendVerificationEmail: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmSendVerificationEmailRequest** | [**MmSendVerificationEmailRequest**](MmSendVerificationEmailRequest.md)|  | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **setDefaultProfileImage**
> MmStatusOK setDefaultProfileImage(userId)

Delete user's profile image

Delete user's profile image and reset to default image based on user_id string parameter. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. __Minimum server version__: 5.5 

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
  final MmStatusOK? result = await client.users.setDefaultProfileImage(userId); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->setDefaultProfileImage: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **setProfileImage**
> MmStatusOK setProfileImage(userId, image)

Set user's profile image

Set a user's profile image based on user_id string parameter. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

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
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | The image to be uploaded

try {
  final MmStatusOK? result = await client.users.setProfileImage(userId, image); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
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

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **switchAccountType**
> MmSwitchAccountType200Response switchAccountType(mmSwitchAccountTypeRequest)

Switch login method

Switch a user's login method from using email to OAuth2/SAML/LDAP or back to email. When switching to OAuth2/SAML, account switching is not complete until the user follows the returned link and completes any steps on the OAuth2/SAML service provider.  To switch from email to OAuth2/SAML, specify `current_service`, `new_service`, `email` and `password`.  To switch from OAuth2/SAML to email, specify `current_service`, `new_service`, `email` and `new_password`.  To switch from email to LDAP/AD, specify `current_service`, `new_service`, `email`, `password`, `ldap_ip` and `new_password` (this is the user's LDAP password).  To switch from LDAP/AD to email, specify `current_service`, `new_service`, `ldap_ip`, `password` (this is the user's LDAP password), `email`  and `new_password`.  Additionally, specify `mfa_code` when trying to switch an account on LDAP/AD or email that has MFA activated.  ##### Permissions No current authentication required except when switching from OAuth2/SAML to email. 

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


final MmSwitchAccountTypeRequest mmSwitchAccountTypeRequest = MmSwitchAccountTypeRequest(); // MmSwitchAccountTypeRequest | 

try {
  final MmSwitchAccountType200Response? result = await client.users.switchAccountType(mmSwitchAccountTypeRequest); // await the Future<MmSwitchAccountType200Response?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->switchAccountType: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmSwitchAccountTypeRequest** | [**MmSwitchAccountTypeRequest**](MmSwitchAccountTypeRequest.md)|  | 

### Return type

[**MmSwitchAccountType200Response**](MmSwitchAccountType200Response.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateUser**
> MmUser updateUser(userId, mmUpdateUserRequest)

Update a user

Update a user by providing the user object. The fields that can be updated are defined in the request body, all other provided fields will be ignored. Any fields not included in the request body will be set to null or reverted to default values. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

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
final MmUpdateUserRequest mmUpdateUserRequest = MmUpdateUserRequest(); // MmUpdateUserRequest | User object that is to be updated

try {
  final MmUser? result = await client.users.updateUser(userId, mmUpdateUserRequest); // await the Future<MmUser?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->updateUser: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mmUpdateUserRequest** | [**MmUpdateUserRequest**](MmUpdateUserRequest.md)| User object that is to be updated | 

### Return type

[**MmUser**](MmUser.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateUserActive**
> MmStatusOK updateUserActive(userId, mmUpdateUserActiveRequest)

Update user active status

Update user active or inactive status.  __Since server version 4.6, users using a SSO provider to login can be activated or deactivated with this endpoint. However, if their activation status in Mattermost does not reflect their status in the SSO provider, the next synchronization or login by that user will reset the activation status to that of their account in the SSO provider. Server versions 4.5 and before do not allow activation or deactivation of SSO users from this endpoint.__ ##### Permissions User can deactivate themselves. User with `manage_system` permission can activate or deactivate a user. 

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
final MmUpdateUserActiveRequest mmUpdateUserActiveRequest = MmUpdateUserActiveRequest(); // MmUpdateUserActiveRequest | Use `true` to set the user active, `false` for inactive

try {
  final MmStatusOK? result = await client.users.updateUserActive(userId, mmUpdateUserActiveRequest); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->updateUserActive: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mmUpdateUserActiveRequest** | [**MmUpdateUserActiveRequest**](MmUpdateUserActiveRequest.md)| Use `true` to set the user active, `false` for inactive | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateUserAuth**
> MmUserAuthData updateUserAuth(userId, mmUserAuthData)

Update a user's authentication method

Updates a user's authentication method. This can be used to change them to/from LDAP authentication for example.  __Minimum server version__: 4.6 ##### Permissions Must have the `edit_other_users` permission. 

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
final MmUserAuthData mmUserAuthData = MmUserAuthData(); // MmUserAuthData | 

try {
  final MmUserAuthData? result = await client.users.updateUserAuth(userId, mmUserAuthData); // await the Future<MmUserAuthData?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->updateUserAuth: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mmUserAuthData** | [**MmUserAuthData**](MmUserAuthData.md)|  | 

### Return type

[**MmUserAuthData**](MmUserAuthData.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateUserMfa**
> MmStatusOK updateUserMfa(userId, mmUpdateUserMfaRequest)

Update a user's MFA

Activates multi-factor authentication for the user if `activate` is true and a valid `code` is provided. If activate is false, then `code` is not required and multi-factor authentication is disabled for the user. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

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
final MmUpdateUserMfaRequest mmUpdateUserMfaRequest = MmUpdateUserMfaRequest(); // MmUpdateUserMfaRequest | 

try {
  final MmStatusOK? result = await client.users.updateUserMfa(userId, mmUpdateUserMfaRequest); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->updateUserMfa: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mmUpdateUserMfaRequest** | [**MmUpdateUserMfaRequest**](MmUpdateUserMfaRequest.md)|  | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateUserPassword**
> MmStatusOK updateUserPassword(userId, mmUpdateUserPasswordRequest)

Update a user's password

Update a user's password. New password must meet password policy set by server configuration. Current password is required if you're updating your own password. ##### Permissions Must be logged in as the user the password is being changed for or have `manage_system` permission. 

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
final MmUpdateUserPasswordRequest mmUpdateUserPasswordRequest = MmUpdateUserPasswordRequest(); // MmUpdateUserPasswordRequest | 

try {
  final MmStatusOK? result = await client.users.updateUserPassword(userId, mmUpdateUserPasswordRequest); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->updateUserPassword: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mmUpdateUserPasswordRequest** | [**MmUpdateUserPasswordRequest**](MmUpdateUserPasswordRequest.md)|  | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateUserRoles**
> MmStatusOK updateUserRoles(userId, mmUpdateUserRolesRequest)

Update a user's roles

Update a user's system-level roles. Valid user roles are \"system_user\", \"system_admin\" or both of them. Overwrites any previously assigned system-level roles. ##### Permissions Must have the `manage_roles` permission. 

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
final MmUpdateUserRolesRequest mmUpdateUserRolesRequest = MmUpdateUserRolesRequest(); // MmUpdateUserRolesRequest | Space-delimited system roles to assign to the user

try {
  final MmStatusOK? result = await client.users.updateUserRoles(userId, mmUpdateUserRolesRequest); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->updateUserRoles: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mmUpdateUserRolesRequest** | [**MmUpdateUserRolesRequest**](MmUpdateUserRolesRequest.md)| Space-delimited system roles to assign to the user | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **verifyUserEmail**
> MmStatusOK verifyUserEmail(mmVerifyUserEmailRequest)

Verify user email

Verify the email used by a user to sign-up their account with. ##### Permissions No permissions required. 

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


final MmVerifyUserEmailRequest mmVerifyUserEmailRequest = MmVerifyUserEmailRequest(); // MmVerifyUserEmailRequest | 

try {
  final MmStatusOK? result = await client.users.verifyUserEmail(mmVerifyUserEmailRequest); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->verifyUserEmail: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmVerifyUserEmailRequest** | [**MmVerifyUserEmailRequest**](MmVerifyUserEmailRequest.md)|  | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **verifyUserEmailWithoutToken**
> MmUser verifyUserEmailWithoutToken(userId)

Verify user email by ID

Verify the email used by a user without a token.  __Minimum server version__: 5.24  ##### Permissions  Must have `manage_system` permission. 

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
  final MmUser? result = await client.users.verifyUserEmailWithoutToken(userId); // await the Future<MmUser?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsersApi->verifyUserEmailWithoutToken: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**MmUser**](MmUser.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

