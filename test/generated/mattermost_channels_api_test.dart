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


/// tests for MattermostChannelsApi
void main() {
  // final instance = MattermostChannelsApi();

  group('tests for MattermostChannelsApi', () {
    // Add user to channel
    //
    // Add a user to a channel by creating a channel member object.
    //
    //Future<MattermostChannelMember> addChannelMember(String channelId, MattermostAddChannelMemberRequest mattermostAddChannelMemberRequest) async
    test('test addChannelMember', () async {
      // TODO
    });

    // Autocomplete channels
    //
    // Autocomplete public channels on a team based on the search term provided in the request URL.  __Minimum server version__: 4.7  ##### Permissions Must have the `list_team_channels` permission. 
    //
    //Future<List<MattermostChannel>> autocompleteChannelsForTeam(String teamId, String name) async
    test('test autocompleteChannelsForTeam', () async {
      // TODO
    });

    // Autocomplete channels for search
    //
    // Autocomplete your channels on a team based on the search term provided in the request URL.  __Minimum server version__: 5.4  ##### Permissions Must have the `list_team_channels` permission. 
    //
    //Future<List<MattermostChannel>> autocompleteChannelsForTeamForSearch(String teamId, String name) async
    test('test autocompleteChannelsForTeamForSearch', () async {
      // TODO
    });

    // Channel members minus group members.
    //
    // Get the set of users who are members of the channel minus the set of users who are members of the given groups. Each user object contains an array of group objects representing the group memberships for that user. Each user object contains the boolean fields `scheme_guest`, `scheme_user`, and `scheme_admin` representing the roles that user has for the given channel.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.14 
    //
    //Future channelMembersMinusGroupMembers(String channelId, String groupIds, { int page, int perPage }) async
    test('test channelMembersMinusGroupMembers', () async {
      // TODO
    });

    // Create a channel
    //
    // Create a new channel. ##### Permissions If creating a public channel, `create_public_channel` permission is required. If creating a private channel, `create_private_channel` permission is required. 
    //
    //Future<MattermostChannel> createChannel(MattermostCreateChannelRequest mattermostCreateChannelRequest) async
    test('test createChannel', () async {
      // TODO
    });

    // Create a direct message channel
    //
    // Create a new direct message channel between two users. ##### Permissions Must be one of the two users and have `create_direct_channel` permission. Having the `manage_system` permission voids the previous requirements. 
    //
    //Future<MattermostChannel> createDirectChannel(List<String> requestBody) async
    test('test createDirectChannel', () async {
      // TODO
    });

    // Create a group message channel
    //
    // Create a new group message channel to group of users. If the logged in user's id is not included in the list, it will be appended to the end. ##### Permissions Must have `create_group_channel` permission. 
    //
    //Future<MattermostChannel> createGroupChannel(List<String> requestBody) async
    test('test createGroupChannel', () async {
      // TODO
    });

    // Create user's sidebar category
    //
    // Create a custom sidebar category for the user on the given team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 
    //
    //Future<MattermostSidebarCategory> createSidebarCategoryForTeamForUser(String teamId, String userId, MattermostSidebarCategory mattermostSidebarCategory) async
    test('test createSidebarCategoryForTeamForUser', () async {
      // TODO
    });

    // Delete a channel
    //
    // Archives a channel. This will set the `deleteAt` to the current timestamp in the database. Soft deleted channels may not be accessible in the user interface. They can be viewed and unarchived in the **System Console > User Management > Channels** based on your license. Direct and group message channels cannot be deleted.  As of server version 5.28, optionally use the `permanent=true` query parameter to permanently delete the channel for compliance reasons. To use this feature `ServiceSettings.EnableAPIChannelDeletion` must be set to `true` in the server's configuration.  If you permanently delete a channel this action is not recoverable outside of a database backup.  ##### Permissions `delete_public_channel` permission if the channel is public, `delete_private_channel` permission if the channel is private, or have `manage_system` permission. 
    //
    //Future<MattermostStatusOK> deleteChannel(String channelId) async
    test('test deleteChannel', () async {
      // TODO
    });

    // Get a list of all channels
    //
    // ##### Permissions `manage_system` 
    //
    //Future<List<MattermostChannelWithTeamData>> getAllChannels({ String notAssociatedToGroup, int page, int perPage, bool excludeDefaultChannels, bool includeDeleted, bool includeTotalCount, bool excludePolicyConstrained }) async
    test('test getAllChannels', () async {
      // TODO
    });

    // Get a channel
    //
    // Get channel from the provided channel id string. ##### Permissions `read_channel` permission for the channel. 
    //
    //Future<MattermostChannel> getChannel(String channelId) async
    test('test getChannel', () async {
      // TODO
    });

    // Get a channel by name
    //
    // Gets channel from the provided team id and channel name strings. ##### Permissions `read_channel` permission for the channel. 
    //
    //Future<MattermostChannel> getChannelByName(String teamId, String channelName, { bool includeDeleted }) async
    test('test getChannelByName', () async {
      // TODO
    });

    // Get a channel by name and team name
    //
    // Gets a channel from the provided team name and channel name strings. ##### Permissions `read_channel` permission for the channel. 
    //
    //Future<MattermostChannel> getChannelByNameForTeamName(String teamName, String channelName, { bool includeDeleted }) async
    test('test getChannelByNameForTeamName', () async {
      // TODO
    });

    // Get channel member
    //
    // Get a channel member. ##### Permissions `read_channel` permission for the channel. 
    //
    //Future<MattermostChannelMember> getChannelMember(String channelId, String userId) async
    test('test getChannelMember', () async {
      // TODO
    });

    // Channel members counts for each group that has atleast one member in the channel
    //
    // Returns a set of ChannelMemberCountByGroup objects which contain a `group_id`, `channel_member_count` and a `channel_member_timezones_count`. ##### Permissions Must have `read_channel` permission for the given channel. __Minimum server version__: 5.24 
    //
    //Future getChannelMemberCountsByGroup(String channelId, { bool includeTimezones }) async
    test('test getChannelMemberCountsByGroup', () async {
      // TODO
    });

    // Get channel members
    //
    // Get a page of members for a channel. ##### Permissions `read_channel` permission for the channel. 
    //
    //Future<List<MattermostChannelMember>> getChannelMembers(String channelId, { int page, int perPage }) async
    test('test getChannelMembers', () async {
      // TODO
    });

    // Get channel members by ids
    //
    // Get a list of channel members based on the provided user ids. ##### Permissions Must have the `read_channel` permission. 
    //
    //Future<List<MattermostChannelMember>> getChannelMembersByIds(String channelId, List<String> requestBody) async
    test('test getChannelMembersByIds', () async {
      // TODO
    });

    // Get channel memberships and roles for a user
    //
    // Get all channel memberships and associated membership roles (i.e. `channel_user`, `channel_admin`) for a user on a specific team. ##### Permissions Logged in as the user and `view_team` permission for the team. Having `manage_system` permission voids the previous requirements. 
    //
    //Future<List<MattermostChannelMember>> getChannelMembersForUser(String userId, String teamId) async
    test('test getChannelMembersForUser', () async {
      // TODO
    });

    // Get timezones in a channel
    //
    // Get a list of timezones for the users who are in this channel.  __Minimum server version__: 5.6  ##### Permissions Must have the `read_channel` permission. 
    //
    //Future<List<String>> getChannelMembersTimezones(String channelId) async
    test('test getChannelMembersTimezones', () async {
      // TODO
    });

    // Get information about channel's moderation.
    //
    // ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.22 
    //
    //Future<List<MattermostChannelModeration>> getChannelModerations(String channelId) async
    test('test getChannelModerations', () async {
      // TODO
    });

    // Get channel statistics
    //
    // Get statistics for a channel. ##### Permissions Must have the `read_channel` permission. 
    //
    //Future<MattermostChannelStats> getChannelStats(String channelId) async
    test('test getChannelStats', () async {
      // TODO
    });

    // Get unread messages
    //
    // Get the total unread messages and mentions for a channel for a user. ##### Permissions Must be logged in as user and have the `read_channel` permission, or have `edit_other_usrs` permission. 
    //
    //Future<MattermostChannelUnread> getChannelUnread(String userId, String channelId) async
    test('test getChannelUnread', () async {
      // TODO
    });

    // Get channels for user
    //
    // Get all the channels on a team for a user. ##### Permissions Logged in as the user, or have `edit_other_users` permission, and `view_team` permission for the team. 
    //
    //Future<List<MattermostChannel>> getChannelsForTeamForUser(String userId, String teamId, { bool includeDeleted, int lastDeleteAt }) async
    test('test getChannelsForTeamForUser', () async {
      // TODO
    });

    // Get all channels from all teams
    //
    // Get all channels from all teams that a user is a member of.  __Minimum server version__: 6.1  ##### Permissions  Logged in as the user, or have `edit_other_users` permission. 
    //
    //Future<List<MattermostChannel>> getChannelsForUser(String userId, { int lastDeleteAt, bool includeDeleted }) async
    test('test getChannelsForUser', () async {
      // TODO
    });

    // Get deleted channels
    //
    // Get a page of deleted channels on a team based on query string parameters - team_id, page and per_page.  __Minimum server version__: 3.10 
    //
    //Future<List<MattermostChannel>> getDeletedChannelsForTeam(String teamId, { int page, int perPage }) async
    test('test getDeletedChannelsForTeam', () async {
      // TODO
    });

    // Get a channel's pinned posts
    //
    // Get a list of pinned posts for channel.
    //
    //Future<MattermostPostList> getPinnedPosts(String channelId) async
    test('test getPinnedPosts', () async {
      // TODO
    });

    // Get private channels
    //
    // Get a page of private channels on a team based on query string parameters - team_id, page and per_page.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 
    //
    //Future<List<MattermostChannel>> getPrivateChannelsForTeam(String teamId, { int page, int perPage }) async
    test('test getPrivateChannelsForTeam', () async {
      // TODO
    });

    // Get a list of channels by ids
    //
    // Get a list of public channels on a team by id. ##### Permissions `view_team` for the team the channels are on. 
    //
    //Future<List<MattermostChannel>> getPublicChannelsByIdsForTeam(String teamId, List<String> requestBody) async
    test('test getPublicChannelsByIdsForTeam', () async {
      // TODO
    });

    // Get public channels
    //
    // Get a page of public channels on a team based on query string parameters - page and per_page. ##### Permissions Must be authenticated and have the `list_team_channels` permission. 
    //
    //Future<List<MattermostChannel>> getPublicChannelsForTeam(String teamId, { int page, int perPage }) async
    test('test getPublicChannelsForTeam', () async {
      // TODO
    });

    // Get user's sidebar categories
    //
    // Get a list of sidebar categories that will appear in the user's sidebar on the given team, including a list of channel IDs in each category. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 
    //
    //Future<List<MattermostOrderedSidebarCategories>> getSidebarCategoriesForTeamForUser(String teamId, String userId) async
    test('test getSidebarCategoriesForTeamForUser', () async {
      // TODO
    });

    // Get sidebar category
    //
    // Returns a single sidebar category for the user on the given team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 
    //
    //Future<MattermostSidebarCategory> getSidebarCategoryForTeamForUser(String teamId, String userId, String categoryId) async
    test('test getSidebarCategoryForTeamForUser', () async {
      // TODO
    });

    // Get user's sidebar category order
    //
    // Returns the order of the sidebar categories for a user on the given team as an array of IDs. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 
    //
    //Future<List<String>> getSidebarCategoryOrderForTeamForUser(String teamId, String userId) async
    test('test getSidebarCategoryOrderForTeamForUser', () async {
      // TODO
    });

    // Move a channel
    //
    // Move a channel to another team.  __Minimum server version__: 5.26  ##### Permissions  Must have `manage_system` permission. 
    //
    //Future<MattermostChannel> moveChannel(String channelId, MattermostMoveChannelRequest mattermostMoveChannelRequest) async
    test('test moveChannel', () async {
      // TODO
    });

    // Patch a channel
    //
    // Partially update a channel by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions If updating a public channel, `manage_public_channel_members` permission is required. If updating a private channel, `manage_private_channel_members` permission is required. 
    //
    //Future<MattermostChannel> patchChannel(String channelId, MattermostPatchChannelRequest mattermostPatchChannelRequest) async
    test('test patchChannel', () async {
      // TODO
    });

    // Update a channel's moderation settings.
    //
    // ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.22 
    //
    //Future<List<MattermostChannelModeration>> patchChannelModerations(String channelId, MattermostChannelModerationPatch mattermostChannelModerationPatch) async
    test('test patchChannelModerations', () async {
      // TODO
    });

    // Delete sidebar category
    //
    // Deletes a single sidebar category for the user on the given team. Only custom categories can be deleted. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 
    //
    //Future<MattermostSidebarCategory> removeSidebarCategoryForTeamForUser(String teamId, String userId, String categoryId) async
    test('test removeSidebarCategoryForTeamForUser', () async {
      // TODO
    });

    // Remove user from channel
    //
    // Delete a channel member, effectively removing them from a channel.  In server version 5.3 and later, channel members can only be deleted from public or private channels. ##### Permissions `manage_public_channel_members` permission if the channel is public. `manage_private_channel_members` permission if the channel is private. 
    //
    //Future<MattermostStatusOK> removeUserFromChannel(String channelId, String userId) async
    test('test removeUserFromChannel', () async {
      // TODO
    });

    // Restore a channel
    //
    // Restore channel from the provided channel id string.  __Minimum server version__: 3.10  ##### Permissions `manage_team` permission for the team of the channel. 
    //
    //Future<MattermostChannel> restoreChannel(String channelId) async
    test('test restoreChannel', () async {
      // TODO
    });

    // Search all private and open type channels across all teams
    //
    // Returns all private and open type channels where 'term' matches on the name, display name, or purpose of the channel.  Configured 'default' channels (ex Town Square and Off-Topic) can be excluded from the results with the `exclude_default_channels` boolean parameter.  Channels that are associated (via GroupChannel records) to a given group can be excluded from the results with the `not_associated_to_group` parameter and a group id string. 
    //
    //Future<MattermostSearchAllChannels200Response> searchAllChannels(MattermostSearchAllChannelsRequest mattermostSearchAllChannelsRequest, { bool systemConsole }) async
    test('test searchAllChannels', () async {
      // TODO
    });

    // Search archived channels
    //
    // Search archived channels on a team based on the search term provided in the request body.  __Minimum server version__: 5.18  ##### Permissions Must have the `list_team_channels` permission.  In server version 5.18 and later, a user without the `list_team_channels` permission will be able to use this endpoint, with the search results limited to the channels that the user is a member of. 
    //
    //Future<List<MattermostChannel>> searchArchivedChannels(String teamId, MattermostSearchArchivedChannelsRequest mattermostSearchArchivedChannelsRequest) async
    test('test searchArchivedChannels', () async {
      // TODO
    });

    // Search channels
    //
    // Search public channels on a team based on the search term provided in the request body. ##### Permissions Must have the `list_team_channels` permission.  In server version 5.16 and later, a user without the `list_team_channels` permission will be able to use this endpoint, with the search results limited to the channels that the user is a member of. 
    //
    //Future<List<MattermostChannel>> searchChannels(String teamId, MattermostSearchChannelsRequest mattermostSearchChannelsRequest) async
    test('test searchChannels', () async {
      // TODO
    });

    // Search Group Channels
    //
    // Get a list of group channels for a user which members' usernames match the search term.  __Minimum server version__: 5.14 
    //
    //Future<List<MattermostChannel>> searchGroupChannels(MattermostSearchGroupChannelsRequest mattermostSearchGroupChannelsRequest) async
    test('test searchGroupChannels', () async {
      // TODO
    });

    // Update a channel
    //
    // Update a channel. The fields that can be updated are listed as parameters. Omitted fields will be treated as blanks. ##### Permissions If updating a public channel, `manage_public_channel_members` permission is required. If updating a private channel, `manage_private_channel_members` permission is required. 
    //
    //Future<MattermostChannel> updateChannel(String channelId, MattermostUpdateChannelRequest mattermostUpdateChannelRequest) async
    test('test updateChannel', () async {
      // TODO
    });

    // Update the scheme-derived roles of a channel member.
    //
    // Update a channel member's scheme_admin/scheme_user properties. Typically this should either be `scheme_admin=false, scheme_user=true` for ordinary channel member, or `scheme_admin=true, scheme_user=true` for a channel admin. __Minimum server version__: 5.0 ##### Permissions Must be authenticated and have the `manage_channel_roles` permission. 
    //
    //Future<MattermostStatusOK> updateChannelMemberSchemeRoles(String channelId, String userId, MattermostUpdateTeamMemberSchemeRolesRequest mattermostUpdateTeamMemberSchemeRolesRequest) async
    test('test updateChannelMemberSchemeRoles', () async {
      // TODO
    });

    // Update channel notifications
    //
    // Update a user's notification properties for a channel. Only the provided fields are updated. ##### Permissions Must be logged in as the user or have `edit_other_users` permission. 
    //
    //Future<MattermostStatusOK> updateChannelNotifyProps(String channelId, String userId, MattermostChannelNotifyProps mattermostChannelNotifyProps) async
    test('test updateChannelNotifyProps', () async {
      // TODO
    });

    // Update channel's privacy
    //
    // Updates channel's privacy allowing changing a channel from Public to Private and back.  __Minimum server version__: 5.16  ##### Permissions `manage_team` permission for the channels team on version < 5.28. `convert_public_channel_to_private` permission for the channel if updating privacy to 'P' on version >= 5.28. `convert_private_channel_to_public` permission for the channel if updating privacy to 'O' on version >= 5.28. 
    //
    //Future<MattermostChannel> updateChannelPrivacy(String channelId, MattermostUpdateChannelPrivacyRequest mattermostUpdateChannelPrivacyRequest) async
    test('test updateChannelPrivacy', () async {
      // TODO
    });

    // Update channel roles
    //
    // Update a user's roles for a channel. ##### Permissions Must have `manage_channel_roles` permission for the channel. 
    //
    //Future<MattermostStatusOK> updateChannelRoles(String channelId, String userId, MattermostUpdateUserRolesRequest mattermostUpdateUserRolesRequest) async
    test('test updateChannelRoles', () async {
      // TODO
    });

    // Set a channel's scheme
    //
    // Set a channel's scheme, more specifically sets the scheme_id value of a channel record.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.10 
    //
    //Future<MattermostStatusOK> updateChannelScheme(String channelId, MattermostUpdateTeamSchemeRequest mattermostUpdateTeamSchemeRequest) async
    test('test updateChannelScheme', () async {
      // TODO
    });

    // Update user's sidebar categories
    //
    // Update any number of sidebar categories for the user on the given team. This can be used to reorder the channels in these categories. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 
    //
    //Future<MattermostSidebarCategory> updateSidebarCategoriesForTeamForUser(String teamId, String userId, List<MattermostSidebarCategory> mattermostSidebarCategory) async
    test('test updateSidebarCategoriesForTeamForUser', () async {
      // TODO
    });

    // Update sidebar category
    //
    // Updates a single sidebar category for the user on the given team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 
    //
    //Future<MattermostSidebarCategory> updateSidebarCategoryForTeamForUser(String teamId, String userId, String categoryId, MattermostSidebarCategory mattermostSidebarCategory) async
    test('test updateSidebarCategoryForTeamForUser', () async {
      // TODO
    });

    // Update user's sidebar category order
    //
    // Updates the order of the sidebar categories for a user on the given team. The provided array must include the IDs of all categories on the team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 
    //
    //Future<List<String>> updateSidebarCategoryOrderForTeamForUser(String teamId, String userId, List<String> requestBody) async
    test('test updateSidebarCategoryOrderForTeamForUser', () async {
      // TODO
    });

    // View channel
    //
    // Perform all the actions involved in viewing a channel. This includes marking channels as read, clearing push notifications, and updating the active channel. ##### Permissions Must be logged in as user or have `edit_other_users` permission.  __Response only includes `last_viewed_at_times` in Mattermost server 4.3 and newer.__ 
    //
    //Future<MattermostViewChannel200Response> viewChannel(String userId, MattermostViewChannelRequest mattermostViewChannelRequest) async
    test('test viewChannel', () async {
      // TODO
    });

  });
}
