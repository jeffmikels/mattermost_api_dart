# mattermost_api.api.MattermostAuthenticationApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**migrateAuthToLdap**](MattermostAuthenticationApi.md#migrateauthtoldap) | **POST** /users/migrate_auth/ldap | Migrate user accounts authentication type to LDAP.
[**migrateAuthToSaml**](MattermostAuthenticationApi.md#migrateauthtosaml) | **POST** /users/migrate_auth/saml | Migrate user accounts authentication type to SAML.


# **migrateAuthToLdap**
> migrateAuthToLdap(mattermostMigrateAuthToLdapRequest)

Migrate user accounts authentication type to LDAP.

Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to LDAP. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostAuthenticationApi();
final mattermostMigrateAuthToLdapRequest = MattermostMigrateAuthToLdapRequest(); // MattermostMigrateAuthToLdapRequest | 

try {
    api_instance.migrateAuthToLdap(mattermostMigrateAuthToLdapRequest);
} catch (e) {
    print('Exception when calling MattermostAuthenticationApi->migrateAuthToLdap: $e\n');
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
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostAuthenticationApi();
final mattermostMigrateAuthToSamlRequest = MattermostMigrateAuthToSamlRequest(); // MattermostMigrateAuthToSamlRequest | 

try {
    api_instance.migrateAuthToSaml(mattermostMigrateAuthToSamlRequest);
} catch (e) {
    print('Exception when calling MattermostAuthenticationApi->migrateAuthToSaml: $e\n');
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

