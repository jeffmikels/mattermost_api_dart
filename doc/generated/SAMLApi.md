# mattermost_api.api.SAMLApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSamlIdpCertificate**](SAMLApi.md#deletesamlidpcertificate) | **DELETE** /saml/certificate/idp | Remove IDP certificate
[**deleteSamlPrivateCertificate**](SAMLApi.md#deletesamlprivatecertificate) | **DELETE** /saml/certificate/private | Remove private key
[**deleteSamlPublicCertificate**](SAMLApi.md#deletesamlpubliccertificate) | **DELETE** /saml/certificate/public | Remove public certificate
[**getSamlCertificateStatus**](SAMLApi.md#getsamlcertificatestatus) | **GET** /saml/certificate/status | Get certificate status
[**getSamlMetadata**](SAMLApi.md#getsamlmetadata) | **GET** /saml/metadata | Get metadata
[**getSamlMetadataFromIdp**](SAMLApi.md#getsamlmetadatafromidp) | **POST** /saml/metadatafromidp | Get metadata from Identity Provider
[**migrateAuthToSaml**](SAMLApi.md#migrateauthtosaml) | **POST** /users/migrate_auth/saml | Migrate user accounts authentication type to SAML.
[**resetSamlAuthDataToEmail**](SAMLApi.md#resetsamlauthdatatoemail) | **POST** /saml/reset_auth_data | Reset AuthData to Email
[**uploadSamlIdpCertificate**](SAMLApi.md#uploadsamlidpcertificate) | **POST** /saml/certificate/idp | Upload IDP certificate
[**uploadSamlPrivateCertificate**](SAMLApi.md#uploadsamlprivatecertificate) | **POST** /saml/certificate/private | Upload private key
[**uploadSamlPublicCertificate**](SAMLApi.md#uploadsamlpubliccertificate) | **POST** /saml/certificate/public | Upload public certificate


# **deleteSamlIdpCertificate**
> StatusOK deleteSamlIdpCertificate()

Remove IDP certificate

Delete the current IDP certificate being used with your SAML configuration. This will also disable SAML on your system as this certificate is required for SAML. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SAMLApi();

try {
    final result = api_instance.deleteSamlIdpCertificate();
    print(result);
} catch (e) {
    print('Exception when calling SAMLApi->deleteSamlIdpCertificate: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSamlPrivateCertificate**
> StatusOK deleteSamlPrivateCertificate()

Remove private key

Delete the current private key being used with your SAML configuration. This will also disable encryption for SAML on your system as this key is required for that. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SAMLApi();

try {
    final result = api_instance.deleteSamlPrivateCertificate();
    print(result);
} catch (e) {
    print('Exception when calling SAMLApi->deleteSamlPrivateCertificate: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSamlPublicCertificate**
> StatusOK deleteSamlPublicCertificate()

Remove public certificate

Delete the current public certificate being used with your SAML configuration. This will also disable encryption for SAML on your system as this certificate is required for that. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SAMLApi();

try {
    final result = api_instance.deleteSamlPublicCertificate();
    print(result);
} catch (e) {
    print('Exception when calling SAMLApi->deleteSamlPublicCertificate: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSamlCertificateStatus**
> SamlCertificateStatus getSamlCertificateStatus()

Get certificate status

Get the status of the uploaded certificates and keys in use by your SAML configuration. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SAMLApi();

try {
    final result = api_instance.getSamlCertificateStatus();
    print(result);
} catch (e) {
    print('Exception when calling SAMLApi->getSamlCertificateStatus: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SamlCertificateStatus**](SamlCertificateStatus.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSamlMetadata**
> String getSamlMetadata()

Get metadata

Get SAML metadata from the server. SAML must be configured properly. ##### Permissions No permission required. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SAMLApi();

try {
    final result = api_instance.getSamlMetadata();
    print(result);
} catch (e) {
    print('Exception when calling SAMLApi->getSamlMetadata: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSamlMetadataFromIdp**
> String getSamlMetadataFromIdp(getSamlMetadataFromIdpRequest)

Get metadata from Identity Provider

Get SAML metadata from the Identity Provider. SAML must be configured properly. ##### Permissions No permission required. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SAMLApi();
final getSamlMetadataFromIdpRequest = GetSamlMetadataFromIdpRequest(); // GetSamlMetadataFromIdpRequest | 

try {
    final result = api_instance.getSamlMetadataFromIdp(getSamlMetadataFromIdpRequest);
    print(result);
} catch (e) {
    print('Exception when calling SAMLApi->getSamlMetadataFromIdp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getSamlMetadataFromIdpRequest** | [**GetSamlMetadataFromIdpRequest**](GetSamlMetadataFromIdpRequest.md)|  | [optional] 

### Return type

**String**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrateAuthToSaml**
> migrateAuthToSaml(migrateAuthToSamlRequest)

Migrate user accounts authentication type to SAML.

Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to SAML. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SAMLApi();
final migrateAuthToSamlRequest = MigrateAuthToSamlRequest(); // MigrateAuthToSamlRequest | 

try {
    api_instance.migrateAuthToSaml(migrateAuthToSamlRequest);
} catch (e) {
    print('Exception when calling SAMLApi->migrateAuthToSaml: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **migrateAuthToSamlRequest** | [**MigrateAuthToSamlRequest**](MigrateAuthToSamlRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetSamlAuthDataToEmail**
> ResetSamlAuthDataToEmail200Response resetSamlAuthDataToEmail(resetSamlAuthDataToEmailRequest)

Reset AuthData to Email

Reset the AuthData field of SAML users to their email. This is meant to be used when the \"id\" attribute is set to an empty value (\"\") from a previously non-empty value. __Minimum server version__: 5.35 ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SAMLApi();
final resetSamlAuthDataToEmailRequest = ResetSamlAuthDataToEmailRequest(); // ResetSamlAuthDataToEmailRequest | 

try {
    final result = api_instance.resetSamlAuthDataToEmail(resetSamlAuthDataToEmailRequest);
    print(result);
} catch (e) {
    print('Exception when calling SAMLApi->resetSamlAuthDataToEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resetSamlAuthDataToEmailRequest** | [**ResetSamlAuthDataToEmailRequest**](ResetSamlAuthDataToEmailRequest.md)|  | [optional] 

### Return type

[**ResetSamlAuthDataToEmail200Response**](ResetSamlAuthDataToEmail200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadSamlIdpCertificate**
> StatusOK uploadSamlIdpCertificate(certificate)

Upload IDP certificate

Upload the IDP certificate to be used with your SAML configuration. The server will pick a hard-coded filename for the IdpCertificateFile setting in your `config.json`. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SAMLApi();
final certificate = BINARY_DATA_HERE; // MultipartFile | The IDP certificate file

try {
    final result = api_instance.uploadSamlIdpCertificate(certificate);
    print(result);
} catch (e) {
    print('Exception when calling SAMLApi->uploadSamlIdpCertificate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate** | **MultipartFile**| The IDP certificate file | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadSamlPrivateCertificate**
> StatusOK uploadSamlPrivateCertificate(certificate)

Upload private key

Upload the private key to be used for encryption with your SAML configuration. The server will pick a hard-coded filename for the PrivateKeyFile setting in your `config.json`. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SAMLApi();
final certificate = BINARY_DATA_HERE; // MultipartFile | The private key file

try {
    final result = api_instance.uploadSamlPrivateCertificate(certificate);
    print(result);
} catch (e) {
    print('Exception when calling SAMLApi->uploadSamlPrivateCertificate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate** | **MultipartFile**| The private key file | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadSamlPublicCertificate**
> StatusOK uploadSamlPublicCertificate(certificate)

Upload public certificate

Upload the public certificate to be used for encryption with your SAML configuration. The server will pick a hard-coded filename for the PublicCertificateFile setting in your `config.json`. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SAMLApi();
final certificate = BINARY_DATA_HERE; // MultipartFile | The public certificate file

try {
    final result = api_instance.uploadSamlPublicCertificate(certificate);
    print(result);
} catch (e) {
    print('Exception when calling SAMLApi->uploadSamlPublicCertificate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate** | **MultipartFile**| The public certificate file | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

