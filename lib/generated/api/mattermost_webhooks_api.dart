//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostWebhooksApi {
  final MattermostApiClient apiClient;

  MattermostWebhooksApi(this.apiClient);

  /// Create an incoming webhook
  ///
  /// Create an incoming webhook for a channel. ##### Permissions `manage_webhooks` for the team the webhook is in.  `manage_others_incoming_webhooks` for the team the webhook is in if the user is different than the requester.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MmCreateIncomingWebhookRequest] mmCreateIncomingWebhookRequest (required):
  ///   Incoming webhook to be created
  Future<Response> createIncomingWebhookWithHttpInfo(
    MmCreateIncomingWebhookRequest mmCreateIncomingWebhookRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/hooks/incoming';

    // ignore: prefer_final_locals
    Object? postBody = mmCreateIncomingWebhookRequest;

    final queryParams = <MmQueryParam>[];
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

  /// Create an incoming webhook
  ///
  /// Create an incoming webhook for a channel. ##### Permissions `manage_webhooks` for the team the webhook is in.  `manage_others_incoming_webhooks` for the team the webhook is in if the user is different than the requester.
  ///
  /// Parameters:
  ///
  /// * [MmCreateIncomingWebhookRequest] mmCreateIncomingWebhookRequest (required):
  ///   Incoming webhook to be created
  Future<MmIncomingWebhook?> createIncomingWebhook(
    MmCreateIncomingWebhookRequest mmCreateIncomingWebhookRequest,
  ) async {
    final response = await createIncomingWebhookWithHttpInfo(
      mmCreateIncomingWebhookRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmIncomingWebhook',
      ) as MmIncomingWebhook;
    }
    return null;
  }

  /// Create an outgoing webhook
  ///
  /// Create an outgoing webhook for a team. ##### Permissions `manage_webhooks` for the team the webhook is in.  `manage_others_outgoing_webhooks` for the team the webhook is in if the user is different than the requester.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MmCreateOutgoingWebhookRequest] mmCreateOutgoingWebhookRequest (required):
  ///   Outgoing webhook to be created
  Future<Response> createOutgoingWebhookWithHttpInfo(
    MmCreateOutgoingWebhookRequest mmCreateOutgoingWebhookRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/hooks/outgoing';

    // ignore: prefer_final_locals
    Object? postBody = mmCreateOutgoingWebhookRequest;

    final queryParams = <MmQueryParam>[];
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

  /// Create an outgoing webhook
  ///
  /// Create an outgoing webhook for a team. ##### Permissions `manage_webhooks` for the team the webhook is in.  `manage_others_outgoing_webhooks` for the team the webhook is in if the user is different than the requester.
  ///
  /// Parameters:
  ///
  /// * [MmCreateOutgoingWebhookRequest] mmCreateOutgoingWebhookRequest (required):
  ///   Outgoing webhook to be created
  Future<MmOutgoingWebhook?> createOutgoingWebhook(
    MmCreateOutgoingWebhookRequest mmCreateOutgoingWebhookRequest,
  ) async {
    final response = await createOutgoingWebhookWithHttpInfo(
      mmCreateOutgoingWebhookRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmOutgoingWebhook',
      ) as MmOutgoingWebhook;
    }
    return null;
  }

  /// Delete an incoming webhook
  ///
  /// Delete an incoming webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hookId (required):
  ///   Incoming webhook GUID
  Future<Response> deleteIncomingWebhookWithHttpInfo(
    String hookId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/hooks/incoming/{hook_id}'.replaceAll('{hook_id}', hookId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
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

  /// Delete an incoming webhook
  ///
  /// Delete an incoming webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel.
  ///
  /// Parameters:
  ///
  /// * [String] hookId (required):
  ///   Incoming webhook GUID
  Future<MmStatusOK?> deleteIncomingWebhook(
    String hookId,
  ) async {
    final response = await deleteIncomingWebhookWithHttpInfo(
      hookId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmStatusOK',
      ) as MmStatusOK;
    }
    return null;
  }

  /// Delete an outgoing webhook
  ///
  /// Delete an outgoing webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hookId (required):
  ///   Outgoing webhook GUID
  Future<Response> deleteOutgoingWebhookWithHttpInfo(
    String hookId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/hooks/outgoing/{hook_id}'.replaceAll('{hook_id}', hookId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
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

  /// Delete an outgoing webhook
  ///
  /// Delete an outgoing webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel.
  ///
  /// Parameters:
  ///
  /// * [String] hookId (required):
  ///   Outgoing webhook GUID
  Future<MmStatusOK?> deleteOutgoingWebhook(
    String hookId,
  ) async {
    final response = await deleteOutgoingWebhookWithHttpInfo(
      hookId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmStatusOK',
      ) as MmStatusOK;
    }
    return null;
  }

  /// Get an incoming webhook
  ///
  /// Get an incoming webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hookId (required):
  ///   Incoming Webhook GUID
  Future<Response> getIncomingWebhookWithHttpInfo(
    String hookId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/hooks/incoming/{hook_id}'.replaceAll('{hook_id}', hookId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
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

  /// Get an incoming webhook
  ///
  /// Get an incoming webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel.
  ///
  /// Parameters:
  ///
  /// * [String] hookId (required):
  ///   Incoming Webhook GUID
  Future<MmIncomingWebhook?> getIncomingWebhook(
    String hookId,
  ) async {
    final response = await getIncomingWebhookWithHttpInfo(
      hookId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmIncomingWebhook',
      ) as MmIncomingWebhook;
    }
    return null;
  }

  /// List incoming webhooks
  ///
  /// Get a page of a list of incoming webhooks. Optionally filter for a specific team using query parameters. ##### Permissions `manage_webhooks` for the system or `manage_webhooks` for the specific team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of hooks per page.
  ///
  /// * [String] teamId:
  ///   The ID of the team to get hooks for.
  Future<Response> getIncomingWebhooksWithHttpInfo({
    int? page,
    int? perPage,
    String? teamId,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/hooks/incoming';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (teamId != null) {
      queryParams.addAll(_queryParams('', 'team_id', teamId));
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

  /// List incoming webhooks
  ///
  /// Get a page of a list of incoming webhooks. Optionally filter for a specific team using query parameters. ##### Permissions `manage_webhooks` for the system or `manage_webhooks` for the specific team.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of hooks per page.
  ///
  /// * [String] teamId:
  ///   The ID of the team to get hooks for.
  Future<List<MmIncomingWebhook>?> getIncomingWebhooks({
    int? page,
    int? perPage,
    String? teamId,
  }) async {
    final response = await getIncomingWebhooksWithHttpInfo(
      page: page,
      perPage: perPage,
      teamId: teamId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MmIncomingWebhook>') as List)
          .cast<MmIncomingWebhook>()
          .toList();
    }
    return null;
  }

  /// Get an outgoing webhook
  ///
  /// Get an outgoing webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hookId (required):
  ///   Outgoing webhook GUID
  Future<Response> getOutgoingWebhookWithHttpInfo(
    String hookId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/hooks/outgoing/{hook_id}'.replaceAll('{hook_id}', hookId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
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

  /// Get an outgoing webhook
  ///
  /// Get an outgoing webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel.
  ///
  /// Parameters:
  ///
  /// * [String] hookId (required):
  ///   Outgoing webhook GUID
  Future<MmOutgoingWebhook?> getOutgoingWebhook(
    String hookId,
  ) async {
    final response = await getOutgoingWebhookWithHttpInfo(
      hookId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmOutgoingWebhook',
      ) as MmOutgoingWebhook;
    }
    return null;
  }

  /// List outgoing webhooks
  ///
  /// Get a page of a list of outgoing webhooks. Optionally filter for a specific team or channel using query parameters. ##### Permissions `manage_webhooks` for the system or `manage_webhooks` for the specific team/channel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of hooks per page.
  ///
  /// * [String] teamId:
  ///   The ID of the team to get hooks for.
  ///
  /// * [String] channelId:
  ///   The ID of the channel to get hooks for.
  Future<Response> getOutgoingWebhooksWithHttpInfo({
    int? page,
    int? perPage,
    String? teamId,
    String? channelId,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/hooks/outgoing';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (teamId != null) {
      queryParams.addAll(_queryParams('', 'team_id', teamId));
    }
    if (channelId != null) {
      queryParams.addAll(_queryParams('', 'channel_id', channelId));
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

  /// List outgoing webhooks
  ///
  /// Get a page of a list of outgoing webhooks. Optionally filter for a specific team or channel using query parameters. ##### Permissions `manage_webhooks` for the system or `manage_webhooks` for the specific team/channel.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of hooks per page.
  ///
  /// * [String] teamId:
  ///   The ID of the team to get hooks for.
  ///
  /// * [String] channelId:
  ///   The ID of the channel to get hooks for.
  Future<List<MmOutgoingWebhook>?> getOutgoingWebhooks({
    int? page,
    int? perPage,
    String? teamId,
    String? channelId,
  }) async {
    final response = await getOutgoingWebhooksWithHttpInfo(
      page: page,
      perPage: perPage,
      teamId: teamId,
      channelId: channelId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MmOutgoingWebhook>') as List)
          .cast<MmOutgoingWebhook>()
          .toList();
    }
    return null;
  }

  /// Regenerate the token for the outgoing webhook.
  ///
  /// Regenerate the token for the outgoing webhook. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hookId (required):
  ///   Outgoing webhook GUID
  Future<Response> regenOutgoingHookTokenWithHttpInfo(
    String hookId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/hooks/outgoing/{hook_id}/regen_token'.replaceAll('{hook_id}', hookId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MmQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

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

  /// Regenerate the token for the outgoing webhook.
  ///
  /// Regenerate the token for the outgoing webhook. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel.
  ///
  /// Parameters:
  ///
  /// * [String] hookId (required):
  ///   Outgoing webhook GUID
  Future<MmStatusOK?> regenOutgoingHookToken(
    String hookId,
  ) async {
    final response = await regenOutgoingHookTokenWithHttpInfo(
      hookId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmStatusOK',
      ) as MmStatusOK;
    }
    return null;
  }

  /// Update an incoming webhook
  ///
  /// Update an incoming webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hookId (required):
  ///   Incoming Webhook GUID
  ///
  /// * [MmUpdateIncomingWebhookRequest] mmUpdateIncomingWebhookRequest (required):
  ///   Incoming webhook to be updated
  Future<Response> updateIncomingWebhookWithHttpInfo(
    String hookId,
    MmUpdateIncomingWebhookRequest mmUpdateIncomingWebhookRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/hooks/incoming/{hook_id}'.replaceAll('{hook_id}', hookId);

    // ignore: prefer_final_locals
    Object? postBody = mmUpdateIncomingWebhookRequest;

    final queryParams = <MmQueryParam>[];
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

  /// Update an incoming webhook
  ///
  /// Update an incoming webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel.
  ///
  /// Parameters:
  ///
  /// * [String] hookId (required):
  ///   Incoming Webhook GUID
  ///
  /// * [MmUpdateIncomingWebhookRequest] mmUpdateIncomingWebhookRequest (required):
  ///   Incoming webhook to be updated
  Future<MmIncomingWebhook?> updateIncomingWebhook(
    String hookId,
    MmUpdateIncomingWebhookRequest mmUpdateIncomingWebhookRequest,
  ) async {
    final response = await updateIncomingWebhookWithHttpInfo(
      hookId,
      mmUpdateIncomingWebhookRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmIncomingWebhook',
      ) as MmIncomingWebhook;
    }
    return null;
  }

  /// Update an outgoing webhook
  ///
  /// Update an outgoing webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hookId (required):
  ///   outgoing Webhook GUID
  ///
  /// * [MmUpdateOutgoingWebhookRequest] mmUpdateOutgoingWebhookRequest (required):
  ///   Outgoing webhook to be updated
  Future<Response> updateOutgoingWebhookWithHttpInfo(
    String hookId,
    MmUpdateOutgoingWebhookRequest mmUpdateOutgoingWebhookRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/hooks/outgoing/{hook_id}'.replaceAll('{hook_id}', hookId);

    // ignore: prefer_final_locals
    Object? postBody = mmUpdateOutgoingWebhookRequest;

    final queryParams = <MmQueryParam>[];
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

  /// Update an outgoing webhook
  ///
  /// Update an outgoing webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel.
  ///
  /// Parameters:
  ///
  /// * [String] hookId (required):
  ///   outgoing Webhook GUID
  ///
  /// * [MmUpdateOutgoingWebhookRequest] mmUpdateOutgoingWebhookRequest (required):
  ///   Outgoing webhook to be updated
  Future<MmOutgoingWebhook?> updateOutgoingWebhook(
    String hookId,
    MmUpdateOutgoingWebhookRequest mmUpdateOutgoingWebhookRequest,
  ) async {
    final response = await updateOutgoingWebhookWithHttpInfo(
      hookId,
      mmUpdateOutgoingWebhookRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmOutgoingWebhook',
      ) as MmOutgoingWebhook;
    }
    return null;
  }
}
