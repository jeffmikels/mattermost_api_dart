//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostCommandsApi {
  final MattermostApiClient apiClient;

  MattermostCommandsApi(this.apiClient);

  /// Create a command
  ///
  /// Create a command for a team. ##### Permissions `manage_slash_commands` for the team the command is in.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MattermostCreateCommandRequest] mattermostCreateCommandRequest (required):
  ///   command to be created
  Future<Response> createCommandWithHttpInfo(
    MattermostCreateCommandRequest mattermostCreateCommandRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/commands';

    // ignore: prefer_final_locals
    Object? postBody = mattermostCreateCommandRequest;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create a command
  ///
  /// Create a command for a team. ##### Permissions `manage_slash_commands` for the team the command is in.
  ///
  /// Parameters:
  ///
  /// * [MattermostCreateCommandRequest] mattermostCreateCommandRequest (required):
  ///   command to be created
  Future<MattermostCommand?> createCommand(
    MattermostCreateCommandRequest mattermostCreateCommandRequest,
  ) async {
    final response = await createCommandWithHttpInfo(
      mattermostCreateCommandRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MattermostCommand',
      ) as MattermostCommand;
    }
    return null;
  }

  /// Delete a command
  ///
  /// Delete a command based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] commandId (required):
  ///   ID of the command to delete
  Future<Response> deleteCommandWithHttpInfo(
    String commandId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/commands/{command_id}'.replaceAll('{command_id}', commandId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a command
  ///
  /// Delete a command based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in.
  ///
  /// Parameters:
  ///
  /// * [String] commandId (required):
  ///   ID of the command to delete
  Future<MattermostStatusOK?> deleteCommand(
    String commandId,
  ) async {
    final response = await deleteCommandWithHttpInfo(
      commandId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MattermostStatusOK',
      ) as MattermostStatusOK;
    }
    return null;
  }

  /// Execute a command
  ///
  /// Execute a command on a team. ##### Permissions Must have `use_slash_commands` permission for the team the command is in.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MattermostExecuteCommandRequest] mattermostExecuteCommandRequest (required):
  ///   command to be executed
  Future<Response> executeCommandWithHttpInfo(
    MattermostExecuteCommandRequest mattermostExecuteCommandRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/commands/execute';

    // ignore: prefer_final_locals
    Object? postBody = mattermostExecuteCommandRequest;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Execute a command
  ///
  /// Execute a command on a team. ##### Permissions Must have `use_slash_commands` permission for the team the command is in.
  ///
  /// Parameters:
  ///
  /// * [MattermostExecuteCommandRequest] mattermostExecuteCommandRequest (required):
  ///   command to be executed
  Future<MattermostCommandResponse?> executeCommand(
    MattermostExecuteCommandRequest mattermostExecuteCommandRequest,
  ) async {
    final response = await executeCommandWithHttpInfo(
      mattermostExecuteCommandRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MattermostCommandResponse',
      ) as MattermostCommandResponse;
    }
    return null;
  }

  /// Get a command
  ///
  /// Get a command definition based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in.  __Minimum server version__: 5.22
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] commandId (required):
  ///   ID of the command to get
  Future<Response> getCommandByIdWithHttpInfo(
    String commandId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/commands/{command_id}'.replaceAll('{command_id}', commandId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a command
  ///
  /// Get a command definition based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in.  __Minimum server version__: 5.22
  ///
  /// Parameters:
  ///
  /// * [String] commandId (required):
  ///   ID of the command to get
  Future<MattermostCommand?> getCommandById(
    String commandId,
  ) async {
    final response = await getCommandByIdWithHttpInfo(
      commandId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MattermostCommand',
      ) as MattermostCommand;
    }
    return null;
  }

  /// List autocomplete commands
  ///
  /// List autocomplete commands in the team. ##### Permissions `view_team` for the team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  Future<Response> listAutocompleteCommandsWithHttpInfo(
    String teamId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/commands/autocomplete'.replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List autocomplete commands
  ///
  /// List autocomplete commands in the team. ##### Permissions `view_team` for the team.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  Future<List<MattermostCommand>?> listAutocompleteCommands(
    String teamId,
  ) async {
    final response = await listAutocompleteCommandsWithHttpInfo(
      teamId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MattermostCommand>') as List)
          .cast<MattermostCommand>()
          .toList();
    }
    return null;
  }

  /// List commands' autocomplete data
  ///
  /// List commands' autocomplete data for the team. ##### Permissions `view_team` for the team. __Minimum server version__: 5.24
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userInput (required):
  ///   String inputted by the user.
  Future<Response> listCommandAutocompleteSuggestionsWithHttpInfo(
    String teamId,
    String userInput,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/commands/autocomplete_suggestions'.replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'user_input', userInput));

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List commands' autocomplete data
  ///
  /// List commands' autocomplete data for the team. ##### Permissions `view_team` for the team. __Minimum server version__: 5.24
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userInput (required):
  ///   String inputted by the user.
  Future<List<MattermostAutocompleteSuggestion>?> listCommandAutocompleteSuggestions(
    String teamId,
    String userInput,
  ) async {
    final response = await listCommandAutocompleteSuggestionsWithHttpInfo(
      teamId,
      userInput,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MattermostAutocompleteSuggestion>') as List)
          .cast<MattermostAutocompleteSuggestion>()
          .toList();
    }
    return null;
  }

  /// List commands for a team
  ///
  /// List commands for a team. ##### Permissions `manage_slash_commands` if need list custom commands.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId:
  ///   The team id.
  ///
  /// * [bool] customOnly:
  ///   To get only the custom commands. If set to false will get the custom if the user have access plus the system commands, otherwise just the system commands.
  Future<Response> listCommandsWithHttpInfo({
    String? teamId,
    bool? customOnly,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/commands';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (teamId != null) {
      queryParams.addAll(_queryParams('', 'team_id', teamId));
    }
    if (customOnly != null) {
      queryParams.addAll(_queryParams('', 'custom_only', customOnly));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List commands for a team
  ///
  /// List commands for a team. ##### Permissions `manage_slash_commands` if need list custom commands.
  ///
  /// Parameters:
  ///
  /// * [String] teamId:
  ///   The team id.
  ///
  /// * [bool] customOnly:
  ///   To get only the custom commands. If set to false will get the custom if the user have access plus the system commands, otherwise just the system commands.
  Future<List<MattermostCommand>?> listCommands({
    String? teamId,
    bool? customOnly,
  }) async {
    final response = await listCommandsWithHttpInfo(
      teamId: teamId,
      customOnly: customOnly,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MattermostCommand>') as List)
          .cast<MattermostCommand>()
          .toList();
    }
    return null;
  }

  /// Move a command
  ///
  /// Move a command to a different team based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is currently in and the destination team.  __Minimum server version__: 5.22
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] commandId (required):
  ///   ID of the command to move
  ///
  /// * [MattermostMoveCommandRequest] mattermostMoveCommandRequest (required):
  Future<Response> moveCommandWithHttpInfo(
    String commandId,
    MattermostMoveCommandRequest mattermostMoveCommandRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/commands/{command_id}/move'.replaceAll('{command_id}', commandId);

    // ignore: prefer_final_locals
    Object? postBody = mattermostMoveCommandRequest;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Move a command
  ///
  /// Move a command to a different team based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is currently in and the destination team.  __Minimum server version__: 5.22
  ///
  /// Parameters:
  ///
  /// * [String] commandId (required):
  ///   ID of the command to move
  ///
  /// * [MattermostMoveCommandRequest] mattermostMoveCommandRequest (required):
  Future<MattermostStatusOK?> moveCommand(
    String commandId,
    MattermostMoveCommandRequest mattermostMoveCommandRequest,
  ) async {
    final response = await moveCommandWithHttpInfo(
      commandId,
      mattermostMoveCommandRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MattermostStatusOK',
      ) as MattermostStatusOK;
    }
    return null;
  }

  /// Generate a new token
  ///
  /// Generate a new token for the command based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] commandId (required):
  ///   ID of the command to generate the new token
  Future<Response> regenCommandTokenWithHttpInfo(
    String commandId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/commands/{command_id}/regen_token'.replaceAll('{command_id}', commandId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Generate a new token
  ///
  /// Generate a new token for the command based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in.
  ///
  /// Parameters:
  ///
  /// * [String] commandId (required):
  ///   ID of the command to generate the new token
  Future<MattermostRegenCommandToken200Response?> regenCommandToken(
    String commandId,
  ) async {
    final response = await regenCommandTokenWithHttpInfo(
      commandId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MattermostRegenCommandToken200Response',
      ) as MattermostRegenCommandToken200Response;
    }
    return null;
  }

  /// Update a command
  ///
  /// Update a single command based on command id string and Command struct. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] commandId (required):
  ///   ID of the command to update
  ///
  /// * [MattermostCommand] mattermostCommand (required):
  Future<Response> updateCommandWithHttpInfo(
    String commandId,
    MattermostCommand mattermostCommand,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/commands/{command_id}'.replaceAll('{command_id}', commandId);

    // ignore: prefer_final_locals
    Object? postBody = mattermostCommand;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update a command
  ///
  /// Update a single command based on command id string and Command struct. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in.
  ///
  /// Parameters:
  ///
  /// * [String] commandId (required):
  ///   ID of the command to update
  ///
  /// * [MattermostCommand] mattermostCommand (required):
  Future<MattermostCommand?> updateCommand(
    String commandId,
    MattermostCommand mattermostCommand,
  ) async {
    final response = await updateCommandWithHttpInfo(
      commandId,
      mattermostCommand,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MattermostCommand',
      ) as MattermostCommand;
    }
    return null;
  }
}
