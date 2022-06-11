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

// tests for MattermostSearchUsersRequest
void main() {
  // final instance = MattermostSearchUsersRequest();

  group('test MattermostSearchUsersRequest', () {
    // The term to match against username, full name, nickname and email
    // String term
    test('to test the property `term`', () async {
      // TODO
    });

    // If provided, only search users on this team
    // String teamId
    test('to test the property `teamId`', () async {
      // TODO
    });

    // If provided, only search users not on this team
    // String notInTeamId
    test('to test the property `notInTeamId`', () async {
      // TODO
    });

    // If provided, only search users in this channel
    // String inChannelId
    test('to test the property `inChannelId`', () async {
      // TODO
    });

    // If provided, only search users not in this channel. Must specifiy `team_id` when using this option
    // String notInChannelId
    test('to test the property `notInChannelId`', () async {
      // TODO
    });

    // If provided, only search users in this group. Must have `manage_system` permission.
    // String inGroupId
    test('to test the property `inGroupId`', () async {
      // TODO
    });

    // When used with `not_in_channel_id` or `not_in_team_id`, returns only the users that are allowed to join the channel or team based on its group constrains.
    // bool groupConstrained
    test('to test the property `groupConstrained`', () async {
      // TODO
    });

    // When `true`, include deactivated users in the results
    // bool allowInactive
    test('to test the property `allowInactive`', () async {
      // TODO
    });

    // Set this to `true` if you would like to search for users that are not on a team. This option takes precendence over `team_id`, `in_channel_id`, and `not_in_channel_id`.
    // bool withoutTeam
    test('to test the property `withoutTeam`', () async {
      // TODO
    });

    // The maximum number of users to return in the results  __Available as of server version 5.6. Defaults to `100` if not provided or on an earlier server version.__ 
    // int limit (default value: 100)
    test('to test the property `limit`', () async {
      // TODO
    });


  });

}
