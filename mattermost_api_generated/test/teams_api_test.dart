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


/// tests for TeamsApi
void main() {
  // final instance = TeamsApi();

  group('tests for TeamsApi', () {
    // Add user to team
    //
    // Add user to the team by user_id. ##### Permissions Must be authenticated and team be open to add self. For adding another user, authenticated user must have the `add_user_to_team` permission. 
    //
    //Future<TeamMember> addTeamMember(String teamId, AddTeamMemberRequest addTeamMemberRequest) async
    test('test addTeamMember', () async {
      // TODO
    });

    // Add user to team from invite
    //
    // Using either an invite id or hash/data pair from an email invite link, add a user to a team. ##### Permissions Must be authenticated. 
    //
    //Future<TeamMember> addTeamMemberFromInvite(String token) async
    test('test addTeamMemberFromInvite', () async {
      // TODO
    });

    // Add multiple users to team
    //
    // Add a number of users to the team by user_id. ##### Permissions Must be authenticated. Authenticated user must have the `add_user_to_team` permission. 
    //
    //Future<List<TeamMember>> addTeamMembers(String teamId, List<TeamMember> teamMember, { bool graceful }) async
    test('test addTeamMembers', () async {
      // TODO
    });

    // Create a team
    //
    // Create a new team on the system. ##### Permissions Must be authenticated and have the `create_team` permission. 
    //
    //Future<Team> createTeam(CreateTeamRequest createTeamRequest) async
    test('test createTeam', () async {
      // TODO
    });

    // Get teams
    //
    // For regular users only returns open teams. Users with the \"manage_system\" permission will return teams regardless of type. The result is based on query string parameters - page and per_page. ##### Permissions Must be authenticated. \"manage_system\" permission is required to show all teams. 
    //
    //Future<List<Team>> getAllTeams({ int page, int perPage, bool includeTotalCount, bool excludePolicyConstrained }) async
    test('test getAllTeams', () async {
      // TODO
    });

    // Get a team
    //
    // Get a team on the system. ##### Permissions Must be authenticated and have the `view_team` permission. 
    //
    //Future<Team> getTeam(String teamId) async
    test('test getTeam', () async {
      // TODO
    });

    // Get a team by name
    //
    // Get a team based on provided name string ##### Permissions Must be authenticated, team type is open and have the `view_team` permission. 
    //
    //Future<Team> getTeamByName(String name) async
    test('test getTeamByName', () async {
      // TODO
    });

    // Get the team icon
    //
    // Get the team icon of the team.  __Minimum server version__: 4.9  ##### Permissions User must be authenticated. In addition, team must be open or the user must have the `view_team` permission. 
    //
    //Future getTeamIcon(String teamId) async
    test('test getTeamIcon', () async {
      // TODO
    });

    // Get invite info for a team
    //
    // Get the `name`, `display_name`, `description` and `id` for a team from the invite id.  __Minimum server version__: 4.0  ##### Permissions No authentication required. 
    //
    //Future<GetTeamInviteInfo200Response> getTeamInviteInfo(String inviteId) async
    test('test getTeamInviteInfo', () async {
      // TODO
    });

    // Get a team member
    //
    // Get a team member on the system. ##### Permissions Must be authenticated and have the `view_team` permission. 
    //
    //Future<TeamMember> getTeamMember(String teamId, String userId) async
    test('test getTeamMember', () async {
      // TODO
    });

    // Get team members
    //
    // Get a page team members list based on query string parameters - team id, page and per page. ##### Permissions Must be authenticated and have the `view_team` permission. 
    //
    //Future<List<TeamMember>> getTeamMembers(String teamId, { int page, int perPage }) async
    test('test getTeamMembers', () async {
      // TODO
    });

    // Get team members by ids
    //
    // Get a list of team members based on a provided array of user ids. ##### Permissions Must have `view_team` permission for the team. 
    //
    //Future<List<TeamMember>> getTeamMembersByIds(String teamId, List<String> requestBody) async
    test('test getTeamMembersByIds', () async {
      // TODO
    });

    // Get team members for a user
    //
    // Get a list of team members for a user. Useful for getting the ids of teams the user is on and the roles they have in those teams. ##### Permissions Must be logged in as the user or have the `edit_other_users` permission. 
    //
    //Future<List<TeamMember>> getTeamMembersForUser(String userId) async
    test('test getTeamMembersForUser', () async {
      // TODO
    });

    // Get a team stats
    //
    // Get a team stats on the system. ##### Permissions Must be authenticated and have the `view_team` permission. 
    //
    //Future<TeamStats> getTeamStats(String teamId) async
    test('test getTeamStats', () async {
      // TODO
    });

    // Get unreads for a team
    //
    // Get the unread mention and message counts for a team for the specified user. ##### Permissions Must be the user or have `edit_other_users` permission and have `view_team` permission for the team. 
    //
    //Future<TeamUnread> getTeamUnread(String userId, String teamId) async
    test('test getTeamUnread', () async {
      // TODO
    });

    // Get a user's teams
    //
    // Get a list of teams that a user is on. ##### Permissions Must be authenticated as the user or have the `manage_system` permission. 
    //
    //Future<List<Team>> getTeamsForUser(String userId) async
    test('test getTeamsForUser', () async {
      // TODO
    });

    // Get team unreads for a user
    //
    // Get the count for unread messages and mentions in the teams the user is a member of. ##### Permissions Must be logged in. 
    //
    //Future<List<TeamUnread>> getTeamsUnreadForUser(String userId, String excludeTeam, { bool includeCollapsedThreads }) async
    test('test getTeamsUnreadForUser', () async {
      // TODO
    });

    // Import a Team from other application
    //
    // Import a team into a existing team. Import users, channels, posts, hooks. ##### Permissions Must have `permission_import_team` permission. 
    //
    //Future<ImportTeam200Response> importTeam(String teamId, MultipartFile file, int filesize, String importFrom) async
    test('test importTeam', () async {
      // TODO
    });

    // Invalidate active email invitations
    //
    // Invalidate active email invitations that have not been accepted by the user. ##### Permissions Must have `sysconsole_write_authentication` permission. 
    //
    //Future<StatusOK> invalidateEmailInvites() async
    test('test invalidateEmailInvites', () async {
      // TODO
    });

    // Invite guests to the team by email
    //
    // Invite guests to existing team channels usign the user's email.  The number of emails that can be sent is rate limited to 20 per hour with a burst of 20 emails. If the rate limit exceeds, the error message contains details on when to retry and when the timer will be reset.  __Minimum server version__: 5.16  ##### Permissions Must have `invite_guest` permission for the team. 
    //
    //Future<StatusOK> inviteGuestsToTeam(String teamId, InviteGuestsToTeamRequest inviteGuestsToTeamRequest) async
    test('test inviteGuestsToTeam', () async {
      // TODO
    });

    // Invite users to the team by email
    //
    // Invite users to the existing team using the user's email.  The number of emails that can be sent is rate limited to 20 per hour with a burst of 20 emails. If the rate limit exceeds, the error message contains details on when to retry and when the timer will be reset. ##### Permissions Must have `invite_user` and `add_user_to_team` permissions for the team. 
    //
    //Future<StatusOK> inviteUsersToTeam(String teamId, List<String> requestBody) async
    test('test inviteUsersToTeam', () async {
      // TODO
    });

    // Patch a team
    //
    // Partially update a team by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must have the `manage_team` permission. 
    //
    //Future<Team> patchTeam(String teamId, PatchTeamRequest patchTeamRequest) async
    test('test patchTeam', () async {
      // TODO
    });

    // Regenerate the Invite ID from a Team
    //
    // Regenerates the invite ID used in invite links of a team ##### Permissions Must be authenticated and have the `manage_team` permission. 
    //
    //Future<Team> regenerateTeamInviteId(String teamId) async
    test('test regenerateTeamInviteId', () async {
      // TODO
    });

    // Remove the team icon
    //
    // Remove the team icon for the team.  __Minimum server version__: 4.10  ##### Permissions Must be authenticated and have the `manage_team` permission. 
    //
    //Future<StatusOK> removeTeamIcon(String teamId) async
    test('test removeTeamIcon', () async {
      // TODO
    });

    // Remove user from team
    //
    // Delete the team member object for a user, effectively removing them from a team. ##### Permissions Must be logged in as the user or have the `remove_user_from_team` permission. 
    //
    //Future<StatusOK> removeTeamMember(String teamId, String userId) async
    test('test removeTeamMember', () async {
      // TODO
    });

    // Restore a team
    //
    // Restore a team that was previously soft deleted.  __Minimum server version__: 5.24  ##### Permissions Must have the `manage_team` permission. 
    //
    //Future<Team> restoreTeam(String teamId) async
    test('test restoreTeam', () async {
      // TODO
    });

    // Search files in a team
    //
    // Search for files in a team based on file name, extention and file content (if file content extraction is enabled and supported for the files). __Minimum server version__: 5.34 ##### Permissions Must be authenticated and have the `view_team` permission. 
    //
    //Future<FileInfoList> searchFiles(String teamId, String terms, bool isOrSearch, { int timeZoneOffset, bool includeDeletedChannels, int page, int perPage }) async
    test('test searchFiles', () async {
      // TODO
    });

    // Search teams
    //
    // Search teams based on search term and options provided in the request body.  ##### Permissions Logged in user only shows open teams Logged in user with \"manage_system\" permission shows all teams 
    //
    //Future<SearchTeams200Response> searchTeams(SearchTeamsRequest searchTeamsRequest) async
    test('test searchTeams', () async {
      // TODO
    });

    // Sets the team icon
    //
    // Sets the team icon for the team.  __Minimum server version__: 4.9  ##### Permissions Must be authenticated and have the `manage_team` permission. 
    //
    //Future<StatusOK> setTeamIcon(String teamId, MultipartFile image) async
    test('test setTeamIcon', () async {
      // TODO
    });

    // Delete a team
    //
    // Soft deletes a team, by marking the team as deleted in the database. Soft deleted teams will not be accessible in the user interface.  Optionally use the permanent query parameter to hard delete the team for compliance reasons. As of server version 5.0, to use this feature `ServiceSettings.EnableAPITeamDeletion` must be set to `true` in the server's configuration. ##### Permissions Must have the `manage_team` permission. 
    //
    //Future<StatusOK> softDeleteTeam(String teamId, { bool permanent }) async
    test('test softDeleteTeam', () async {
      // TODO
    });

    // Check if team exists
    //
    // Check if the team exists based on a team name. ##### Permissions Must be authenticated. 
    //
    //Future<TeamExists> teamExists(String name) async
    test('test teamExists', () async {
      // TODO
    });

    // Team members minus group members.
    //
    // Get the set of users who are members of the team minus the set of users who are members of the given groups. Each user object contains an array of group objects representing the group memberships for that user. Each user object contains the boolean fields `scheme_guest`, `scheme_user`, and `scheme_admin` representing the roles that user has for the given team.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.14 
    //
    //Future teamMembersMinusGroupMembers(String teamId, String groupIds, { int page, int perPage }) async
    test('test teamMembersMinusGroupMembers', () async {
      // TODO
    });

    // Update a team
    //
    // Update a team by providing the team object. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must have the `manage_team` permission. 
    //
    //Future<Team> updateTeam(String teamId, UpdateTeamRequest updateTeamRequest) async
    test('test updateTeam', () async {
      // TODO
    });

    // Update a team member roles
    //
    // Update a team member roles. Valid team roles are \"team_user\", \"team_admin\" or both of them. Overwrites any previously assigned team roles. ##### Permissions Must be authenticated and have the `manage_team_roles` permission. 
    //
    //Future<StatusOK> updateTeamMemberRoles(String teamId, String userId, UpdateUserRolesRequest updateUserRolesRequest) async
    test('test updateTeamMemberRoles', () async {
      // TODO
    });

    // Update the scheme-derived roles of a team member.
    //
    // Update a team member's scheme_admin/scheme_user properties. Typically this should either be `scheme_admin=false, scheme_user=true` for ordinary team member, or `scheme_admin=true, scheme_user=true` for a team admin.  __Minimum server version__: 5.0  ##### Permissions Must be authenticated and have the `manage_team_roles` permission. 
    //
    //Future<StatusOK> updateTeamMemberSchemeRoles(String teamId, String userId, UpdateTeamMemberSchemeRolesRequest updateTeamMemberSchemeRolesRequest) async
    test('test updateTeamMemberSchemeRoles', () async {
      // TODO
    });

    // Update teams's privacy
    //
    // Updates team's privacy allowing changing a team from Public (open) to Private (invitation only) and back.  __Minimum server version__: 5.24  ##### Permissions `manage_team` permission for the team of the team. 
    //
    //Future<Team> updateTeamPrivacy(String teamId, UpdateTeamPrivacyRequest updateTeamPrivacyRequest) async
    test('test updateTeamPrivacy', () async {
      // TODO
    });

    // Set a team's scheme
    //
    // Set a team's scheme, more specifically sets the scheme_id value of a team record.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 
    //
    //Future<StatusOK> updateTeamScheme(String teamId, UpdateTeamSchemeRequest updateTeamSchemeRequest) async
    test('test updateTeamScheme', () async {
      // TODO
    });

  });
}
