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


/// tests for BotsApi
void main() {
  // final instance = BotsApi();

  group('tests for BotsApi', () {
    // Assign a bot to a user
    //
    // Assign a bot to a specified user. ##### Permissions Must have `manage_bots` permission.  __Minimum server version__: 5.10 
    //
    //Future<Bot> assignBot(String botUserId, String userId) async
    test('test assignBot', () async {
      // TODO
    });

    // Convert a bot into a user
    //
    // Convert a bot into a user.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 
    //
    //Future<StatusOK> convertBotToUser(String botUserId, ConvertBotToUserRequest convertBotToUserRequest, { bool setSystemAdmin }) async
    test('test convertBotToUser', () async {
      // TODO
    });

    // Convert a user into a bot
    //
    // Convert a user into a bot.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 
    //
    //Future<StatusOK> convertUserToBot(String userId) async
    test('test convertUserToBot', () async {
      // TODO
    });

    // Create a bot
    //
    // Create a new bot account on the system. Username is required. ##### Permissions Must have `create_bot` permission. __Minimum server version__: 5.10 
    //
    //Future<Bot> createBot(CreateBotRequest createBotRequest) async
    test('test createBot', () async {
      // TODO
    });

    // Delete bot's LHS icon image
    //
    // Delete bot's LHS icon image based on bot_user_id string parameter. ##### Permissions Must have `manage_bots` permission. __Minimum server version__: 5.14 
    //
    //Future<StatusOK> deleteBotIconImage(String botUserId) async
    test('test deleteBotIconImage', () async {
      // TODO
    });

    // Disable a bot
    //
    // Disable a bot. ##### Permissions Must have `manage_bots` permission.  __Minimum server version__: 5.10 
    //
    //Future<Bot> disableBot(String botUserId) async
    test('test disableBot', () async {
      // TODO
    });

    // Enable a bot
    //
    // Enable a bot. ##### Permissions Must have `manage_bots` permission.  __Minimum server version__: 5.10 
    //
    //Future<Bot> enableBot(String botUserId) async
    test('test enableBot', () async {
      // TODO
    });

    // Get a bot
    //
    // Get a bot specified by its bot id. ##### Permissions Must have `read_bots` permission for bots you are managing, and `read_others_bots` permission for bots others are managing. __Minimum server version__: 5.10 
    //
    //Future<Bot> getBot(String botUserId, { bool includeDeleted }) async
    test('test getBot', () async {
      // TODO
    });

    // Get bot's LHS icon
    //
    // Get a bot's LHS icon image based on bot_user_id string parameter. ##### Permissions Must be logged in. __Minimum server version__: 5.14 
    //
    //Future getBotIconImage(String botUserId) async
    test('test getBotIconImage', () async {
      // TODO
    });

    // Get bots
    //
    // Get a page of a list of bots. ##### Permissions Must have `read_bots` permission for bots you are managing, and `read_others_bots` permission for bots others are managing. __Minimum server version__: 5.10 
    //
    //Future<List<Bot>> getBots({ int page, int perPage, bool includeDeleted, bool onlyOrphaned }) async
    test('test getBots', () async {
      // TODO
    });

    // Patch a bot
    //
    // Partially update a bot by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must have `manage_bots` permission.  __Minimum server version__: 5.10 
    //
    //Future<Bot> patchBot(String botUserId, CreateBotRequest createBotRequest) async
    test('test patchBot', () async {
      // TODO
    });

    // Set bot's LHS icon image
    //
    // Set a bot's LHS icon image based on bot_user_id string parameter. Icon image must be SVG format, all other formats are rejected. ##### Permissions Must have `manage_bots` permission. __Minimum server version__: 5.14 
    //
    //Future<StatusOK> setBotIconImage(String botUserId, MultipartFile image) async
    test('test setBotIconImage', () async {
      // TODO
    });

  });
}
