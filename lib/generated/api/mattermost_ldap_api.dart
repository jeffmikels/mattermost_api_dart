//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostLDAPApi {
  final MattermostApiClient apiClient;

  MattermostLDAPApi(this.apiClient);

  /// Remove private key
  ///
  /// Delete the current private key being used with your TLS verification. ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteLdapPrivateCertificateWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/ldap/certificate/private';

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

  /// Remove private key
  ///
  /// Delete the current private key being used with your TLS verification. ##### Permissions Must have `manage_system` permission.
  Future<MattermostStatusOK?> deleteLdapPrivateCertificate() async {
    final response = await deleteLdapPrivateCertificateWithHttpInfo();
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

  /// Remove public certificate
  ///
  /// Delete the current public certificate being used for TLS verification. ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteLdapPublicCertificateWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/ldap/certificate/public';

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

  /// Remove public certificate
  ///
  /// Delete the current public certificate being used for TLS verification. ##### Permissions Must have `manage_system` permission.
  Future<MattermostStatusOK?> deleteLdapPublicCertificate() async {
    final response = await deleteLdapPublicCertificateWithHttpInfo();
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

  /// Returns a list of LDAP groups
  ///
  /// ##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.11
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] q:
  ///   Search term
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of users per page. There is a maximum limit of 200 users per page.
  Future<Response> getLdapGroupsWithHttpInfo({
    String? q,
    int? page,
    int? perPage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/ldap/groups';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
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

  /// Returns a list of LDAP groups
  ///
  /// ##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.11
  ///
  /// Parameters:
  ///
  /// * [String] q:
  ///   Search term
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of users per page. There is a maximum limit of 200 users per page.
  Future<List<MattermostLDAPGroupsPaged>?> getLdapGroups({
    String? q,
    int? page,
    int? perPage,
  }) async {
    final response = await getLdapGroupsWithHttpInfo(
      q: q,
      page: page,
      perPage: perPage,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MattermostLDAPGroupsPaged>') as List)
          .cast<MattermostLDAPGroupsPaged>()
          .toList();
    }
    return null;
  }

  /// Link a LDAP group
  ///
  /// ##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.11
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] remoteId (required):
  ///   Group GUID
  Future<Response> linkLdapGroupWithHttpInfo(
    String remoteId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/ldap/groups/{remote_id}/link'.replaceAll('{remote_id}', remoteId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
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

  /// Link a LDAP group
  ///
  /// ##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.11
  ///
  /// Parameters:
  ///
  /// * [String] remoteId (required):
  ///   Group GUID
  Future<MattermostStatusOK?> linkLdapGroup(
    String remoteId,
  ) async {
    final response = await linkLdapGroupWithHttpInfo(
      remoteId,
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

  /// Migrate user accounts authentication type to LDAP.
  ///
  /// Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to LDAP. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MattermostMigrateAuthToLdapRequest] mattermostMigrateAuthToLdapRequest:
  Future<Response> migrateAuthToLdapWithHttpInfo({
    MattermostMigrateAuthToLdapRequest? mattermostMigrateAuthToLdapRequest,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/migrate_auth/ldap';

    // ignore: prefer_final_locals
    Object? postBody = mattermostMigrateAuthToLdapRequest;

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

  /// Migrate user accounts authentication type to LDAP.
  ///
  /// Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to LDAP. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission.
  ///
  /// Parameters:
  ///
  /// * [MattermostMigrateAuthToLdapRequest] mattermostMigrateAuthToLdapRequest:
  Future<void> migrateAuthToLdap({
    MattermostMigrateAuthToLdapRequest? mattermostMigrateAuthToLdapRequest,
  }) async {
    final response = await migrateAuthToLdapWithHttpInfo(
      mattermostMigrateAuthToLdapRequest: mattermostMigrateAuthToLdapRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Migrate Id LDAP
  ///
  /// Migrate LDAP IdAttribute to new value. ##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.26
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MattermostMigrateIdLdapRequest] mattermostMigrateIdLdapRequest (required):
  Future<Response> migrateIdLdapWithHttpInfo(
    MattermostMigrateIdLdapRequest mattermostMigrateIdLdapRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/ldap/migrateid';

    // ignore: prefer_final_locals
    Object? postBody = mattermostMigrateIdLdapRequest;

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

  /// Migrate Id LDAP
  ///
  /// Migrate LDAP IdAttribute to new value. ##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.26
  ///
  /// Parameters:
  ///
  /// * [MattermostMigrateIdLdapRequest] mattermostMigrateIdLdapRequest (required):
  Future<MattermostStatusOK?> migrateIdLdap(
    MattermostMigrateIdLdapRequest mattermostMigrateIdLdapRequest,
  ) async {
    final response = await migrateIdLdapWithHttpInfo(
      mattermostMigrateIdLdapRequest,
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

  /// Sync with LDAP
  ///
  /// Synchronize any user attribute changes in the configured AD/LDAP server with Mattermost. ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> syncLdapWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/ldap/sync';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
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

  /// Sync with LDAP
  ///
  /// Synchronize any user attribute changes in the configured AD/LDAP server with Mattermost. ##### Permissions Must have `manage_system` permission.
  Future<MattermostStatusOK?> syncLdap() async {
    final response = await syncLdapWithHttpInfo();
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

  /// Test LDAP configuration
  ///
  /// Test the current AD/LDAP configuration to see if the AD/LDAP server can be contacted successfully. ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> testLdapWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/ldap/test';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
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

  /// Test LDAP configuration
  ///
  /// Test the current AD/LDAP configuration to see if the AD/LDAP server can be contacted successfully. ##### Permissions Must have `manage_system` permission.
  Future<MattermostStatusOK?> testLdap() async {
    final response = await testLdapWithHttpInfo();
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

  /// Upload private key
  ///
  /// Upload the private key to be used for TLS verification. The server will pick a hard-coded filename for the PrivateKeyFile setting in your `config.json`. ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] certificate (required):
  ///   The private key file
  Future<Response> uploadLdapPrivateCertificateWithHttpInfo(
    MultipartFile certificate,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/ldap/certificate/private';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (certificate != null) {
      hasFields = true;
      mp.fields[r'certificate'] = certificate.field;
      mp.files.add(certificate);
    }
    if (hasFields) {
      postBody = mp;
    }

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

  /// Upload private key
  ///
  /// Upload the private key to be used for TLS verification. The server will pick a hard-coded filename for the PrivateKeyFile setting in your `config.json`. ##### Permissions Must have `manage_system` permission.
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] certificate (required):
  ///   The private key file
  Future<MattermostStatusOK?> uploadLdapPrivateCertificate(
    MultipartFile certificate,
  ) async {
    final response = await uploadLdapPrivateCertificateWithHttpInfo(
      certificate,
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

  /// Upload public certificate
  ///
  /// Upload the public certificate to be used for TLS verification. The server will pick a hard-coded filename for the PublicCertificateFile setting in your `config.json`. ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] certificate (required):
  ///   The public certificate file
  Future<Response> uploadLdapPublicCertificateWithHttpInfo(
    MultipartFile certificate,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/ldap/certificate/public';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (certificate != null) {
      hasFields = true;
      mp.fields[r'certificate'] = certificate.field;
      mp.files.add(certificate);
    }
    if (hasFields) {
      postBody = mp;
    }

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

  /// Upload public certificate
  ///
  /// Upload the public certificate to be used for TLS verification. The server will pick a hard-coded filename for the PublicCertificateFile setting in your `config.json`. ##### Permissions Must have `manage_system` permission.
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] certificate (required):
  ///   The public certificate file
  Future<MattermostStatusOK?> uploadLdapPublicCertificate(
    MultipartFile certificate,
  ) async {
    final response = await uploadLdapPublicCertificateWithHttpInfo(
      certificate,
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
}
