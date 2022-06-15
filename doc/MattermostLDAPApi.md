# mattermost_api.api.MattermostLDAPApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteLdapPrivateCertificate**](MattermostLDAPApi.md#deleteldapprivatecertificate) | **DELETE** /ldap/certificate/private | Remove private key
[**deleteLdapPublicCertificate**](MattermostLDAPApi.md#deleteldappubliccertificate) | **DELETE** /ldap/certificate/public | Remove public certificate
[**getLdapGroups**](MattermostLDAPApi.md#getldapgroups) | **GET** /ldap/groups | Returns a list of LDAP groups
[**linkLdapGroup**](MattermostLDAPApi.md#linkldapgroup) | **POST** /ldap/groups/{remote_id}/link | Link a LDAP group
[**migrateAuthToLdap**](MattermostLDAPApi.md#migrateauthtoldap) | **POST** /users/migrate_auth/ldap | Migrate user accounts authentication type to LDAP.
[**migrateIdLdap**](MattermostLDAPApi.md#migrateidldap) | **POST** /ldap/migrateid | Migrate Id LDAP
[**syncLdap**](MattermostLDAPApi.md#syncldap) | **POST** /ldap/sync | Sync with LDAP
[**testLdap**](MattermostLDAPApi.md#testldap) | **POST** /ldap/test | Test LDAP configuration
[**uploadLdapPrivateCertificate**](MattermostLDAPApi.md#uploadldapprivatecertificate) | **POST** /ldap/certificate/private | Upload private key
[**uploadLdapPublicCertificate**](MattermostLDAPApi.md#uploadldappubliccertificate) | **POST** /ldap/certificate/public | Upload public certificate


# **deleteLdapPrivateCertificate**
> MattermostStatusOK deleteLdapPrivateCertificate()

Remove private key

Delete the current private key being used with your TLS verification. ##### Permissions Must have `manage_system` permission. 

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

// Then, access MattermostLDAPApi api instance
// final MattermostLDAPApi api_instance = client.lDAP


try {
    final result = await client.lDAP.deleteLdapPrivateCertificate();
    print(result);
} catch (e) {
    print('Exception when calling MattermostLDAPApi->deleteLdapPrivateCertificate: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteLdapPublicCertificate**
> MattermostStatusOK deleteLdapPublicCertificate()

Remove public certificate

Delete the current public certificate being used for TLS verification. ##### Permissions Must have `manage_system` permission. 

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

// Then, access MattermostLDAPApi api instance
// final MattermostLDAPApi api_instance = client.lDAP


try {
    final result = await client.lDAP.deleteLdapPublicCertificate();
    print(result);
} catch (e) {
    print('Exception when calling MattermostLDAPApi->deleteLdapPublicCertificate: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLdapGroups**
> List<MattermostLDAPGroupsPaged> getLdapGroups(q, page, perPage)

Returns a list of LDAP groups

##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.11 

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

// Then, access MattermostLDAPApi api instance
// final MattermostLDAPApi api_instance = client.lDAP

final q = q_example; // String | Search term
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of users per page. There is a maximum limit of 200 users per page.

try {
    final result = await client.lDAP.getLdapGroups(q, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostLDAPApi->getLdapGroups: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Search term | [optional] 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of users per page. There is a maximum limit of 200 users per page. | [optional] [default to 60]

### Return type

[**List<MattermostLDAPGroupsPaged>**](MattermostLDAPGroupsPaged.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkLdapGroup**
> MattermostStatusOK linkLdapGroup(remoteId)

Link a LDAP group

##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.11 

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

// Then, access MattermostLDAPApi api instance
// final MattermostLDAPApi api_instance = client.lDAP

final remoteId = remoteId_example; // String | Group GUID

try {
    final result = await client.lDAP.linkLdapGroup(remoteId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostLDAPApi->linkLdapGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **remoteId** | **String**| Group GUID | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

// Then, access MattermostLDAPApi api instance
// final MattermostLDAPApi api_instance = client.lDAP

final mattermostMigrateAuthToLdapRequest = MattermostMigrateAuthToLdapRequest(); // MattermostMigrateAuthToLdapRequest | 

try {
    await client.lDAP.migrateAuthToLdap(mattermostMigrateAuthToLdapRequest);
} catch (e) {
    print('Exception when calling MattermostLDAPApi->migrateAuthToLdap: $e\n');
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

# **migrateIdLdap**
> MattermostStatusOK migrateIdLdap(mattermostMigrateIdLdapRequest)

Migrate Id LDAP

Migrate LDAP IdAttribute to new value. ##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.26 

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

// Then, access MattermostLDAPApi api instance
// final MattermostLDAPApi api_instance = client.lDAP

final mattermostMigrateIdLdapRequest = MattermostMigrateIdLdapRequest(); // MattermostMigrateIdLdapRequest | 

try {
    final result = await client.lDAP.migrateIdLdap(mattermostMigrateIdLdapRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostLDAPApi->migrateIdLdap: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostMigrateIdLdapRequest** | [**MattermostMigrateIdLdapRequest**](MattermostMigrateIdLdapRequest.md)|  | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **syncLdap**
> MattermostStatusOK syncLdap()

Sync with LDAP

Synchronize any user attribute changes in the configured AD/LDAP server with Mattermost. ##### Permissions Must have `manage_system` permission. 

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

// Then, access MattermostLDAPApi api instance
// final MattermostLDAPApi api_instance = client.lDAP


try {
    final result = await client.lDAP.syncLdap();
    print(result);
} catch (e) {
    print('Exception when calling MattermostLDAPApi->syncLdap: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testLdap**
> MattermostStatusOK testLdap()

Test LDAP configuration

Test the current AD/LDAP configuration to see if the AD/LDAP server can be contacted successfully. ##### Permissions Must have `manage_system` permission. 

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

// Then, access MattermostLDAPApi api instance
// final MattermostLDAPApi api_instance = client.lDAP


try {
    final result = await client.lDAP.testLdap();
    print(result);
} catch (e) {
    print('Exception when calling MattermostLDAPApi->testLdap: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadLdapPrivateCertificate**
> MattermostStatusOK uploadLdapPrivateCertificate(certificate)

Upload private key

Upload the private key to be used for TLS verification. The server will pick a hard-coded filename for the PrivateKeyFile setting in your `config.json`. ##### Permissions Must have `manage_system` permission. 

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

// Then, access MattermostLDAPApi api instance
// final MattermostLDAPApi api_instance = client.lDAP

final certificate = BINARY_DATA_HERE; // MultipartFile | The private key file

try {
    final result = await client.lDAP.uploadLdapPrivateCertificate(certificate);
    print(result);
} catch (e) {
    print('Exception when calling MattermostLDAPApi->uploadLdapPrivateCertificate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate** | **MultipartFile**| The private key file | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadLdapPublicCertificate**
> MattermostStatusOK uploadLdapPublicCertificate(certificate)

Upload public certificate

Upload the public certificate to be used for TLS verification. The server will pick a hard-coded filename for the PublicCertificateFile setting in your `config.json`. ##### Permissions Must have `manage_system` permission. 

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

// Then, access MattermostLDAPApi api instance
// final MattermostLDAPApi api_instance = client.lDAP

final certificate = BINARY_DATA_HERE; // MultipartFile | The public certificate file

try {
    final result = await client.lDAP.uploadLdapPublicCertificate(certificate);
    print(result);
} catch (e) {
    print('Exception when calling MattermostLDAPApi->uploadLdapPublicCertificate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate** | **MultipartFile**| The public certificate file | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

