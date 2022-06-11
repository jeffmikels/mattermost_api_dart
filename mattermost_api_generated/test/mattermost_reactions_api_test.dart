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


/// tests for MattermostReactionsApi
void main() {
  // final instance = MattermostReactionsApi();

  group('tests for MattermostReactionsApi', () {
    // Remove a reaction from a post
    //
    // Deletes a reaction made by a user from the given post. ##### Permissions Must be user or have `manage_system` permission. 
    //
    //Future<MattermostStatusOK> deleteReaction(String userId, String postId, String emojiName) async
    test('test deleteReaction', () async {
      // TODO
    });

    // Bulk get the reaction for posts
    //
    // Get a list of reactions made by all users to a given post. ##### Permissions Must have `read_channel` permission for the channel the post is in.  __Minimum server version__: 5.8 
    //
    //Future<Map<String, List<MattermostReaction>>> getBulkReactions(List<String> requestBody) async
    test('test getBulkReactions', () async {
      // TODO
    });

    // Get a list of reactions to a post
    //
    // Get a list of reactions made by all users to a given post. ##### Permissions Must have `read_channel` permission for the channel the post is in. 
    //
    //Future<List<MattermostReaction>> getReactions(String postId) async
    test('test getReactions', () async {
      // TODO
    });

    // Create a reaction
    //
    // Create a reaction. ##### Permissions Must have `read_channel` permission for the channel the post is in. 
    //
    //Future<MattermostReaction> saveReaction(MattermostReaction mattermostReaction) async
    test('test saveReaction', () async {
      // TODO
    });

  });
}
