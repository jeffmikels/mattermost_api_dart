//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostRootApi {
  final MattermostApiClient apiClient;

  MattermostRootApi(this.apiClient);

  /// Acknowledge receiving of a notification
  ///
  /// __Minimum server version__: 3.10 ##### Permissions Must be logged in.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> acknowledgeNotificationWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/notifications/ack';

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

  /// Acknowledge receiving of a notification
  ///
  /// __Minimum server version__: 3.10 ##### Permissions Must be logged in.
  Future<MmPushNotification?> acknowledgeNotification() async {
    final response = await acknowledgeNotificationWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MmPushNotification',
      ) as MmPushNotification;
    }
    return null;
  }
}
