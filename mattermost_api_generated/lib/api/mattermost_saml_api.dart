//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;


class MattermostSAMLApi {

  final MattermostApiClient apiClient;
  
  MattermostSAMLApi(this.apiClient);


  /// Remove IDP certificate
  ///
  /// Delete the current IDP certificate being used with your SAML configuration. This will also disable SAML on your system as this certificate is required for SAML. ##### Permissions Must have `sysconsole_write_authentication` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteSamlIdpCertificateWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/saml/certificate/idp';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
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

  /// Remove IDP certificate
  ///
  /// Delete the current IDP certificate being used with your SAML configuration. This will also disable SAML on your system as this certificate is required for SAML. ##### Permissions Must have `sysconsole_write_authentication` permission. 
  Future<MMStatusOK?> deleteSamlIdpCertificate() async {
    final response = await deleteSamlIdpCertificateWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MMStatusOK',) as MMStatusOK;
    
    }
    return null;
  }

  /// Remove private key
  ///
  /// Delete the current private key being used with your SAML configuration. This will also disable encryption for SAML on your system as this key is required for that. ##### Permissions Must have `sysconsole_write_authentication` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteSamlPrivateCertificateWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/saml/certificate/private';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
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
  /// Delete the current private key being used with your SAML configuration. This will also disable encryption for SAML on your system as this key is required for that. ##### Permissions Must have `sysconsole_write_authentication` permission. 
  Future<MMStatusOK?> deleteSamlPrivateCertificate() async {
    final response = await deleteSamlPrivateCertificateWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MMStatusOK',) as MMStatusOK;
    
    }
    return null;
  }

  /// Remove public certificate
  ///
  /// Delete the current public certificate being used with your SAML configuration. This will also disable encryption for SAML on your system as this certificate is required for that. ##### Permissions Must have `sysconsole_write_authentication` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteSamlPublicCertificateWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/saml/certificate/public';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
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
  /// Delete the current public certificate being used with your SAML configuration. This will also disable encryption for SAML on your system as this certificate is required for that. ##### Permissions Must have `sysconsole_write_authentication` permission. 
  Future<MMStatusOK?> deleteSamlPublicCertificate() async {
    final response = await deleteSamlPublicCertificateWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MMStatusOK',) as MMStatusOK;
    
    }
    return null;
  }

  /// Get certificate status
  ///
  /// Get the status of the uploaded certificates and keys in use by your SAML configuration. ##### Permissions Must have `sysconsole_write_authentication` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSamlCertificateStatusWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/saml/certificate/status';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
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

  /// Get certificate status
  ///
  /// Get the status of the uploaded certificates and keys in use by your SAML configuration. ##### Permissions Must have `sysconsole_write_authentication` permission. 
  Future<MMSamlCertificateStatus?> getSamlCertificateStatus() async {
    final response = await getSamlCertificateStatusWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MMSamlCertificateStatus',) as MMSamlCertificateStatus;
    
    }
    return null;
  }

  /// Get metadata
  ///
  /// Get SAML metadata from the server. SAML must be configured properly. ##### Permissions No permission required. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSamlMetadataWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/saml/metadata';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
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

  /// Get metadata
  ///
  /// Get SAML metadata from the server. SAML must be configured properly. ##### Permissions No permission required. 
  Future<String?> getSamlMetadata() async {
    final response = await getSamlMetadataWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Get metadata from Identity Provider
  ///
  /// Get SAML metadata from the Identity Provider. SAML must be configured properly. ##### Permissions No permission required. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MMGetSamlMetadataFromIdpRequest] mMGetSamlMetadataFromIdpRequest:
  Future<Response> getSamlMetadataFromIdpWithHttpInfo({ MMGetSamlMetadataFromIdpRequest? mMGetSamlMetadataFromIdpRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/saml/metadatafromidp';

    // ignore: prefer_final_locals
    Object? postBody = mMGetSamlMetadataFromIdpRequest;

    final queryParams = <MMQueryParam>[];
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

  /// Get metadata from Identity Provider
  ///
  /// Get SAML metadata from the Identity Provider. SAML must be configured properly. ##### Permissions No permission required. 
  ///
  /// Parameters:
  ///
  /// * [MMGetSamlMetadataFromIdpRequest] mMGetSamlMetadataFromIdpRequest:
  Future<String?> getSamlMetadataFromIdp({ MMGetSamlMetadataFromIdpRequest? mMGetSamlMetadataFromIdpRequest, }) async {
    final response = await getSamlMetadataFromIdpWithHttpInfo( mMGetSamlMetadataFromIdpRequest: mMGetSamlMetadataFromIdpRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Migrate user accounts authentication type to SAML.
  ///
  /// Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to SAML. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MMMigrateAuthToSamlRequest] mMMigrateAuthToSamlRequest:
  Future<Response> migrateAuthToSamlWithHttpInfo({ MMMigrateAuthToSamlRequest? mMMigrateAuthToSamlRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/migrate_auth/saml';

    // ignore: prefer_final_locals
    Object? postBody = mMMigrateAuthToSamlRequest;

    final queryParams = <MMQueryParam>[];
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

  /// Migrate user accounts authentication type to SAML.
  ///
  /// Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to SAML. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 
  ///
  /// Parameters:
  ///
  /// * [MMMigrateAuthToSamlRequest] mMMigrateAuthToSamlRequest:
  Future<void> migrateAuthToSaml({ MMMigrateAuthToSamlRequest? mMMigrateAuthToSamlRequest, }) async {
    final response = await migrateAuthToSamlWithHttpInfo( mMMigrateAuthToSamlRequest: mMMigrateAuthToSamlRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Reset AuthData to Email
  ///
  /// Reset the AuthData field of SAML users to their email. This is meant to be used when the \"id\" attribute is set to an empty value (\"\") from a previously non-empty value. __Minimum server version__: 5.35 ##### Permissions Must have `manage_system` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MMResetSamlAuthDataToEmailRequest] mMResetSamlAuthDataToEmailRequest:
  Future<Response> resetSamlAuthDataToEmailWithHttpInfo({ MMResetSamlAuthDataToEmailRequest? mMResetSamlAuthDataToEmailRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/saml/reset_auth_data';

    // ignore: prefer_final_locals
    Object? postBody = mMResetSamlAuthDataToEmailRequest;

    final queryParams = <MMQueryParam>[];
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

  /// Reset AuthData to Email
  ///
  /// Reset the AuthData field of SAML users to their email. This is meant to be used when the \"id\" attribute is set to an empty value (\"\") from a previously non-empty value. __Minimum server version__: 5.35 ##### Permissions Must have `manage_system` permission. 
  ///
  /// Parameters:
  ///
  /// * [MMResetSamlAuthDataToEmailRequest] mMResetSamlAuthDataToEmailRequest:
  Future<MMResetSamlAuthDataToEmail200Response?> resetSamlAuthDataToEmail({ MMResetSamlAuthDataToEmailRequest? mMResetSamlAuthDataToEmailRequest, }) async {
    final response = await resetSamlAuthDataToEmailWithHttpInfo( mMResetSamlAuthDataToEmailRequest: mMResetSamlAuthDataToEmailRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MMResetSamlAuthDataToEmail200Response',) as MMResetSamlAuthDataToEmail200Response;
    
    }
    return null;
  }

  /// Upload IDP certificate
  ///
  /// Upload the IDP certificate to be used with your SAML configuration. The server will pick a hard-coded filename for the IdpCertificateFile setting in your `config.json`. ##### Permissions Must have `sysconsole_write_authentication` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] certificate (required):
  ///   The IDP certificate file
  Future<Response> uploadSamlIdpCertificateWithHttpInfo(MultipartFile certificate,) async {
    // ignore: prefer_const_declarations
    final path = r'/saml/certificate/idp';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
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

  /// Upload IDP certificate
  ///
  /// Upload the IDP certificate to be used with your SAML configuration. The server will pick a hard-coded filename for the IdpCertificateFile setting in your `config.json`. ##### Permissions Must have `sysconsole_write_authentication` permission. 
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] certificate (required):
  ///   The IDP certificate file
  Future<MMStatusOK?> uploadSamlIdpCertificate(MultipartFile certificate,) async {
    final response = await uploadSamlIdpCertificateWithHttpInfo(certificate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MMStatusOK',) as MMStatusOK;
    
    }
    return null;
  }

  /// Upload private key
  ///
  /// Upload the private key to be used for encryption with your SAML configuration. The server will pick a hard-coded filename for the PrivateKeyFile setting in your `config.json`. ##### Permissions Must have `sysconsole_write_authentication` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] certificate (required):
  ///   The private key file
  Future<Response> uploadSamlPrivateCertificateWithHttpInfo(MultipartFile certificate,) async {
    // ignore: prefer_const_declarations
    final path = r'/saml/certificate/private';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
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
  /// Upload the private key to be used for encryption with your SAML configuration. The server will pick a hard-coded filename for the PrivateKeyFile setting in your `config.json`. ##### Permissions Must have `sysconsole_write_authentication` permission. 
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] certificate (required):
  ///   The private key file
  Future<MMStatusOK?> uploadSamlPrivateCertificate(MultipartFile certificate,) async {
    final response = await uploadSamlPrivateCertificateWithHttpInfo(certificate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MMStatusOK',) as MMStatusOK;
    
    }
    return null;
  }

  /// Upload public certificate
  ///
  /// Upload the public certificate to be used for encryption with your SAML configuration. The server will pick a hard-coded filename for the PublicCertificateFile setting in your `config.json`. ##### Permissions Must have `sysconsole_write_authentication` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] certificate (required):
  ///   The public certificate file
  Future<Response> uploadSamlPublicCertificateWithHttpInfo(MultipartFile certificate,) async {
    // ignore: prefer_const_declarations
    final path = r'/saml/certificate/public';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
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
  /// Upload the public certificate to be used for encryption with your SAML configuration. The server will pick a hard-coded filename for the PublicCertificateFile setting in your `config.json`. ##### Permissions Must have `sysconsole_write_authentication` permission. 
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] certificate (required):
  ///   The public certificate file
  Future<MMStatusOK?> uploadSamlPublicCertificate(MultipartFile certificate,) async {
    final response = await uploadSamlPublicCertificateWithHttpInfo(certificate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MMStatusOK',) as MMStatusOK;
    
    }
    return null;
  }
}
