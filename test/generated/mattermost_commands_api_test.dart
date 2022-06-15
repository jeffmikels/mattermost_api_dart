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


/// tests for MattermostCommandsApi
void main() {
  // final instance = MattermostCommandsApi();

  group('tests for MattermostCommandsApi', () {
    // Create a command
    //
    // Create a command for a team. ##### Permissions `manage_slash_commands` for the team the command is in. 
    //
    //Future<MmCommand> createCommand(MmCreateCommandRequest mmCreateCommandRequest) async
    test('test createCommand', () async {
      // TODO
    });

    // Delete a command
    //
    // Delete a command based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in. 
    //
    //Future<MmStatusOK> deleteCommand(String commandId) async
    test('test deleteCommand', () async {
      // TODO
    });

    // Execute a command
    //
    // Execute a command on a team. ##### Permissions Must have `use_slash_commands` permission for the team the command is in. 
    //
    //Future<MmCommandResponse> executeCommand(MmExecuteCommandRequest mmExecuteCommandRequest) async
    test('test executeCommand', () async {
      // TODO
    });

    // Get a command
    //
    // Get a command definition based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in.  __Minimum server version__: 5.22 
    //
    //Future<MmCommand> getCommandById(String commandId) async
    test('test getCommandById', () async {
      // TODO
    });

    // List autocomplete commands
    //
    // List autocomplete commands in the team. ##### Permissions `view_team` for the team. 
    //
    //Future<List<MmCommand>> listAutocompleteCommands(String teamId) async
    test('test listAutocompleteCommands', () async {
      // TODO
    });

    // List commands' autocomplete data
    //
    // List commands' autocomplete data for the team. ##### Permissions `view_team` for the team. __Minimum server version__: 5.24 
    //
    //Future<List<MmAutocompleteSuggestion>> listCommandAutocompleteSuggestions(String teamId, String userInput) async
    test('test listCommandAutocompleteSuggestions', () async {
      // TODO
    });

    // List commands for a team
    //
    // List commands for a team. ##### Permissions `manage_slash_commands` if need list custom commands. 
    //
    //Future<List<MmCommand>> listCommands({ String teamId, bool customOnly }) async
    test('test listCommands', () async {
      // TODO
    });

    // Move a command
    //
    // Move a command to a different team based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is currently in and the destination team.  __Minimum server version__: 5.22 
    //
    //Future<MmStatusOK> moveCommand(String commandId, MmMoveCommandRequest mmMoveCommandRequest) async
    test('test moveCommand', () async {
      // TODO
    });

    // Generate a new token
    //
    // Generate a new token for the command based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in. 
    //
    //Future<MmRegenCommandToken200Response> regenCommandToken(String commandId) async
    test('test regenCommandToken', () async {
      // TODO
    });

    // Update a command
    //
    // Update a single command based on command id string and Command struct. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in. 
    //
    //Future<MmCommand> updateCommand(String commandId, MmCommand mmCommand) async
    test('test updateCommand', () async {
      // TODO
    });

  });
}
