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


/// tests for MattermostInsightsApi
void main() {
  // final instance = MattermostInsightsApi();

  group('tests for MattermostInsightsApi', () {
    // Get a list of the top channels for a team.
    //
    // Get a list of the top public and private channels (the user is a member of) for a given team. ##### Permissions Must have `view_team` permission for the team. 
    //
    //Future<MattermostTopChannelList> getTopChannelsForTeam(String teamId, String timeRange, { int page, int perPage }) async
    test('test getTopChannelsForTeam', () async {
      // TODO
    });

    // Get a list of the top channels for a user.
    //
    // Get a list of the top public and private channels (the user is a member of) for a given user. ##### Permissions Must be logged in as the user. 
    //
    //Future<MattermostTopReactionList> getTopChannelsForUser(String userId, String timeRange, { int page, int perPage, String teamId }) async
    test('test getTopChannelsForUser', () async {
      // TODO
    });

    // Get a list of the top reactions for a team.
    //
    // Get a list of the top reactions across all public and private channels (the user is a member of) for a given team. ##### Permissions Must have `view_team` permission for the team. 
    //
    //Future<MattermostTopReactionList> getTopReactionsForTeam(String teamId, String timeRange, { int page, int perPage }) async
    test('test getTopReactionsForTeam', () async {
      // TODO
    });

    // Get a list of the top reactions for a user.
    //
    // Get a list of the top reactions across all public and private channels (the user is a member of) for a given user. If no `team_id` is provided, this will also include reactions posted by the given user in direct and group messages. ##### Permissions Must be logged in as the user. 
    //
    //Future<MattermostTopReactionList> getTopReactionsForUser(String userId, String timeRange, { int page, int perPage, String teamId }) async
    test('test getTopReactionsForUser', () async {
      // TODO
    });

  });
}
