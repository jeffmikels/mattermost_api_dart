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
  MattermostAuthenticationApi([MattermostApiClient? apiClient]) : apiClient = apiClient ?? defaultMattermostApiClient;

  final MattermostApiClient apiClient;

  /// Migrate user accounts authentication type to LDAP.
  ///
  /// Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to LDAP. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MattermostMigrateAuthToLdapRequest] mattermostMigrateAuthToLdapRequest:
  Future<Response> migrateAuthToLdapWithHttpInfo({ MattermostMigrateAuthToLdapRequest? mattermostMigrateAuthToLdapRequest, }) async {
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
  Future<void> migrateAuthToLdap({ MattermostMigrateAuthToLdapRequest? mattermostMigrateAuthToLdapRequest, }) async {
    final response = await migrateAuthToLdapWithHttpInfo( mattermostMigrateAuthToLdapRequest: mattermostMigrateAuthToLdapRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
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
  /// * [MattermostMigrateAuthToSamlRequest] mattermostMigrateAuthToSamlRequest:
  Future<Response> migrateAuthToSamlWithHttpInfo({ MattermostMigrateAuthToSamlRequest? mattermostMigrateAuthToSamlRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/migrate_auth/saml';

    // ignore: prefer_final_locals
    Object? postBody = mattermostMigrateAuthToSamlRequest;

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

  /// Migrate user accounts authentication type to SAML.
  ///
  /// Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to SAML. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 
  ///
  /// Parameters:
  ///
  /// * [MattermostMigrateAuthToSamlRequest] mattermostMigrateAuthToSamlRequest:
  Future<void> migrateAuthToSaml({ MattermostMigrateAuthToSamlRequest? mattermostMigrateAuthToSamlRequest, }) async {
    final response = await migrateAuthToSamlWithHttpInfo( mattermostMigrateAuthToSamlRequest: mattermostMigrateAuthToSamlRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
