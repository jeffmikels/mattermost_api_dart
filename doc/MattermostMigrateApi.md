# mattermost_api.api.MattermostMigrateApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**migrateAuthToLdap**](MattermostMigrateApi.md#migrateauthtoldap) | **POST** /users/migrate_auth/ldap | Migrate user accounts authentication type to LDAP.
[**migrateAuthToSaml**](MattermostMigrateApi.md#migrateauthtosaml) | **POST** /users/migrate_auth/saml | Migrate user accounts authentication type to SAML.


# **migrateAuthToLdap**
> migrateAuthToLdap(mattermostMigrateAuthToLdapRequest)

Migrate user accounts authentication type to LDAP.

Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to LDAP. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostMigrateApi api instance
// final MattermostMigrateApi api_instance = client.migrate

final mattermostMigrateAuthToLdapRequest = MattermostMigrateAuthToLdapRequest(); // MattermostMigrateAuthToLdapRequest | 

try {
    await client.migrate.migrateAuthToLdap(mattermostMigrateAuthToLdapRequest);
} catch (e) {
    print('Exception when calling MattermostMigrateApi->migrateAuthToLdap: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostMigrateAuthToLdapRequest** | [**MattermostMigrateAuthToLdapRequest**](MattermostMigrateAuthToLdapRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrateAuthToSaml**
> migrateAuthToSaml(mattermostMigrateAuthToSamlRequest)

Migrate user accounts authentication type to SAML.

Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to SAML. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostMigrateApi api instance
// final MattermostMigrateApi api_instance = client.migrate

final mattermostMigrateAuthToSamlRequest = MattermostMigrateAuthToSamlRequest(); // MattermostMigrateAuthToSamlRequest | 

try {
    await client.migrate.migrateAuthToSaml(mattermostMigrateAuthToSamlRequest);
} catch (e) {
    print('Exception when calling MattermostMigrateApi->migrateAuthToSaml: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostMigrateAuthToSamlRequest** | [**MattermostMigrateAuthToSamlRequest**](MattermostMigrateAuthToSamlRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

