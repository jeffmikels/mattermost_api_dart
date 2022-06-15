//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;


class MattermostAuthenticationApi {

  final MattermostApiClient apiClient;
  
  MattermostAuthenticationApi(this.apiClient);


  /// Migrate user accounts authentication type to LDAP.
  ///
  /// Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to LDAP. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MMMigrateAuthToLdapRequest] mMMigrateAuthToLdapRequest:
  Future<Response> migrateAuthToLdapWithHttpInfo({ MMMigrateAuthToLdapRequest? mMMigrateAuthToLdapRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/migrate_auth/ldap';

    // ignore: prefer_final_locals
    Object? postBody = mMMigrateAuthToLdapRequest;

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

  /// Migrate user accounts authentication type to LDAP.
  ///
  /// Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to LDAP. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 
  ///
  /// Parameters:
  ///
  /// * [MMMigrateAuthToLdapRequest] mMMigrateAuthToLdapRequest:
  Future<void> migrateAuthToLdap({ MMMigrateAuthToLdapRequest? mMMigrateAuthToLdapRequest, }) async {
    final response = await migrateAuthToLdapWithHttpInfo( mMMigrateAuthToLdapRequest: mMMigrateAuthToLdapRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
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
}
