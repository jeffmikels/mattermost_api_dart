# mattermost_api.api.UsersApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**attachDeviceId**](UsersApi.md#attachdeviceid) | **PUT** /users/sessions/device | Attach mobile device
[**autocompleteUsers**](UsersApi.md#autocompleteusers) | **GET** /users/autocomplete | Autocomplete users
[**checkUserMfa**](UsersApi.md#checkusermfa) | **POST** /users/mfa | Check MFA
[**convertBotToUser**](UsersApi.md#convertbottouser) | **POST** /bots/{bot_user_id}/convert_to_user | Convert a bot into a user
[**convertUserToBot**](UsersApi.md#convertusertobot) | **POST** /users/{user_id}/convert_to_bot | Convert a user into a bot
[**createUser**](UsersApi.md#createuser) | **POST** /users | Create a user
[**createUserAccessToken**](UsersApi.md#createuseraccesstoken) | **POST** /users/{user_id}/tokens | Create a user access token
[**deleteUser**](UsersApi.md#deleteuser) | **DELETE** /users/{user_id} | Deactivate a user account.
[**demoteUserToGuest**](UsersApi.md#demoteusertoguest) | **POST** /users/{user_id}/demote | Demote a user to a guest
[**disableUserAccessToken**](UsersApi.md#disableuseraccesstoken) | **POST** /users/tokens/disable | Disable personal access token
[**enableUserAccessToken**](UsersApi.md#enableuseraccesstoken) | **POST** /users/tokens/enable | Enable personal access token
[**generateMfaSecret**](UsersApi.md#generatemfasecret) | **POST** /users/{user_id}/mfa/generate | Generate MFA secret
[**getChannelMembersWithTeamDataForUser**](UsersApi.md#getchannelmemberswithteamdataforuser) | **GET** /users/{user_id}/channel_members | Get all channel members from all teams for a user
[**getDefaultProfileImage**](UsersApi.md#getdefaultprofileimage) | **GET** /users/{user_id}/image/default | Return user's default (generated) profile image
[**getKnownUsers**](UsersApi.md#getknownusers) | **GET** /users/known | Get user IDs of known users
[**getProfileImage**](UsersApi.md#getprofileimage) | **GET** /users/{user_id}/image | Get user's profile image
[**getSessions**](UsersApi.md#getsessions) | **GET** /users/{user_id}/sessions | Get user's sessions
[**getTotalUsersStats**](UsersApi.md#gettotalusersstats) | **GET** /users/stats | Get total count of users in the system
[**getTotalUsersStatsFiltered**](UsersApi.md#gettotalusersstatsfiltered) | **GET** /users/stats/filtered | Get total count of users in the system matching the specified filters
[**getUploadsForUser**](UsersApi.md#getuploadsforuser) | **GET** /users/{user_id}/uploads | Get uploads for a user
[**getUser**](UsersApi.md#getuser) | **GET** /users/{user_id} | Get a user
[**getUserAccessToken**](UsersApi.md#getuseraccesstoken) | **GET** /users/tokens/{token_id} | Get a user access token
[**getUserAccessTokens**](UsersApi.md#getuseraccesstokens) | **GET** /users/tokens | Get user access tokens
[**getUserAccessTokensForUser**](UsersApi.md#getuseraccesstokensforuser) | **GET** /users/{user_id}/tokens | Get user access tokens
[**getUserAudits**](UsersApi.md#getuseraudits) | **GET** /users/{user_id}/audits | Get user's audits
[**getUserByEmail**](UsersApi.md#getuserbyemail) | **GET** /users/email/{email} | Get a user by email
[**getUserByUsername**](UsersApi.md#getuserbyusername) | **GET** /users/username/{username} | Get a user by username
[**getUserTermsOfService**](UsersApi.md#getusertermsofservice) | **GET** /users/{user_id}/terms_of_service | Fetches user's latest terms of service action if the latest action was for acceptance.
[**getUsers**](UsersApi.md#getusers) | **GET** /users | Get users
[**getUsersByGroupChannelIds**](UsersApi.md#getusersbygroupchannelids) | **POST** /users/group_channels | Get users by group channels ids
[**getUsersByIds**](UsersApi.md#getusersbyids) | **POST** /users/ids | Get users by ids
[**getUsersByUsernames**](UsersApi.md#getusersbyusernames) | **POST** /users/usernames | Get users by usernames
[**login**](UsersApi.md#login) | **POST** /users/login | Login to Mattermost server
[**loginByCwsToken**](UsersApi.md#loginbycwstoken) | **POST** /users/login/cws | Auto-Login to Mattermost server using CWS token
[**logout**](UsersApi.md#logout) | **POST** /users/logout | Logout from the Mattermost server
[**migrateAuthToLdap**](UsersApi.md#migrateauthtoldap) | **POST** /users/migrate_auth/ldap | Migrate user accounts authentication type to LDAP.
[**migrateAuthToSaml**](UsersApi.md#migrateauthtosaml) | **POST** /users/migrate_auth/saml | Migrate user accounts authentication type to SAML.
[**patchUser**](UsersApi.md#patchuser) | **PUT** /users/{user_id}/patch | Patch a user
[**permanentDeleteAllUsers**](UsersApi.md#permanentdeleteallusers) | **DELETE** /users | Permanent delete all users
[**promoteGuestToUser**](UsersApi.md#promoteguesttouser) | **POST** /users/{user_id}/promote | Promote a guest to user
[**publishUserTyping**](UsersApi.md#publishusertyping) | **POST** /users/{user_id}/typing | Publish a user typing websocket event.
[**registerTermsOfServiceAction**](UsersApi.md#registertermsofserviceaction) | **POST** /users/{user_id}/terms_of_service | Records user action when they accept or decline custom terms of service
[**resetPassword**](UsersApi.md#resetpassword) | **POST** /users/password/reset | Reset password
[**revokeAllSessions**](UsersApi.md#revokeallsessions) | **POST** /users/{user_id}/sessions/revoke/all | Revoke all active sessions for a user
[**revokeSession**](UsersApi.md#revokesession) | **POST** /users/{user_id}/sessions/revoke | Revoke a user session
[**revokeSessionsFromAllUsers**](UsersApi.md#revokesessionsfromallusers) | **POST** /users/sessions/revoke/all | Revoke all sessions from all users.
[**revokeUserAccessToken**](UsersApi.md#revokeuseraccesstoken) | **POST** /users/tokens/revoke | Revoke a user access token
[**searchUserAccessTokens**](UsersApi.md#searchuseraccesstokens) | **POST** /users/tokens/search | Search tokens
[**searchUsers**](UsersApi.md#searchusers) | **POST** /users/search | Search users
[**sendPasswordResetEmail**](UsersApi.md#sendpasswordresetemail) | **POST** /users/password/reset/send | Send password reset email
[**sendVerificationEmail**](UsersApi.md#sendverificationemail) | **POST** /users/email/verify/send | Send verification email
[**setDefaultProfileImage**](UsersApi.md#setdefaultprofileimage) | **DELETE** /users/{user_id}/image | Delete user's profile image
[**setProfileImage**](UsersApi.md#setprofileimage) | **POST** /users/{user_id}/image | Set user's profile image
[**switchAccountType**](UsersApi.md#switchaccounttype) | **POST** /users/login/switch | Switch login method
[**updateUser**](UsersApi.md#updateuser) | **PUT** /users/{user_id} | Update a user
[**updateUserActive**](UsersApi.md#updateuseractive) | **PUT** /users/{user_id}/active | Update user active status
[**updateUserAuth**](UsersApi.md#updateuserauth) | **PUT** /users/{user_id}/auth | Update a user's authentication method
[**updateUserMfa**](UsersApi.md#updateusermfa) | **PUT** /users/{user_id}/mfa | Update a user's MFA
[**updateUserPassword**](UsersApi.md#updateuserpassword) | **PUT** /users/{user_id}/password | Update a user's password
[**updateUserRoles**](UsersApi.md#updateuserroles) | **PUT** /users/{user_id}/roles | Update a user's roles
[**verifyUserEmail**](UsersApi.md#verifyuseremail) | **POST** /users/email/verify | Verify user email
[**verifyUserEmailWithoutToken**](UsersApi.md#verifyuseremailwithouttoken) | **POST** /users/{user_id}/email/verify/member | Verify user email by ID


# **attachDeviceId**
> StatusOK attachDeviceId(attachDeviceIdRequest)

Attach mobile device

Attach a mobile device id to the currently logged in session. This will enable push notifications for a user, if configured by the server. ##### Permissions Must be authenticated. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final attachDeviceIdRequest = AttachDeviceIdRequest(); // AttachDeviceIdRequest | 

try {
    final result = api_instance.attachDeviceId(attachDeviceIdRequest);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->attachDeviceId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachDeviceIdRequest** | [**AttachDeviceIdRequest**](AttachDeviceIdRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocompleteUsers**
> UserAutocomplete autocompleteUsers(name, teamId, channelId, limit)

Autocomplete users

Get a list of users for the purpose of autocompleting based on the provided search term. Specify a combination of `team_id` and `channel_id` to filter results further. ##### Permissions Requires an active session and `view_team` and `read_channel` on any teams or channels used to filter the results further. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final name = name_example; // String | Username, nickname first name or last name
final teamId = teamId_example; // String | Team ID
final channelId = channelId_example; // String | Channel ID
final limit = 56; // int | The maximum number of users to return in each subresult  __Available as of server version 5.6. Defaults to `100` if not provided or on an earlier server version.__ 

try {
    final result = api_instance.autocompleteUsers(name, teamId, channelId, limit);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->autocompleteUsers: $e\n');
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

[**UserAutocomplete**](UserAutocomplete.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkUserMfa**
> CheckUserMfa200Response checkUserMfa(checkUserMfaRequest)

Check MFA

Check if a user has multi-factor authentication active on their account by providing a login id. Used to check whether an MFA code needs to be provided when logging in. ##### Permissions No permission required. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final checkUserMfaRequest = CheckUserMfaRequest(); // CheckUserMfaRequest | 

try {
    final result = api_instance.checkUserMfa(checkUserMfaRequest);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->checkUserMfa: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkUserMfaRequest** | [**CheckUserMfaRequest**](CheckUserMfaRequest.md)|  | 

### Return type

[**CheckUserMfa200Response**](CheckUserMfa200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertBotToUser**
> StatusOK convertBotToUser(botUserId, convertBotToUserRequest, setSystemAdmin)

Convert a bot into a user

Convert a bot into a user.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final botUserId = botUserId_example; // String | Bot user ID
final convertBotToUserRequest = ConvertBotToUserRequest(); // ConvertBotToUserRequest | Data to be used in the user creation
final setSystemAdmin = true; // bool | Whether to give the user the system admin role.

try {
    final result = api_instance.convertBotToUser(botUserId, convertBotToUserRequest, setSystemAdmin);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->convertBotToUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **botUserId** | **String**| Bot user ID | 
 **convertBotToUserRequest** | [**ConvertBotToUserRequest**](ConvertBotToUserRequest.md)| Data to be used in the user creation | 
 **setSystemAdmin** | **bool**| Whether to give the user the system admin role. | [optional] [default to false]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertUserToBot**
> StatusOK convertUserToBot(userId)

Convert a user into a bot

Convert a user into a bot.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID

try {
    final result = api_instance.convertUserToBot(userId);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->convertUserToBot: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUser**
> User createUser(createUserRequest, t, iid)

Create a user

Create a new user on the system. Password is required for email login. For other authentication types such as LDAP or SAML, auth_data and auth_service fields are required. ##### Permissions No permission required for creating email/username accounts on an open server. Auth Token is required for other authentication types such as LDAP or SAML. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final createUserRequest = CreateUserRequest(); // CreateUserRequest | User object to be created
final t = t_example; // String | Token id from an email invitation
final iid = iid_example; // String | Token id from an invitation link

try {
    final result = api_instance.createUser(createUserRequest, t, iid);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->createUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createUserRequest** | [**CreateUserRequest**](CreateUserRequest.md)| User object to be created | 
 **t** | **String**| Token id from an email invitation | [optional] 
 **iid** | **String**| Token id from an invitation link | [optional] 

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUserAccessToken**
> UserAccessToken createUserAccessToken(userId, createUserAccessTokenRequest)

Create a user access token

Generate a user access token that can be used to authenticate with the Mattermost REST API.  __Minimum server version__: 4.1  ##### Permissions Must have `create_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID
final createUserAccessTokenRequest = CreateUserAccessTokenRequest(); // CreateUserAccessTokenRequest | 

try {
    final result = api_instance.createUserAccessToken(userId, createUserAccessTokenRequest);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->createUserAccessToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **createUserAccessTokenRequest** | [**CreateUserAccessTokenRequest**](CreateUserAccessTokenRequest.md)|  | 

### Return type

[**UserAccessToken**](UserAccessToken.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUser**
> StatusOK deleteUser(userId)

Deactivate a user account.

Deactivates the user and revokes all its sessions by archiving its user object.  As of server version 5.28, optionally use the `permanent=true` query parameter to permanently delete the user for compliance reasons. To use this feature `ServiceSettings.EnableAPIUserDeletion` must be set to `true` in the server's configuration. ##### Permissions Must be logged in as the user being deactivated or have the `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID

try {
    final result = api_instance.deleteUser(userId);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->deleteUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **demoteUserToGuest**
> StatusOK demoteUserToGuest(userId)

Demote a user to a guest

Convert a regular user into a guest. This will convert the user into a guest for the whole system while retaining their existing team and channel memberships.  __Minimum server version__: 5.16  ##### Permissions Must be logged in as the user or have the `demote_to_guest` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID

try {
    final result = api_instance.demoteUserToGuest(userId);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->demoteUserToGuest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disableUserAccessToken**
> StatusOK disableUserAccessToken(disableUserAccessTokenRequest)

Disable personal access token

Disable a personal access token and delete any sessions using the token. The token can be re-enabled using `/users/tokens/enable`.  __Minimum server version__: 4.4  ##### Permissions Must have `revoke_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final disableUserAccessTokenRequest = DisableUserAccessTokenRequest(); // DisableUserAccessTokenRequest | 

try {
    final result = api_instance.disableUserAccessToken(disableUserAccessTokenRequest);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->disableUserAccessToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disableUserAccessTokenRequest** | [**DisableUserAccessTokenRequest**](DisableUserAccessTokenRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enableUserAccessToken**
> StatusOK enableUserAccessToken(enableUserAccessTokenRequest)

Enable personal access token

Re-enable a personal access token that has been disabled.  __Minimum server version__: 4.4  ##### Permissions Must have `create_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final enableUserAccessTokenRequest = EnableUserAccessTokenRequest(); // EnableUserAccessTokenRequest | 

try {
    final result = api_instance.enableUserAccessToken(enableUserAccessTokenRequest);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->enableUserAccessToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enableUserAccessTokenRequest** | [**EnableUserAccessTokenRequest**](EnableUserAccessTokenRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateMfaSecret**
> GenerateMfaSecret200Response generateMfaSecret(userId)

Generate MFA secret

Generates an multi-factor authentication secret for a user and returns it as a string and as base64 encoded QR code image. ##### Permissions Must be logged in as the user or have the `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID

try {
    final result = api_instance.generateMfaSecret(userId);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->generateMfaSecret: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**GenerateMfaSecret200Response**](GenerateMfaSecret200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelMembersWithTeamDataForUser**
> List<ChannelMemberWithTeamData> getChannelMembersWithTeamDataForUser(userId, page, pageSize)

Get all channel members from all teams for a user

Get all channel members from all teams for a user.  __Minimum server version__: 6.2.0  ##### Permissions Logged in as the user, or have `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | The ID of the user. This can also be \"me\" which will point to the current user.
final page = 56; // int | Page specifies which part of the results to return, by PageSize.
final pageSize = 56; // int | PageSize specifies the size of the returned chunk of results.

try {
    final result = api_instance.getChannelMembersWithTeamDataForUser(userId, page, pageSize);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getChannelMembersWithTeamDataForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The ID of the user. This can also be \"me\" which will point to the current user. | 
 **page** | **int**| Page specifies which part of the results to return, by PageSize. | [optional] 
 **pageSize** | **int**| PageSize specifies the size of the returned chunk of results. | [optional] 

### Return type

[**List<ChannelMemberWithTeamData>**](ChannelMemberWithTeamData.md)

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
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID

try {
    api_instance.getDefaultProfileImage(userId);
} catch (e) {
    print('Exception when calling UsersApi->getDefaultProfileImage: $e\n');
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
> UsersStats getKnownUsers()

Get user IDs of known users

Get the list of user IDs of users with any direct relationship with a user. That means any user sharing any channel, including direct and group channels. ##### Permissions Must be authenticated.  __Minimum server version__: 5.23 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();

try {
    final result = api_instance.getKnownUsers();
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getKnownUsers: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UsersStats**](UsersStats.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProfileImage**
> getProfileImage(userId, )

Get user's profile image

Get a user's profile image based on user_id string parameter. ##### Permissions Must be logged in. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID
final  = 8.14; // num | Not used by the server. Clients can pass in the last picture update time of the user to potentially take advantage of caching

try {
    api_instance.getProfileImage(userId, );
} catch (e) {
    print('Exception when calling UsersApi->getProfileImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **** | **num**| Not used by the server. Clients can pass in the last picture update time of the user to potentially take advantage of caching | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSessions**
> List<Session> getSessions(userId)

Get user's sessions

Get a list of sessions by providing the user GUID. Sensitive information will be sanitized out. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID

try {
    final result = api_instance.getSessions(userId);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getSessions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**List<Session>**](Session.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTotalUsersStats**
> UsersStats getTotalUsersStats()

Get total count of users in the system

Get a total count of users in the system. ##### Permissions Must be authenticated. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();

try {
    final result = api_instance.getTotalUsersStats();
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getTotalUsersStats: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UsersStats**](UsersStats.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTotalUsersStatsFiltered**
> UsersStats getTotalUsersStatsFiltered(inTeam, inChannel, includeDeleted, includeBots, roles, channelRoles, teamRoles)

Get total count of users in the system matching the specified filters

Get a count of users in the system matching the specified filters.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final inTeam = inTeam_example; // String | The ID of the team to get user stats for.
final inChannel = inChannel_example; // String | The ID of the channel to get user stats for.
final includeDeleted = true; // bool | If deleted accounts should be included in the count.
final includeBots = true; // bool | If bot accounts should be included in the count.
final roles = roles_example; // String | Comma separated string used to filter users based on any of the specified system roles  Example: `?roles=system_admin,system_user` will include users that are either system admins or system users 
final channelRoles = channelRoles_example; // String | Comma separated string used to filter users based on any of the specified channel roles, can only be used in conjunction with `in_channel`  Example: `?in_channel=4eb6axxw7fg3je5iyasnfudc5y&channel_roles=channel_user` will include users that are only channel users and not admins or guests 
final teamRoles = teamRoles_example; // String | Comma separated string used to filter users based on any of the specified team roles, can only be used in conjunction with `in_team`  Example: `?in_team=4eb6axxw7fg3je5iyasnfudc5y&team_roles=team_user` will include users that are only team users and not admins or guests 

try {
    final result = api_instance.getTotalUsersStatsFiltered(inTeam, inChannel, includeDeleted, includeBots, roles, channelRoles, teamRoles);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getTotalUsersStatsFiltered: $e\n');
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

[**UsersStats**](UsersStats.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUploadsForUser**
> List<UploadSession> getUploadsForUser(userId)

Get uploads for a user

Gets all the upload sessions belonging to a user.  __Minimum server version__: 5.28  ##### Permissions Must be logged in as the user who created the upload sessions. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | The ID of the user. This can also be \"me\" which will point to the current user.

try {
    final result = api_instance.getUploadsForUser(userId);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getUploadsForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The ID of the user. This can also be \"me\" which will point to the current user. | 

### Return type

[**List<UploadSession>**](UploadSession.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
> User getUser(userId)

Get a user

Get a user a object. Sensitive information will be sanitized out. ##### Permissions Requires an active session but no other permissions. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID. This can also be \"me\" which will point to the current user.

try {
    final result = api_instance.getUser(userId);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID. This can also be \"me\" which will point to the current user. | 

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserAccessToken**
> UserAccessTokenSanitized getUserAccessToken(tokenId)

Get a user access token

Get a user access token. Does not include the actual authentication token.  __Minimum server version__: 4.1  ##### Permissions Must have `read_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final tokenId = tokenId_example; // String | User access token GUID

try {
    final result = api_instance.getUserAccessToken(tokenId);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getUserAccessToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenId** | **String**| User access token GUID | 

### Return type

[**UserAccessTokenSanitized**](UserAccessTokenSanitized.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserAccessTokens**
> List<UserAccessTokenSanitized> getUserAccessTokens(page, perPage)

Get user access tokens

Get a page of user access tokens for users on the system. Does not include the actual authentication tokens. Use query parameters for paging.  __Minimum server version__: 4.7  ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of tokens per page.

try {
    final result = api_instance.getUserAccessTokens(page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getUserAccessTokens: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of tokens per page. | [optional] [default to 60]

### Return type

[**List<UserAccessTokenSanitized>**](UserAccessTokenSanitized.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserAccessTokensForUser**
> List<UserAccessTokenSanitized> getUserAccessTokensForUser(userId, page, perPage)

Get user access tokens

Get a list of user access tokens for a user. Does not include the actual authentication tokens. Use query parameters for paging.  __Minimum server version__: 4.1  ##### Permissions Must have `read_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of tokens per page.

try {
    final result = api_instance.getUserAccessTokensForUser(userId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getUserAccessTokensForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of tokens per page. | [optional] [default to 60]

### Return type

[**List<UserAccessTokenSanitized>**](UserAccessTokenSanitized.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserAudits**
> List<Audit> getUserAudits(userId)

Get user's audits

Get a list of audit by providing the user GUID. ##### Permissions Must be logged in as the user or have the `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID

try {
    final result = api_instance.getUserAudits(userId);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getUserAudits: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**List<Audit>**](Audit.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserByEmail**
> User getUserByEmail(email)

Get a user by email

Get a user object by providing a user email. Sensitive information will be sanitized out. ##### Permissions Requires an active session and for the current session to be able to view another user's email based on the server's privacy settings. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final email = email_example; // String | User Email

try {
    final result = api_instance.getUserByEmail(email);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getUserByEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| User Email | 

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserByUsername**
> User getUserByUsername(username)

Get a user by username

Get a user object by providing a username. Sensitive information will be sanitized out. ##### Permissions Requires an active session but no other permissions. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final username = username_example; // String | Username

try {
    final result = api_instance.getUserByUsername(username);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getUserByUsername: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| Username | 

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserTermsOfService**
> UserTermsOfService getUserTermsOfService(userId)

Fetches user's latest terms of service action if the latest action was for acceptance.

Will be deprecated in v6.0 Fetches user's latest terms of service action if the latest action was for acceptance.  __Minimum server version__: 5.6 ##### Permissions Must be logged in as the user being acted on. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID

try {
    final result = api_instance.getUserTermsOfService(userId);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getUserTermsOfService: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**UserTermsOfService**](UserTermsOfService.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsers**
> List<User> getUsers(page, perPage, inTeam, notInTeam, inChannel, notInChannel, inGroup, groupConstrained, withoutTeam, active, inactive, role, sort, roles, channelRoles, teamRoles)

Get users

Get a page of a list of users. Based on query string parameters, select users from a team, channel, or select users not in a specific channel.  Since server version 4.0, some basic sorting is available using the `sort` query parameter. Sorting is currently only supported when selecting users on a team. ##### Permissions Requires an active session and (if specified) membership to the channel or team being selected from. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
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
    final result = api_instance.getUsers(page, perPage, inTeam, notInTeam, inChannel, notInChannel, inGroup, groupConstrained, withoutTeam, active, inactive, role, sort, roles, channelRoles, teamRoles);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getUsers: $e\n');
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

[**List<User>**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersByGroupChannelIds**
> GetUsersByGroupChannelIds200Response getUsersByGroupChannelIds(requestBody)

Get users by group channels ids

Get an object containing a key per group channel id in the query and its value as a list of users members of that group channel.  The user must be a member of the group ids in the query, or they will be omitted from the response. ##### Permissions Requires an active session but no other permissions.  __Minimum server version__: 5.14 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final requestBody = [List<String>()]; // List<String> | List of group channel ids

try {
    final result = api_instance.getUsersByGroupChannelIds(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getUsersByGroupChannelIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)| List of group channel ids | 

### Return type

[**GetUsersByGroupChannelIds200Response**](GetUsersByGroupChannelIds200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersByIds**
> List<User> getUsersByIds(requestBody, since)

Get users by ids

Get a list of users based on a provided list of user ids. ##### Permissions Requires an active session but no other permissions. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final requestBody = [List<String>()]; // List<String> | List of user ids
final since = 56; // int | Only return users that have been modified since the given Unix timestamp (in milliseconds).  __Minimum server version__: 5.14 

try {
    final result = api_instance.getUsersByIds(requestBody, since);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getUsersByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)| List of user ids | 
 **since** | **int**| Only return users that have been modified since the given Unix timestamp (in milliseconds).  __Minimum server version__: 5.14  | [optional] 

### Return type

[**List<User>**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersByUsernames**
> List<User> getUsersByUsernames(requestBody)

Get users by usernames

Get a list of users based on a provided list of usernames. ##### Permissions Requires an active session but no other permissions. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final requestBody = [List<String>()]; // List<String> | List of usernames

try {
    final result = api_instance.getUsersByUsernames(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getUsersByUsernames: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)| List of usernames | 

### Return type

[**List<User>**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login**
> User login(loginRequest)

Login to Mattermost server

##### Permissions No permission required 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final loginRequest = LoginRequest(); // LoginRequest | User authentication object

try {
    final result = api_instance.login(loginRequest);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->login: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginRequest** | [**LoginRequest**](LoginRequest.md)| User authentication object | 

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **loginByCwsToken**
> loginByCwsToken(loginByCwsTokenRequest)

Auto-Login to Mattermost server using CWS token

CWS stands for Customer Web Server which is the cloud service used to manage cloud instances. ##### Permissions A Cloud license is required 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final loginByCwsTokenRequest = LoginByCwsTokenRequest(); // LoginByCwsTokenRequest | User authentication object

try {
    api_instance.loginByCwsToken(loginByCwsTokenRequest);
} catch (e) {
    print('Exception when calling UsersApi->loginByCwsToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginByCwsTokenRequest** | [**LoginByCwsTokenRequest**](LoginByCwsTokenRequest.md)| User authentication object | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout**
> StatusOK logout()

Logout from the Mattermost server

##### Permissions An active session is required 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();

try {
    final result = api_instance.logout();
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->logout: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrateAuthToLdap**
> migrateAuthToLdap(migrateAuthToLdapRequest)

Migrate user accounts authentication type to LDAP.

Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to LDAP. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final migrateAuthToLdapRequest = MigrateAuthToLdapRequest(); // MigrateAuthToLdapRequest | 

try {
    api_instance.migrateAuthToLdap(migrateAuthToLdapRequest);
} catch (e) {
    print('Exception when calling UsersApi->migrateAuthToLdap: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **migrateAuthToLdapRequest** | [**MigrateAuthToLdapRequest**](MigrateAuthToLdapRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrateAuthToSaml**
> migrateAuthToSaml(migrateAuthToSamlRequest)

Migrate user accounts authentication type to SAML.

Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to SAML. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final migrateAuthToSamlRequest = MigrateAuthToSamlRequest(); // MigrateAuthToSamlRequest | 

try {
    api_instance.migrateAuthToSaml(migrateAuthToSamlRequest);
} catch (e) {
    print('Exception when calling UsersApi->migrateAuthToSaml: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **migrateAuthToSamlRequest** | [**MigrateAuthToSamlRequest**](MigrateAuthToSamlRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUser**
> User patchUser(userId, patchUserRequest)

Patch a user

Partially update a user by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID
final patchUserRequest = PatchUserRequest(); // PatchUserRequest | User object that is to be updated

try {
    final result = api_instance.patchUser(userId, patchUserRequest);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->patchUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **patchUserRequest** | [**PatchUserRequest**](PatchUserRequest.md)| User object that is to be updated | 

### Return type

[**User**](User.md)

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
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();

try {
    api_instance.permanentDeleteAllUsers();
} catch (e) {
    print('Exception when calling UsersApi->permanentDeleteAllUsers: $e\n');
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
> StatusOK promoteGuestToUser(userId)

Promote a guest to user

Convert a guest into a regular user. This will convert the guest into a user for the whole system while retaining any team and channel memberships and automatically joining them to the default channels.  __Minimum server version__: 5.16  ##### Permissions Must be logged in as the user or have the `promote_guest` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID

try {
    final result = api_instance.promoteGuestToUser(userId);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->promoteGuestToUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **publishUserTyping**
> publishUserTyping(userId, publishUserTypingRequest)

Publish a user typing websocket event.

Notify users in the given channel via websocket that the given user is typing. __Minimum server version__: 5.26 ##### Permissions Must have `manage_system` permission to publish for any user other than oneself. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID
final publishUserTypingRequest = PublishUserTypingRequest(); // PublishUserTypingRequest | 

try {
    api_instance.publishUserTyping(userId, publishUserTypingRequest);
} catch (e) {
    print('Exception when calling UsersApi->publishUserTyping: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **publishUserTypingRequest** | [**PublishUserTypingRequest**](PublishUserTypingRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerTermsOfServiceAction**
> StatusOK registerTermsOfServiceAction(userId, registerTermsOfServiceActionRequest)

Records user action when they accept or decline custom terms of service

Records user action when they accept or decline custom terms of service. Records the action in audit table. Updates user's last accepted terms of service ID if they accepted it.  __Minimum server version__: 5.4 ##### Permissions Must be logged in as the user being acted on. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID
final registerTermsOfServiceActionRequest = RegisterTermsOfServiceActionRequest(); // RegisterTermsOfServiceActionRequest | terms of service details

try {
    final result = api_instance.registerTermsOfServiceAction(userId, registerTermsOfServiceActionRequest);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->registerTermsOfServiceAction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **registerTermsOfServiceActionRequest** | [**RegisterTermsOfServiceActionRequest**](RegisterTermsOfServiceActionRequest.md)| terms of service details | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetPassword**
> StatusOK resetPassword(resetPasswordRequest)

Reset password

Update the password for a user using a one-use, timed recovery code tied to the user's account. Only works for non-SSO users. ##### Permissions No permissions required. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final resetPasswordRequest = ResetPasswordRequest(); // ResetPasswordRequest | 

try {
    final result = api_instance.resetPassword(resetPasswordRequest);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->resetPassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resetPasswordRequest** | [**ResetPasswordRequest**](ResetPasswordRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeAllSessions**
> StatusOK revokeAllSessions(userId)

Revoke all active sessions for a user

Revokes all user sessions from the provided user id and session id strings. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. __Minimum server version__: 4.4 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID

try {
    final result = api_instance.revokeAllSessions(userId);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->revokeAllSessions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeSession**
> StatusOK revokeSession(userId, revokeSessionRequest)

Revoke a user session

Revokes a user session from the provided user id and session id strings. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID
final revokeSessionRequest = RevokeSessionRequest(); // RevokeSessionRequest | 

try {
    final result = api_instance.revokeSession(userId, revokeSessionRequest);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->revokeSession: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **revokeSessionRequest** | [**RevokeSessionRequest**](RevokeSessionRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

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
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();

try {
    api_instance.revokeSessionsFromAllUsers();
} catch (e) {
    print('Exception when calling UsersApi->revokeSessionsFromAllUsers: $e\n');
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
> StatusOK revokeUserAccessToken(revokeUserAccessTokenRequest)

Revoke a user access token

Revoke a user access token and delete any sessions using the token.  __Minimum server version__: 4.1  ##### Permissions Must have `revoke_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final revokeUserAccessTokenRequest = RevokeUserAccessTokenRequest(); // RevokeUserAccessTokenRequest | 

try {
    final result = api_instance.revokeUserAccessToken(revokeUserAccessTokenRequest);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->revokeUserAccessToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **revokeUserAccessTokenRequest** | [**RevokeUserAccessTokenRequest**](RevokeUserAccessTokenRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchUserAccessTokens**
> List<UserAccessTokenSanitized> searchUserAccessTokens(searchUserAccessTokensRequest)

Search tokens

Get a list of tokens based on search criteria provided in the request body. Searches are done against the token id, user id and username.  __Minimum server version__: 4.7  ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final searchUserAccessTokensRequest = SearchUserAccessTokensRequest(); // SearchUserAccessTokensRequest | Search criteria

try {
    final result = api_instance.searchUserAccessTokens(searchUserAccessTokensRequest);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->searchUserAccessTokens: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchUserAccessTokensRequest** | [**SearchUserAccessTokensRequest**](SearchUserAccessTokensRequest.md)| Search criteria | 

### Return type

[**List<UserAccessTokenSanitized>**](UserAccessTokenSanitized.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchUsers**
> List<User> searchUsers(searchUsersRequest)

Search users

Get a list of users based on search criteria provided in the request body. Searches are typically done against username, full name, nickname and email unless otherwise configured by the server. ##### Permissions Requires an active session and `read_channel` and/or `view_team` permissions for any channels or teams specified in the request body. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final searchUsersRequest = SearchUsersRequest(); // SearchUsersRequest | Search criteria

try {
    final result = api_instance.searchUsers(searchUsersRequest);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->searchUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchUsersRequest** | [**SearchUsersRequest**](SearchUsersRequest.md)| Search criteria | 

### Return type

[**List<User>**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendPasswordResetEmail**
> StatusOK sendPasswordResetEmail(sendPasswordResetEmailRequest)

Send password reset email

Send an email containing a link for resetting the user's password. The link will contain a one-use, timed recovery code tied to the user's account. Only works for non-SSO users. ##### Permissions No permissions required. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final sendPasswordResetEmailRequest = SendPasswordResetEmailRequest(); // SendPasswordResetEmailRequest | 

try {
    final result = api_instance.sendPasswordResetEmail(sendPasswordResetEmailRequest);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->sendPasswordResetEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendPasswordResetEmailRequest** | [**SendPasswordResetEmailRequest**](SendPasswordResetEmailRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendVerificationEmail**
> StatusOK sendVerificationEmail(sendVerificationEmailRequest)

Send verification email

Send an email with a verification link to a user that has an email matching the one in the request body. This endpoint will return success even if the email does not match any users on the system. ##### Permissions No permissions required. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final sendVerificationEmailRequest = SendVerificationEmailRequest(); // SendVerificationEmailRequest | 

try {
    final result = api_instance.sendVerificationEmail(sendVerificationEmailRequest);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->sendVerificationEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendVerificationEmailRequest** | [**SendVerificationEmailRequest**](SendVerificationEmailRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setDefaultProfileImage**
> StatusOK setDefaultProfileImage(userId)

Delete user's profile image

Delete user's profile image and reset to default image based on user_id string parameter. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. __Minimum server version__: 5.5 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID

try {
    final result = api_instance.setDefaultProfileImage(userId);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->setDefaultProfileImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setProfileImage**
> StatusOK setProfileImage(userId, image)

Set user's profile image

Set a user's profile image based on user_id string parameter. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID
final image = BINARY_DATA_HERE; // MultipartFile | The image to be uploaded

try {
    final result = api_instance.setProfileImage(userId, image);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->setProfileImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **image** | **MultipartFile**| The image to be uploaded | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **switchAccountType**
> SwitchAccountType200Response switchAccountType(switchAccountTypeRequest)

Switch login method

Switch a user's login method from using email to OAuth2/SAML/LDAP or back to email. When switching to OAuth2/SAML, account switching is not complete until the user follows the returned link and completes any steps on the OAuth2/SAML service provider.  To switch from email to OAuth2/SAML, specify `current_service`, `new_service`, `email` and `password`.  To switch from OAuth2/SAML to email, specify `current_service`, `new_service`, `email` and `new_password`.  To switch from email to LDAP/AD, specify `current_service`, `new_service`, `email`, `password`, `ldap_ip` and `new_password` (this is the user's LDAP password).  To switch from LDAP/AD to email, specify `current_service`, `new_service`, `ldap_ip`, `password` (this is the user's LDAP password), `email`  and `new_password`.  Additionally, specify `mfa_code` when trying to switch an account on LDAP/AD or email that has MFA activated.  ##### Permissions No current authentication required except when switching from OAuth2/SAML to email. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final switchAccountTypeRequest = SwitchAccountTypeRequest(); // SwitchAccountTypeRequest | 

try {
    final result = api_instance.switchAccountType(switchAccountTypeRequest);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->switchAccountType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **switchAccountTypeRequest** | [**SwitchAccountTypeRequest**](SwitchAccountTypeRequest.md)|  | 

### Return type

[**SwitchAccountType200Response**](SwitchAccountType200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUser**
> User updateUser(userId, updateUserRequest)

Update a user

Update a user by providing the user object. The fields that can be updated are defined in the request body, all other provided fields will be ignored. Any fields not included in the request body will be set to null or reverted to default values. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID
final updateUserRequest = UpdateUserRequest(); // UpdateUserRequest | User object that is to be updated

try {
    final result = api_instance.updateUser(userId, updateUserRequest);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->updateUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **updateUserRequest** | [**UpdateUserRequest**](UpdateUserRequest.md)| User object that is to be updated | 

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserActive**
> StatusOK updateUserActive(userId, updateUserActiveRequest)

Update user active status

Update user active or inactive status.  __Since server version 4.6, users using a SSO provider to login can be activated or deactivated with this endpoint. However, if their activation status in Mattermost does not reflect their status in the SSO provider, the next synchronization or login by that user will reset the activation status to that of their account in the SSO provider. Server versions 4.5 and before do not allow activation or deactivation of SSO users from this endpoint.__ ##### Permissions User can deactivate themselves. User with `manage_system` permission can activate or deactivate a user. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID
final updateUserActiveRequest = UpdateUserActiveRequest(); // UpdateUserActiveRequest | Use `true` to set the user active, `false` for inactive

try {
    final result = api_instance.updateUserActive(userId, updateUserActiveRequest);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->updateUserActive: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **updateUserActiveRequest** | [**UpdateUserActiveRequest**](UpdateUserActiveRequest.md)| Use `true` to set the user active, `false` for inactive | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserAuth**
> UserAuthData updateUserAuth(userId, userAuthData)

Update a user's authentication method

Updates a user's authentication method. This can be used to change them to/from LDAP authentication for example.  __Minimum server version__: 4.6 ##### Permissions Must have the `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID
final userAuthData = UserAuthData(); // UserAuthData | 

try {
    final result = api_instance.updateUserAuth(userId, userAuthData);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->updateUserAuth: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **userAuthData** | [**UserAuthData**](UserAuthData.md)|  | 

### Return type

[**UserAuthData**](UserAuthData.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserMfa**
> StatusOK updateUserMfa(userId, updateUserMfaRequest)

Update a user's MFA

Activates multi-factor authentication for the user if `activate` is true and a valid `code` is provided. If activate is false, then `code` is not required and multi-factor authentication is disabled for the user. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID
final updateUserMfaRequest = UpdateUserMfaRequest(); // UpdateUserMfaRequest | 

try {
    final result = api_instance.updateUserMfa(userId, updateUserMfaRequest);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->updateUserMfa: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **updateUserMfaRequest** | [**UpdateUserMfaRequest**](UpdateUserMfaRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserPassword**
> StatusOK updateUserPassword(userId, updateUserPasswordRequest)

Update a user's password

Update a user's password. New password must meet password policy set by server configuration. Current password is required if you're updating your own password. ##### Permissions Must be logged in as the user the password is being changed for or have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID
final updateUserPasswordRequest = UpdateUserPasswordRequest(); // UpdateUserPasswordRequest | 

try {
    final result = api_instance.updateUserPassword(userId, updateUserPasswordRequest);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->updateUserPassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **updateUserPasswordRequest** | [**UpdateUserPasswordRequest**](UpdateUserPasswordRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserRoles**
> StatusOK updateUserRoles(userId, updateUserRolesRequest)

Update a user's roles

Update a user's system-level roles. Valid user roles are \"system_user\", \"system_admin\" or both of them. Overwrites any previously assigned system-level roles. ##### Permissions Must have the `manage_roles` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID
final updateUserRolesRequest = UpdateUserRolesRequest(); // UpdateUserRolesRequest | Space-delimited system roles to assign to the user

try {
    final result = api_instance.updateUserRoles(userId, updateUserRolesRequest);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->updateUserRoles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **updateUserRolesRequest** | [**UpdateUserRolesRequest**](UpdateUserRolesRequest.md)| Space-delimited system roles to assign to the user | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyUserEmail**
> StatusOK verifyUserEmail(verifyUserEmailRequest)

Verify user email

Verify the email used by a user to sign-up their account with. ##### Permissions No permissions required. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final verifyUserEmailRequest = VerifyUserEmailRequest(); // VerifyUserEmailRequest | 

try {
    final result = api_instance.verifyUserEmail(verifyUserEmailRequest);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->verifyUserEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verifyUserEmailRequest** | [**VerifyUserEmailRequest**](VerifyUserEmailRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyUserEmailWithoutToken**
> User verifyUserEmailWithoutToken(userId)

Verify user email by ID

Verify the email used by a user without a token.  __Minimum server version__: 5.24  ##### Permissions  Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | User GUID

try {
    final result = api_instance.verifyUserEmailWithoutToken(userId);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->verifyUserEmailWithoutToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

