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


/// tests for MattermostGroupsApi
void main() {
  // final instance = MattermostGroupsApi();

  group('tests for MattermostGroupsApi', () {
    // Adds members to a custom group
    //
    // Adds members to a custom group.  ##### Permissions Must have `custom_group_manage_members` permission for the given group.  __Minimum server version__: 6.3 
    //
    //Future<MattermostStatusOK> addGroupMembers(String groupId, MattermostAddGroupMembersRequest mattermostAddGroupMembersRequest) async
    test('test addGroupMembers', () async {
      // TODO
    });

    // Create a custom group
    //
    // Create a `custom` type group.  #### Permission Must have `create_custom_group` permission.  __Minimum server version__: 6.3 
    //
    //Future createGroup(MattermostCreateGroupRequest mattermostCreateGroupRequest) async
    test('test createGroup', () async {
      // TODO
    });

    // Deletes a custom group
    //
    // Soft deletes a custom group.  ##### Permissions Must have `custom_group_delete` permission for the given group.  __Minimum server version__: 6.3 
    //
    //Future<MattermostStatusOK> deleteGroup(String groupId) async
    test('test deleteGroup', () async {
      // TODO
    });

    // Removes members from a custom group
    //
    // Soft deletes a custom group members.  ##### Permissions Must have `custom_group_manage_members` permission for the given group.  __Minimum server version__: 6.3 
    //
    //Future<MattermostStatusOK> deleteGroupMembers(String groupId, MattermostDeleteGroupMembersRequest mattermostDeleteGroupMembersRequest) async
    test('test deleteGroupMembers', () async {
      // TODO
    });

    // Get a group
    //
    // Get group from the provided group id string  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 
    //
    //Future<MattermostGroup> getGroup(String groupId) async
    test('test getGroup', () async {
      // TODO
    });

    // Get group stats
    //
    // Retrieve the stats of a given group.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.26 
    //
    //Future<MattermostGetGroupStats200Response> getGroupStats(String groupId) async
    test('test getGroupStats', () async {
      // TODO
    });

    // Get GroupSyncable from channel ID
    //
    // Get the GroupSyncable object with group_id and channel_id from params ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 
    //
    //Future<MattermostGroupSyncableChannel> getGroupSyncableForChannelId(String groupId, String channelId) async
    test('test getGroupSyncableForChannelId', () async {
      // TODO
    });

    // Get GroupSyncable from Team ID
    //
    // Get the GroupSyncable object with group_id and team_id from params ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 
    //
    //Future<MattermostGroupSyncableTeam> getGroupSyncableForTeamId(String groupId, String teamId) async
    test('test getGroupSyncableForTeamId', () async {
      // TODO
    });

    // Get group channels
    //
    // Retrieve the list of channels associated to the group ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 
    //
    //Future<List<MattermostGroupSyncableChannels>> getGroupSyncablesChannels(String groupId) async
    test('test getGroupSyncablesChannels', () async {
      // TODO
    });

    // Get group teams
    //
    // Retrieve the list of teams associated to the group ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 
    //
    //Future<List<MattermostGroupSyncableTeams>> getGroupSyncablesTeams(String groupId) async
    test('test getGroupSyncablesTeams', () async {
      // TODO
    });

    // Get group users
    //
    // Retrieve the list of users associated with a given group.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 
    //
    //Future<MattermostGetGroupUsers200Response> getGroupUsers(String groupId, { int page, int perPage }) async
    test('test getGroupUsers', () async {
      // TODO
    });

    // Get groups
    //
    // Retrieve a list of all groups not associated to a particular channel or team.  `not_associated_to_team` **OR** `not_associated_to_channel` is required.  If you use `not_associated_to_team`, you must be a team admin for that particular team (permission to manage that team).  If you use `not_associated_to_channel`, you must be a channel admin for that particular channel (permission to manage that channel).  __Minimum server version__: 5.11 
    //
    //Future<List<MattermostGroup>> getGroups(String notAssociatedToTeam, String notAssociatedToChannel, { int page, int perPage, String q, bool includeMemberCount, int since, bool filterAllowReference }) async
    test('test getGroups', () async {
      // TODO
    });

    // Get team groups by channels
    //
    // Retrieve the set of groups associated with the channels in the given team grouped by channel.  ##### Permissions Must have `manage_system` permission or can access only for current user  __Minimum server version__: 5.11 
    //
    //Future<List<Map<String, List<MattermostGroupWithSchemeAdmin>>>> getGroupsAssociatedToChannelsByTeam(String teamId, { int page, int perPage, bool filterAllowReference, bool paginate }) async
    test('test getGroupsAssociatedToChannelsByTeam', () async {
      // TODO
    });

    // Get channel groups
    //
    // Retrieve the list of groups associated with a given channel.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 
    //
    //Future<List<MattermostGroup>> getGroupsByChannel(String channelId, { int page, int perPage, bool filterAllowReference }) async
    test('test getGroupsByChannel', () async {
      // TODO
    });

    // Get team groups
    //
    // Retrieve the list of groups associated with a given team.  __Minimum server version__: 5.11 
    //
    //Future<List<MattermostGroup>> getGroupsByTeam(String teamId, { int page, int perPage, bool filterAllowReference }) async
    test('test getGroupsByTeam', () async {
      // TODO
    });

    // Get groups for a userId
    //
    // Retrieve the list of groups associated to the user  __Minimum server version__: 5.24 
    //
    //Future<List<MattermostGroup>> getGroupsByUserId(String userId) async
    test('test getGroupsByUserId', () async {
      // TODO
    });

    // Link a channel to a group
    //
    // Link a channel to a group ##### Permissions If the channel is private, you must have `manage_private_channel_members` permission. Otherwise, you must have the `manage_public_channel_members` permission.  __Minimum server version__: 5.11 
    //
    //Future<MattermostGroupSyncableChannel> linkGroupSyncableForChannel(String groupId, String channelId) async
    test('test linkGroupSyncableForChannel', () async {
      // TODO
    });

    // Link a team to a group
    //
    // Link a team to a group ##### Permissions Must have `manage_team` permission.  __Minimum server version__: 5.11 
    //
    //Future<MattermostGroupSyncableTeam> linkGroupSyncableForTeam(String groupId, String teamId) async
    test('test linkGroupSyncableForTeam', () async {
      // TODO
    });

    // Patch a group
    //
    // Partially update a group by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 
    //
    //Future<MattermostGroup> patchGroup(String groupId, MattermostPatchGroupRequest mattermostPatchGroupRequest) async
    test('test patchGroup', () async {
      // TODO
    });

    // Patch a GroupSyncable associated to Channel
    //
    // Partially update a GroupSyncable by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 
    //
    //Future<MattermostGroupSyncableChannel> patchGroupSyncableForChannel(String groupId, String channelId, MattermostPatchGroupSyncableForTeamRequest mattermostPatchGroupSyncableForTeamRequest) async
    test('test patchGroupSyncableForChannel', () async {
      // TODO
    });

    // Patch a GroupSyncable associated to Team
    //
    // Partially update a GroupSyncable by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 
    //
    //Future<MattermostGroupSyncableTeam> patchGroupSyncableForTeam(String groupId, String teamId, MattermostPatchGroupSyncableForTeamRequest mattermostPatchGroupSyncableForTeamRequest) async
    test('test patchGroupSyncableForTeam', () async {
      // TODO
    });

    // Delete a link from a channel to a group
    //
    // Delete a link from a channel to a group ##### Permissions If the channel is private, you must have `manage_private_channel_members` permission. Otherwise, you must have the `manage_public_channel_members` permission.  __Minimum server version__: 5.11 
    //
    //Future<MattermostStatusOK> unlinkGroupSyncableForChannel(String groupId, String channelId) async
    test('test unlinkGroupSyncableForChannel', () async {
      // TODO
    });

    // Delete a link from a team to a group
    //
    // Delete a link from a team to a group ##### Permissions Must have `manage_team` permission.  __Minimum server version__: 5.11 
    //
    //Future<MattermostStatusOK> unlinkGroupSyncableForTeam(String groupId, String teamId) async
    test('test unlinkGroupSyncableForTeam', () async {
      // TODO
    });

    // Delete a link for LDAP group
    //
    // ##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.11 
    //
    //Future<MattermostStatusOK> unlinkLdapGroup(String remoteId) async
    test('test unlinkLdapGroup', () async {
      // TODO
    });

  });
}
