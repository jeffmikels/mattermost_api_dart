//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostIntegrationActionsApi {
  final MattermostApiClient apiClient;

  MattermostIntegrationActionsApi(this.apiClient);

  /// Open a dialog
  ///
  /// Open an interactive dialog using a trigger ID provided by a slash command, or some other action payload. See https://docs.mattermost.com/developer/interactive-dialogs.html for more information on interactive dialogs. __Minimum server version: 5.6__
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MmOpenInteractiveDialogRequest] mmOpenInteractiveDialogRequest (required):
  ///   Metadata for the dialog to be opened
  Future<Response> openInteractiveDialogWithHttpInfo(
    MmOpenInteractiveDialogRequest mmOpenInteractiveDialogRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/actions/dialogs/open';

    // ignore: prefer_final_locals
    Object? postBody = mmOpenInteractiveDialogRequest;

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

  /// Open a dialog
  ///
  /// Open an interactive dialog using a trigger ID provided by a slash command, or some other action payload. See https://docs.mattermost.com/developer/interactive-dialogs.html for more information on interactive dialogs. __Minimum server version: 5.6__
  ///
  /// Parameters:
  ///
  /// * [MmOpenInteractiveDialogRequest] mmOpenInteractiveDialogRequest (required):
  ///   Metadata for the dialog to be opened
  Future<MmStatusOK?> openInteractiveDialog(
    MmOpenInteractiveDialogRequest mmOpenInteractiveDialogRequest,
  ) async {
    final response = await openInteractiveDialogWithHttpInfo(
      mmOpenInteractiveDialogRequest,
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

  /// Submit a dialog
  ///
  /// Endpoint used by the Mattermost clients to submit a dialog. See https://docs.mattermost.com/developer/interactive-dialogs.html for more information on interactive dialogs. __Minimum server version: 5.6__
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MmSubmitInteractiveDialogRequest] mmSubmitInteractiveDialogRequest (required):
  ///   Dialog submission data
  Future<Response> submitInteractiveDialogWithHttpInfo(
    MmSubmitInteractiveDialogRequest mmSubmitInteractiveDialogRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/actions/dialogs/submit';

    // ignore: prefer_final_locals
    Object? postBody = mmSubmitInteractiveDialogRequest;

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

  /// Submit a dialog
  ///
  /// Endpoint used by the Mattermost clients to submit a dialog. See https://docs.mattermost.com/developer/interactive-dialogs.html for more information on interactive dialogs. __Minimum server version: 5.6__
  ///
  /// Parameters:
  ///
  /// * [MmSubmitInteractiveDialogRequest] mmSubmitInteractiveDialogRequest (required):
  ///   Dialog submission data
  Future<MmStatusOK?> submitInteractiveDialog(
    MmSubmitInteractiveDialogRequest mmSubmitInteractiveDialogRequest,
  ) async {
    final response = await submitInteractiveDialogWithHttpInfo(
      mmSubmitInteractiveDialogRequest,
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
}
