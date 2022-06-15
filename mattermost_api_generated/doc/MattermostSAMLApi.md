# mattermost_api.api.MattermostSAMLApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSamlIdpCertificate**](MattermostSAMLApi.md#deletesamlidpcertificate) | **DELETE** /saml/certificate/idp | Remove IDP certificate
[**deleteSamlPrivateCertificate**](MattermostSAMLApi.md#deletesamlprivatecertificate) | **DELETE** /saml/certificate/private | Remove private key
[**deleteSamlPublicCertificate**](MattermostSAMLApi.md#deletesamlpubliccertificate) | **DELETE** /saml/certificate/public | Remove public certificate
[**getSamlCertificateStatus**](MattermostSAMLApi.md#getsamlcertificatestatus) | **GET** /saml/certificate/status | Get certificate status
[**getSamlMetadata**](MattermostSAMLApi.md#getsamlmetadata) | **GET** /saml/metadata | Get metadata
[**getSamlMetadataFromIdp**](MattermostSAMLApi.md#getsamlmetadatafromidp) | **POST** /saml/metadatafromidp | Get metadata from Identity Provider
[**migrateAuthToSaml**](MattermostSAMLApi.md#migrateauthtosaml) | **POST** /users/migrate_auth/saml | Migrate user accounts authentication type to SAML.
[**resetSamlAuthDataToEmail**](MattermostSAMLApi.md#resetsamlauthdatatoemail) | **POST** /saml/reset_auth_data | Reset AuthData to Email
[**uploadSamlIdpCertificate**](MattermostSAMLApi.md#uploadsamlidpcertificate) | **POST** /saml/certificate/idp | Upload IDP certificate
[**uploadSamlPrivateCertificate**](MattermostSAMLApi.md#uploadsamlprivatecertificate) | **POST** /saml/certificate/private | Upload private key
[**uploadSamlPublicCertificate**](MattermostSAMLApi.md#uploadsamlpubliccertificate) | **POST** /saml/certificate/public | Upload public certificate


# **deleteSamlIdpCertificate**
> MmStatusOK deleteSamlIdpCertificate()

Remove IDP certificate

Delete the current IDP certificate being used with your SAML configuration. This will also disable SAML on your system as this certificate is required for SAML. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MmStatusOK? result = await client.sAML.deleteSamlIdpCertificate(); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostSAMLApi->deleteSamlIdpCertificate: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **deleteSamlPrivateCertificate**
> MmStatusOK deleteSamlPrivateCertificate()

Remove private key

Delete the current private key being used with your SAML configuration. This will also disable encryption for SAML on your system as this key is required for that. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MmStatusOK? result = await client.sAML.deleteSamlPrivateCertificate(); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostSAMLApi->deleteSamlPrivateCertificate: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **deleteSamlPublicCertificate**
> MmStatusOK deleteSamlPublicCertificate()

Remove public certificate

Delete the current public certificate being used with your SAML configuration. This will also disable encryption for SAML on your system as this certificate is required for that. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MmStatusOK? result = await client.sAML.deleteSamlPublicCertificate(); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostSAMLApi->deleteSamlPublicCertificate: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getSamlCertificateStatus**
> MmSamlCertificateStatus getSamlCertificateStatus()

Get certificate status

Get the status of the uploaded certificates and keys in use by your SAML configuration. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MmSamlCertificateStatus? result = await client.sAML.getSamlCertificateStatus(); // await the Future<MmSamlCertificateStatus?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostSAMLApi->getSamlCertificateStatus: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MmSamlCertificateStatus**](MmSamlCertificateStatus.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getSamlMetadata**
> String getSamlMetadata()

Get metadata

Get SAML metadata from the server. SAML must be configured properly. ##### Permissions No permission required. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final String? result = await client.sAML.getSamlMetadata(); // await the Future<String?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostSAMLApi->getSamlMetadata: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getSamlMetadataFromIdp**
> String getSamlMetadataFromIdp(mmGetSamlMetadataFromIdpRequest)

Get metadata from Identity Provider

Get SAML metadata from the Identity Provider. SAML must be configured properly. ##### Permissions No permission required. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final MmGetSamlMetadataFromIdpRequest mmGetSamlMetadataFromIdpRequest = MmGetSamlMetadataFromIdpRequest(); // MmGetSamlMetadataFromIdpRequest | 

try {
  final String? result = await client.sAML.getSamlMetadataFromIdp(mmGetSamlMetadataFromIdpRequest); // await the Future<String?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostSAMLApi->getSamlMetadataFromIdp: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmGetSamlMetadataFromIdpRequest** | [**MmGetSamlMetadataFromIdpRequest**](MmGetSamlMetadataFromIdpRequest.md)|  | [optional] 

### Return type

**String**

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **migrateAuthToSaml**
> migrateAuthToSaml(mmMigrateAuthToSamlRequest)

Migrate user accounts authentication type to SAML.

Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to SAML. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final MmMigrateAuthToSamlRequest mmMigrateAuthToSamlRequest = MmMigrateAuthToSamlRequest(); // MmMigrateAuthToSamlRequest | 

try {
  await client.sAML.migrateAuthToSaml(mmMigrateAuthToSamlRequest); 
} catch (e) {
  print('Exception when calling MattermostSAMLApi->migrateAuthToSaml: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmMigrateAuthToSamlRequest** | [**MmMigrateAuthToSamlRequest**](MmMigrateAuthToSamlRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **resetSamlAuthDataToEmail**
> MmResetSamlAuthDataToEmail200Response resetSamlAuthDataToEmail(mmResetSamlAuthDataToEmailRequest)

Reset AuthData to Email

Reset the AuthData field of SAML users to their email. This is meant to be used when the \"id\" attribute is set to an empty value (\"\") from a previously non-empty value. __Minimum server version__: 5.35 ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final MmResetSamlAuthDataToEmailRequest mmResetSamlAuthDataToEmailRequest = MmResetSamlAuthDataToEmailRequest(); // MmResetSamlAuthDataToEmailRequest | 

try {
  final MmResetSamlAuthDataToEmail200Response? result = await client.sAML.resetSamlAuthDataToEmail(mmResetSamlAuthDataToEmailRequest); // await the Future<MmResetSamlAuthDataToEmail200Response?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostSAMLApi->resetSamlAuthDataToEmail: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmResetSamlAuthDataToEmailRequest** | [**MmResetSamlAuthDataToEmailRequest**](MmResetSamlAuthDataToEmailRequest.md)|  | [optional] 

### Return type

[**MmResetSamlAuthDataToEmail200Response**](MmResetSamlAuthDataToEmail200Response.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **uploadSamlIdpCertificate**
> MmStatusOK uploadSamlIdpCertificate(certificate)

Upload IDP certificate

Upload the IDP certificate to be used with your SAML configuration. The server will pick a hard-coded filename for the IdpCertificateFile setting in your `config.json`. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final MultipartFile certificate = BINARY_DATA_HERE; // MultipartFile | The IDP certificate file

try {
  final MmStatusOK? result = await client.sAML.uploadSamlIdpCertificate(certificate); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostSAMLApi->uploadSamlIdpCertificate: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate** | **MultipartFile**| The IDP certificate file | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **uploadSamlPrivateCertificate**
> MmStatusOK uploadSamlPrivateCertificate(certificate)

Upload private key

Upload the private key to be used for encryption with your SAML configuration. The server will pick a hard-coded filename for the PrivateKeyFile setting in your `config.json`. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final MultipartFile certificate = BINARY_DATA_HERE; // MultipartFile | The private key file

try {
  final MmStatusOK? result = await client.sAML.uploadSamlPrivateCertificate(certificate); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostSAMLApi->uploadSamlPrivateCertificate: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate** | **MultipartFile**| The private key file | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **uploadSamlPublicCertificate**
> MmStatusOK uploadSamlPublicCertificate(certificate)

Upload public certificate

Upload the public certificate to be used for encryption with your SAML configuration. The server will pick a hard-coded filename for the PublicCertificateFile setting in your `config.json`. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final MultipartFile certificate = BINARY_DATA_HERE; // MultipartFile | The public certificate file

try {
  final MmStatusOK? result = await client.sAML.uploadSamlPublicCertificate(certificate); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostSAMLApi->uploadSamlPublicCertificate: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate** | **MultipartFile**| The public certificate file | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

