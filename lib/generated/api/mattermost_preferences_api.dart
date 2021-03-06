//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostPreferencesApi {
  final MattermostApiClient apiClient;

  MattermostPreferencesApi(this.apiClient);

  /// Delete user's preferences
  ///
  /// Delete a list of the user's preferences. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [List<MmPreference>] mmPreference (required):
  ///   List of preference objects
  Future<Response> deletePreferencesWithHttpInfo(
    String userId,
    List<MmPreference> mmPreference,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/preferences/delete'.replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = mmPreference;

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

  /// Delete user's preferences
  ///
  /// Delete a list of the user's preferences. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [List<MmPreference>] mmPreference (required):
  ///   List of preference objects
  Future<MmStatusOK?> deletePreferences(
    String userId,
    List<MmPreference> mmPreference,
  ) async {
    final response = await deletePreferencesWithHttpInfo(
      userId,
      mmPreference,
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

  /// Get the user's preferences
  ///
  /// Get a list of the user's preferences. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<Response> getPreferencesWithHttpInfo(
    String userId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/preferences'.replaceAll('{user_id}', userId);

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

  /// Get the user's preferences
  ///
  /// Get a list of the user's preferences. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<List<MmPreference>?> getPreferences(
    String userId,
  ) async {
    final response = await getPreferencesWithHttpInfo(
      userId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MmPreference>') as List)
          .cast<MmPreference>()
          .toList();
    }
    return null;
  }

  /// List a user's preferences by category
  ///
  /// Lists the current user's stored preferences in the given category. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] category (required):
  ///   The category of a group of preferences
  Future<Response> getPreferencesByCategoryWithHttpInfo(
    String userId,
    String category,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/users/{user_id}/preferences/{category}'.replaceAll('{user_id}', userId).replaceAll('{category}', category);

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

  /// List a user's preferences by category
  ///
  /// Lists the current user's stored preferences in the given category. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] category (required):
  ///   The category of a group of preferences
  Future<List<MmPreference>?> getPreferencesByCategory(
    String userId,
    String category,
  ) async {
    final response = await getPreferencesByCategoryWithHttpInfo(
      userId,
      category,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MmApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MmPreference>') as List)
          .cast<MmPreference>()
          .toList();
    }
    return null;
  }

  /// Get a specific user preference
  ///
  /// Gets a single preference for the current user with the given category and name. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] category (required):
  ///   The category of a group of preferences
  ///
  /// * [String] preferenceName (required):
  ///   The name of the preference
  Future<Response> getPreferencesByCategoryByNameWithHttpInfo(
    String userId,
    String category,
    String preferenceName,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/preferences/{category}/name/{preference_name}'
        .replaceAll('{user_id}', userId)
        .replaceAll('{category}', category)
        .replaceAll('{preference_name}', preferenceName);

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

  /// Get a specific user preference
  ///
  /// Gets a single preference for the current user with the given category and name. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] category (required):
  ///   The category of a group of preferences
  ///
  /// * [String] preferenceName (required):
  ///   The name of the preference
  Future<MmPreference?> getPreferencesByCategoryByName(
    String userId,
    String category,
    String preferenceName,
  ) async {
    final response = await getPreferencesByCategoryByNameWithHttpInfo(
      userId,
      category,
      preferenceName,
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
        'MmPreference',
      ) as MmPreference;
    }
    return null;
  }

  /// Save the user's preferences
  ///
  /// Save a list of the user's preferences. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [List<MmPreference>] mmPreference (required):
  ///   List of preference objects
  Future<Response> updatePreferencesWithHttpInfo(
    String userId,
    List<MmPreference> mmPreference,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/preferences'.replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = mmPreference;

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

  /// Save the user's preferences
  ///
  /// Save a list of the user's preferences. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [List<MmPreference>] mmPreference (required):
  ///   List of preference objects
  Future<MmStatusOK?> updatePreferences(
    String userId,
    List<MmPreference> mmPreference,
  ) async {
    final response = await updatePreferencesWithHttpInfo(
      userId,
      mmPreference,
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
