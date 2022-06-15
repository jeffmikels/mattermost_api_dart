//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:mattermost_api/api.dart';
import 'package:test/test.dart';


/// tests for MattermostUsersApi
void main() {
  // final instance = MattermostUsersApi();

  group('tests for MattermostUsersApi', () {
    // Attach mobile device
    //
    // Attach a mobile device id to the currently logged in session. This will enable push notifications for a user, if configured by the server. ##### Permissions Must be authenticated. 
    //
    //Future<MMStatusOK> attachDeviceId(MMAttachDeviceIdRequest mMAttachDeviceIdRequest) async
    test('test attachDeviceId', () async {
      // TODO
    });

    // Autocomplete users
    //
    // Get a list of users for the purpose of autocompleting based on the provided search term. Specify a combination of `team_id` and `channel_id` to filter results further. ##### Permissions Requires an active session and `view_team` and `read_channel` on any teams or channels used to filter the results further. 
    //
    //Future<MMUserAutocomplete> autocompleteUsers(String name, { String teamId, String channelId, int limit }) async
    test('test autocompleteUsers', () async {
      // TODO
    });

    // Check MFA
    //
    // Check if a user has multi-factor authentication active on their account by providing a login id. Used to check whether an MFA code needs to be provided when logging in. ##### Permissions No permission required. 
    //
    //Future<MMCheckUserMfa200Response> checkUserMfa(MMCheckUserMfaRequest mMCheckUserMfaRequest) async
    test('test checkUserMfa', () async {
      // TODO
    });

    // Convert a bot into a user
    //
    // Convert a bot into a user.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 
    //
    //Future<MMStatusOK> convertBotToUser(String botUserId, MMConvertBotToUserRequest mMConvertBotToUserRequest, { bool setSystemAdmin }) async
    test('test convertBotToUser', () async {
      // TODO
    });

    // Convert a user into a bot
    //
    // Convert a user into a bot.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 
    //
    //Future<MMStatusOK> convertUserToBot(String userId) async
    test('test convertUserToBot', () async {
      // TODO
    });

    // Create a user
    //
    // Create a new user on the system. Password is required for email login. For other authentication types such as LDAP or SAML, auth_data and auth_service fields are required. ##### Permissions No permission required for creating email/username accounts on an open server. Auth Token is required for other authentication types such as LDAP or SAML. 
    //
    //Future<MMUser> createUser(MMCreateUserRequest mMCreateUserRequest, { String t, String iid }) async
    test('test createUser', () async {
      // TODO
    });

    // Create a user access token
    //
    // Generate a user access token that can be used to authenticate with the Mattermost REST API.  __Minimum server version__: 4.1  ##### Permissions Must have `create_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 
    //
    //Future<MMUserAccessToken> createUserAccessToken(String userId, MMCreateUserAccessTokenRequest mMCreateUserAccessTokenRequest) async
    test('test createUserAccessToken', () async {
      // TODO
    });

    // Deactivate a user account.
    //
    // Deactivates the user and revokes all its sessions by archiving its user object.  As of server version 5.28, optionally use the `permanent=true` query parameter to permanently delete the user for compliance reasons. To use this feature `ServiceSettings.EnableAPIUserDeletion` must be set to `true` in the server's configuration. ##### Permissions Must be logged in as the user being deactivated or have the `edit_other_users` permission. 
    //
    //Future<MMStatusOK> deleteUser(String userId) async
    test('test deleteUser', () async {
      // TODO
    });

    // Demote a user to a guest
    //
    // Convert a regular user into a guest. This will convert the user into a guest for the whole system while retaining their existing team and channel memberships.  __Minimum server version__: 5.16  ##### Permissions Must be logged in as the user or have the `demote_to_guest` permission. 
    //
    //Future<MMStatusOK> demoteUserToGuest(String userId) async
    test('test demoteUserToGuest', () async {
      // TODO
    });

    // Disable personal access token
    //
    // Disable a personal access token and delete any sessions using the token. The token can be re-enabled using `/users/tokens/enable`.  __Minimum server version__: 4.4  ##### Permissions Must have `revoke_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 
    //
    //Future<MMStatusOK> disableUserAccessToken(MMDisableUserAccessTokenRequest mMDisableUserAccessTokenRequest) async
    test('test disableUserAccessToken', () async {
      // TODO
    });

    // Enable personal access token
    //
    // Re-enable a personal access token that has been disabled.  __Minimum server version__: 4.4  ##### Permissions Must have `create_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 
    //
    //Future<MMStatusOK> enableUserAccessToken(MMEnableUserAccessTokenRequest mMEnableUserAccessTokenRequest) async
    test('test enableUserAccessToken', () async {
      // TODO
    });

    // Generate MFA secret
    //
    // Generates an multi-factor authentication secret for a user and returns it as a string and as base64 encoded QR code image. ##### Permissions Must be logged in as the user or have the `edit_other_users` permission. 
    //
    //Future<MMGenerateMfaSecret200Response> generateMfaSecret(String userId) async
    test('test generateMfaSecret', () async {
      // TODO
    });

    // Get all channel members from all teams for a user
    //
    // Get all channel members from all teams for a user.  __Minimum server version__: 6.2.0  ##### Permissions Logged in as the user, or have `edit_other_users` permission. 
    //
    //Future<List<MMChannelMemberWithTeamData>> getChannelMembersWithTeamDataForUser(String userId, { int page, int pageSize }) async
    test('test getChannelMembersWithTeamDataForUser', () async {
      // TODO
    });

    // Return user's default (generated) profile image
    //
    // Returns the default (generated) user profile image based on user_id string parameter. ##### Permissions Must be logged in. __Minimum server version__: 5.5 
    //
    //Future getDefaultProfileImage(String userId) async
    test('test getDefaultProfileImage', () async {
      // TODO
    });

    // Get user IDs of known users
    //
    // Get the list of user IDs of users with any direct relationship with a user. That means any user sharing any channel, including direct and group channels. ##### Permissions Must be authenticated.  __Minimum server version__: 5.23 
    //
    //Future<MMUsersStats> getKnownUsers() async
    test('test getKnownUsers', () async {
      // TODO
    });

    // Get user's profile image
    //
    // Get a user's profile image based on user_id string parameter. ##### Permissions Must be logged in. 
    //
    //Future getProfileImage(String userId, { num q }) async
    test('test getProfileImage', () async {
      // TODO
    });

    // Get user's sessions
    //
    // Get a list of sessions by providing the user GUID. Sensitive information will be sanitized out. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 
    //
    //Future<List<MMSession>> getSessions(String userId) async
    test('test getSessions', () async {
      // TODO
    });

    // Get total count of users in the system
    //
    // Get a total count of users in the system. ##### Permissions Must be authenticated. 
    //
    //Future<MMUsersStats> getTotalUsersStats() async
    test('test getTotalUsersStats', () async {
      // TODO
    });

    // Get total count of users in the system matching the specified filters
    //
    // Get a count of users in the system matching the specified filters.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 
    //
    //Future<MMUsersStats> getTotalUsersStatsFiltered({ String inTeam, String inChannel, bool includeDeleted, bool includeBots, String roles, String channelRoles, String teamRoles }) async
    test('test getTotalUsersStatsFiltered', () async {
      // TODO
    });

    // Get uploads for a user
    //
    // Gets all the upload sessions belonging to a user.  __Minimum server version__: 5.28  ##### Permissions Must be logged in as the user who created the upload sessions. 
    //
    //Future<List<MMUploadSession>> getUploadsForUser(String userId) async
    test('test getUploadsForUser', () async {
      // TODO
    });

    // Get a user
    //
    // Get a user a object. Sensitive information will be sanitized out. ##### Permissions Requires an active session but no other permissions. 
    //
    //Future<MMUser> getUser(String userId) async
    test('test getUser', () async {
      // TODO
    });

    // Get a user access token
    //
    // Get a user access token. Does not include the actual authentication token.  __Minimum server version__: 4.1  ##### Permissions Must have `read_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 
    //
    //Future<MMUserAccessTokenSanitized> getUserAccessToken(String tokenId) async
    test('test getUserAccessToken', () async {
      // TODO
    });

    // Get user access tokens
    //
    // Get a page of user access tokens for users on the system. Does not include the actual authentication tokens. Use query parameters for paging.  __Minimum server version__: 4.7  ##### Permissions Must have `manage_system` permission. 
    //
    //Future<List<MMUserAccessTokenSanitized>> getUserAccessTokens({ int page, int perPage }) async
    test('test getUserAccessTokens', () async {
      // TODO
    });

    // Get user access tokens
    //
    // Get a list of user access tokens for a user. Does not include the actual authentication tokens. Use query parameters for paging.  __Minimum server version__: 4.1  ##### Permissions Must have `read_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 
    //
    //Future<List<MMUserAccessTokenSanitized>> getUserAccessTokensForUser(String userId, { int page, int perPage }) async
    test('test getUserAccessTokensForUser', () async {
      // TODO
    });

    // Get user's audits
    //
    // Get a list of audit by providing the user GUID. ##### Permissions Must be logged in as the user or have the `edit_other_users` permission. 
    //
    //Future<List<MMAudit>> getUserAudits(String userId) async
    test('test getUserAudits', () async {
      // TODO
    });

    // Get a user by email
    //
    // Get a user object by providing a user email. Sensitive information will be sanitized out. ##### Permissions Requires an active session and for the current session to be able to view another user's email based on the server's privacy settings. 
    //
    //Future<MMUser> getUserByEmail(String email) async
    test('test getUserByEmail', () async {
      // TODO
    });

    // Get a user by username
    //
    // Get a user object by providing a username. Sensitive information will be sanitized out. ##### Permissions Requires an active session but no other permissions. 
    //
    //Future<MMUser> getUserByUsername(String username) async
    test('test getUserByUsername', () async {
      // TODO
    });

    // Fetches user's latest terms of service action if the latest action was for acceptance.
    //
    // Will be deprecated in v6.0 Fetches user's latest terms of service action if the latest action was for acceptance.  __Minimum server version__: 5.6 ##### Permissions Must be logged in as the user being acted on. 
    //
    //Future<MMUserTermsOfService> getUserTermsOfService(String userId) async
    test('test getUserTermsOfService', () async {
      // TODO
    });

    // Get users
    //
    // Get a page of a list of users. Based on query string parameters, select users from a team, channel, or select users not in a specific channel.  Since server version 4.0, some basic sorting is available using the `sort` query parameter. Sorting is currently only supported when selecting users on a team. ##### Permissions Requires an active session and (if specified) membership to the channel or team being selected from. 
    //
    //Future<List<MMUser>> getUsers({ int page, int perPage, String inTeam, String notInTeam, String inChannel, String notInChannel, String inGroup, bool groupConstrained, bool withoutTeam, bool active, bool inactive, String role, String sort, String roles, String channelRoles, String teamRoles }) async
    test('test getUsers', () async {
      // TODO
    });

    // Get users by group channels ids
    //
    // Get an object containing a key per group channel id in the query and its value as a list of users members of that group channel.  The user must be a member of the group ids in the query, or they will be omitted from the response. ##### Permissions Requires an active session but no other permissions.  __Minimum server version__: 5.14 
    //
    //Future<MMGetUsersByGroupChannelIds200Response> getUsersByGroupChannelIds(List<String> requestBody) async
    test('test getUsersByGroupChannelIds', () async {
      // TODO
    });

    // Get users by ids
    //
    // Get a list of users based on a provided list of user ids. ##### Permissions Requires an active session but no other permissions. 
    //
    //Future<List<MMUser>> getUsersByIds(List<String> requestBody, { int since }) async
    test('test getUsersByIds', () async {
      // TODO
    });

    // Get users by usernames
    //
    // Get a list of users based on a provided list of usernames. ##### Permissions Requires an active session but no other permissions. 
    //
    //Future<List<MMUser>> getUsersByUsernames(List<String> requestBody) async
    test('test getUsersByUsernames', () async {
      // TODO
    });

    // Login to Mattermost server
    //
    // ##### Permissions No permission required 
    //
    //Future<MMUser> login(MMLoginRequest mMLoginRequest) async
    test('test login', () async {
      // TODO
    });

    // Auto-Login to Mattermost server using CWS token
    //
    // CWS stands for Customer Web Server which is the cloud service used to manage cloud instances. ##### Permissions A Cloud license is required 
    //
    //Future loginByCwsToken(MMLoginByCwsTokenRequest mMLoginByCwsTokenRequest) async
    test('test loginByCwsToken', () async {
      // TODO
    });

    // Logout from the Mattermost server
    //
    // ##### Permissions An active session is required 
    //
    //Future<MMStatusOK> logout() async
    test('test logout', () async {
      // TODO
    });

    // Migrate user accounts authentication type to LDAP.
    //
    // Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to LDAP. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 
    //
    //Future migrateAuthToLdap({ MMMigrateAuthToLdapRequest mMMigrateAuthToLdapRequest }) async
    test('test migrateAuthToLdap', () async {
      // TODO
    });

    // Migrate user accounts authentication type to SAML.
    //
    // Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to SAML. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 
    //
    //Future migrateAuthToSaml({ MMMigrateAuthToSamlRequest mMMigrateAuthToSamlRequest }) async
    test('test migrateAuthToSaml', () async {
      // TODO
    });

    // Patch a user
    //
    // Partially update a user by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 
    //
    //Future<MMUser> patchUser(String userId, MMPatchUserRequest mMPatchUserRequest) async
    test('test patchUser', () async {
      // TODO
    });

    // Permanent delete all users
    //
    // Permanently deletes all users and all their related information, including posts.  __Minimum server version__: 5.26.0  __Local mode only__: This endpoint is only available through [local mode](https://docs.mattermost.com/administration/mmctl-cli-tool.html#local-mode). 
    //
    //Future permanentDeleteAllUsers() async
    test('test permanentDeleteAllUsers', () async {
      // TODO
    });

    // Promote a guest to user
    //
    // Convert a guest into a regular user. This will convert the guest into a user for the whole system while retaining any team and channel memberships and automatically joining them to the default channels.  __Minimum server version__: 5.16  ##### Permissions Must be logged in as the user or have the `promote_guest` permission. 
    //
    //Future<MMStatusOK> promoteGuestToUser(String userId) async
    test('test promoteGuestToUser', () async {
      // TODO
    });

    // Publish a user typing websocket event.
    //
    // Notify users in the given channel via websocket that the given user is typing. __Minimum server version__: 5.26 ##### Permissions Must have `manage_system` permission to publish for any user other than oneself. 
    //
    //Future publishUserTyping(String userId, { MMPublishUserTypingRequest mMPublishUserTypingRequest }) async
    test('test publishUserTyping', () async {
      // TODO
    });

    // Records user action when they accept or decline custom terms of service
    //
    // Records user action when they accept or decline custom terms of service. Records the action in audit table. Updates user's last accepted terms of service ID if they accepted it.  __Minimum server version__: 5.4 ##### Permissions Must be logged in as the user being acted on. 
    //
    //Future<MMStatusOK> registerTermsOfServiceAction(String userId, MMRegisterTermsOfServiceActionRequest mMRegisterTermsOfServiceActionRequest) async
    test('test registerTermsOfServiceAction', () async {
      // TODO
    });

    // Reset password
    //
    // Update the password for a user using a one-use, timed recovery code tied to the user's account. Only works for non-SSO users. ##### Permissions No permissions required. 
    //
    //Future<MMStatusOK> resetPassword(MMResetPasswordRequest mMResetPasswordRequest) async
    test('test resetPassword', () async {
      // TODO
    });

    // Revoke all active sessions for a user
    //
    // Revokes all user sessions from the provided user id and session id strings. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. __Minimum server version__: 4.4 
    //
    //Future<MMStatusOK> revokeAllSessions(String userId) async
    test('test revokeAllSessions', () async {
      // TODO
    });

    // Revoke a user session
    //
    // Revokes a user session from the provided user id and session id strings. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 
    //
    //Future<MMStatusOK> revokeSession(String userId, MMRevokeSessionRequest mMRevokeSessionRequest) async
    test('test revokeSession', () async {
      // TODO
    });

    // Revoke all sessions from all users.
    //
    // For any session currently on the server (including admin) it will be revoked. Clients will be notified to log out users.  __Minimum server version__: 5.14  ##### Permissions Must have `manage_system` permission. 
    //
    //Future revokeSessionsFromAllUsers() async
    test('test revokeSessionsFromAllUsers', () async {
      // TODO
    });

    // Revoke a user access token
    //
    // Revoke a user access token and delete any sessions using the token.  __Minimum server version__: 4.1  ##### Permissions Must have `revoke_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 
    //
    //Future<MMStatusOK> revokeUserAccessToken(MMRevokeUserAccessTokenRequest mMRevokeUserAccessTokenRequest) async
    test('test revokeUserAccessToken', () async {
      // TODO
    });

    // Search tokens
    //
    // Get a list of tokens based on search criteria provided in the request body. Searches are done against the token id, user id and username.  __Minimum server version__: 4.7  ##### Permissions Must have `manage_system` permission. 
    //
    //Future<List<MMUserAccessTokenSanitized>> searchUserAccessTokens(MMSearchUserAccessTokensRequest mMSearchUserAccessTokensRequest) async
    test('test searchUserAccessTokens', () async {
      // TODO
    });

    // Search users
    //
    // Get a list of users based on search criteria provided in the request body. Searches are typically done against username, full name, nickname and email unless otherwise configured by the server. ##### Permissions Requires an active session and `read_channel` and/or `view_team` permissions for any channels or teams specified in the request body. 
    //
    //Future<List<MMUser>> searchUsers(MMSearchUsersRequest mMSearchUsersRequest) async
    test('test searchUsers', () async {
      // TODO
    });

    // Send password reset email
    //
    // Send an email containing a link for resetting the user's password. The link will contain a one-use, timed recovery code tied to the user's account. Only works for non-SSO users. ##### Permissions No permissions required. 
    //
    //Future<MMStatusOK> sendPasswordResetEmail(MMSendPasswordResetEmailRequest mMSendPasswordResetEmailRequest) async
    test('test sendPasswordResetEmail', () async {
      // TODO
    });

    // Send verification email
    //
    // Send an email with a verification link to a user that has an email matching the one in the request body. This endpoint will return success even if the email does not match any users on the system. ##### Permissions No permissions required. 
    //
    //Future<MMStatusOK> sendVerificationEmail(MMSendVerificationEmailRequest mMSendVerificationEmailRequest) async
    test('test sendVerificationEmail', () async {
      // TODO
    });

    // Delete user's profile image
    //
    // Delete user's profile image and reset to default image based on user_id string parameter. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. __Minimum server version__: 5.5 
    //
    //Future<MMStatusOK> setDefaultProfileImage(String userId) async
    test('test setDefaultProfileImage', () async {
      // TODO
    });

    // Set user's profile image
    //
    // Set a user's profile image based on user_id string parameter. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 
    //
    //Future<MMStatusOK> setProfileImage(String userId, MultipartFile image) async
    test('test setProfileImage', () async {
      // TODO
    });

    // Switch login method
    //
    // Switch a user's login method from using email to OAuth2/SAML/LDAP or back to email. When switching to OAuth2/SAML, account switching is not complete until the user follows the returned link and completes any steps on the OAuth2/SAML service provider.  To switch from email to OAuth2/SAML, specify `current_service`, `new_service`, `email` and `password`.  To switch from OAuth2/SAML to email, specify `current_service`, `new_service`, `email` and `new_password`.  To switch from email to LDAP/AD, specify `current_service`, `new_service`, `email`, `password`, `ldap_ip` and `new_password` (this is the user's LDAP password).  To switch from LDAP/AD to email, specify `current_service`, `new_service`, `ldap_ip`, `password` (this is the user's LDAP password), `email`  and `new_password`.  Additionally, specify `mfa_code` when trying to switch an account on LDAP/AD or email that has MFA activated.  ##### Permissions No current authentication required except when switching from OAuth2/SAML to email. 
    //
    //Future<MMSwitchAccountType200Response> switchAccountType(MMSwitchAccountTypeRequest mMSwitchAccountTypeRequest) async
    test('test switchAccountType', () async {
      // TODO
    });

    // Update a user
    //
    // Update a user by providing the user object. The fields that can be updated are defined in the request body, all other provided fields will be ignored. Any fields not included in the request body will be set to null or reverted to default values. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 
    //
    //Future<MMUser> updateUser(String userId, MMUpdateUserRequest mMUpdateUserRequest) async
    test('test updateUser', () async {
      // TODO
    });

    // Update user active status
    //
    // Update user active or inactive status.  __Since server version 4.6, users using a SSO provider to login can be activated or deactivated with this endpoint. However, if their activation status in Mattermost does not reflect their status in the SSO provider, the next synchronization or login by that user will reset the activation status to that of their account in the SSO provider. Server versions 4.5 and before do not allow activation or deactivation of SSO users from this endpoint.__ ##### Permissions User can deactivate themselves. User with `manage_system` permission can activate or deactivate a user. 
    //
    //Future<MMStatusOK> updateUserActive(String userId, MMUpdateUserActiveRequest mMUpdateUserActiveRequest) async
    test('test updateUserActive', () async {
      // TODO
    });

    // Update a user's authentication method
    //
    // Updates a user's authentication method. This can be used to change them to/from LDAP authentication for example.  __Minimum server version__: 4.6 ##### Permissions Must have the `edit_other_users` permission. 
    //
    //Future<MMUserAuthData> updateUserAuth(String userId, MMUserAuthData mMUserAuthData) async
    test('test updateUserAuth', () async {
      // TODO
    });

    // Update a user's MFA
    //
    // Activates multi-factor authentication for the user if `activate` is true and a valid `code` is provided. If activate is false, then `code` is not required and multi-factor authentication is disabled for the user. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 
    //
    //Future<MMStatusOK> updateUserMfa(String userId, MMUpdateUserMfaRequest mMUpdateUserMfaRequest) async
    test('test updateUserMfa', () async {
      // TODO
    });

    // Update a user's password
    //
    // Update a user's password. New password must meet password policy set by server configuration. Current password is required if you're updating your own password. ##### Permissions Must be logged in as the user the password is being changed for or have `manage_system` permission. 
    //
    //Future<MMStatusOK> updateUserPassword(String userId, MMUpdateUserPasswordRequest mMUpdateUserPasswordRequest) async
    test('test updateUserPassword', () async {
      // TODO
    });

    // Update a user's roles
    //
    // Update a user's system-level roles. Valid user roles are \"system_user\", \"system_admin\" or both of them. Overwrites any previously assigned system-level roles. ##### Permissions Must have the `manage_roles` permission. 
    //
    //Future<MMStatusOK> updateUserRoles(String userId, MMUpdateUserRolesRequest mMUpdateUserRolesRequest) async
    test('test updateUserRoles', () async {
      // TODO
    });

    // Verify user email
    //
    // Verify the email used by a user to sign-up their account with. ##### Permissions No permissions required. 
    //
    //Future<MMStatusOK> verifyUserEmail(MMVerifyUserEmailRequest mMVerifyUserEmailRequest) async
    test('test verifyUserEmail', () async {
      // TODO
    });

    // Verify user email by ID
    //
    // Verify the email used by a user without a token.  __Minimum server version__: 5.24  ##### Permissions  Must have `manage_system` permission. 
    //
    //Future<MMUser> verifyUserEmailWithoutToken(String userId) async
    test('test verifyUserEmailWithoutToken', () async {
      // TODO
    });

  });
}
