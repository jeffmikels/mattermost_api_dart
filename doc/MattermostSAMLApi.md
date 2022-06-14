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
> MattermostStatusOK deleteSamlIdpCertificate()

Remove IDP certificate

Delete the current IDP certificate being used with your SAML configuration. This will also disable SAML on your system as this certificate is required for SAML. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSAMLApi();

try {
    final result = api_instance.deleteSamlIdpCertificate();
    print(result);
} catch (e) {
    print('Exception when calling MattermostSAMLApi->deleteSamlIdpCertificate: $e\n');
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

# **deleteSamlPrivateCertificate**
> MattermostStatusOK deleteSamlPrivateCertificate()

Remove private key

Delete the current private key being used with your SAML configuration. This will also disable encryption for SAML on your system as this key is required for that. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSAMLApi();

try {
    final result = api_instance.deleteSamlPrivateCertificate();
    print(result);
} catch (e) {
    print('Exception when calling MattermostSAMLApi->deleteSamlPrivateCertificate: $e\n');
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

# **deleteSamlPublicCertificate**
> MattermostStatusOK deleteSamlPublicCertificate()

Remove public certificate

Delete the current public certificate being used with your SAML configuration. This will also disable encryption for SAML on your system as this certificate is required for that. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSAMLApi();

try {
    final result = api_instance.deleteSamlPublicCertificate();
    print(result);
} catch (e) {
    print('Exception when calling MattermostSAMLApi->deleteSamlPublicCertificate: $e\n');
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

# **getSamlCertificateStatus**
> MattermostSamlCertificateStatus getSamlCertificateStatus()

Get certificate status

Get the status of the uploaded certificates and keys in use by your SAML configuration. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSAMLApi();

try {
    final result = api_instance.getSamlCertificateStatus();
    print(result);
} catch (e) {
    print('Exception when calling MattermostSAMLApi->getSamlCertificateStatus: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostSamlCertificateStatus**](MattermostSamlCertificateStatus.md)

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
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSAMLApi();

try {
    final result = api_instance.getSamlMetadata();
    print(result);
} catch (e) {
    print('Exception when calling MattermostSAMLApi->getSamlMetadata: $e\n');
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
> String getSamlMetadataFromIdp(mattermostGetSamlMetadataFromIdpRequest)

Get metadata from Identity Provider

Get SAML metadata from the Identity Provider. SAML must be configured properly. ##### Permissions No permission required. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSAMLApi();
final mattermostGetSamlMetadataFromIdpRequest = MattermostGetSamlMetadataFromIdpRequest(); // MattermostGetSamlMetadataFromIdpRequest | 

try {
    final result = api_instance.getSamlMetadataFromIdp(mattermostGetSamlMetadataFromIdpRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSAMLApi->getSamlMetadataFromIdp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostGetSamlMetadataFromIdpRequest** | [**MattermostGetSamlMetadataFromIdpRequest**](MattermostGetSamlMetadataFromIdpRequest.md)|  | [optional] 

### Return type

**String**

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

final api_instance = MattermostSAMLApi();
final mattermostMigrateAuthToSamlRequest = MattermostMigrateAuthToSamlRequest(); // MattermostMigrateAuthToSamlRequest | 

try {
    api_instance.migrateAuthToSaml(mattermostMigrateAuthToSamlRequest);
} catch (e) {
    print('Exception when calling MattermostSAMLApi->migrateAuthToSaml: $e\n');
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

# **resetSamlAuthDataToEmail**
> MattermostResetSamlAuthDataToEmail200Response resetSamlAuthDataToEmail(mattermostResetSamlAuthDataToEmailRequest)

Reset AuthData to Email

Reset the AuthData field of SAML users to their email. This is meant to be used when the \"id\" attribute is set to an empty value (\"\") from a previously non-empty value. __Minimum server version__: 5.35 ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSAMLApi();
final mattermostResetSamlAuthDataToEmailRequest = MattermostResetSamlAuthDataToEmailRequest(); // MattermostResetSamlAuthDataToEmailRequest | 

try {
    final result = api_instance.resetSamlAuthDataToEmail(mattermostResetSamlAuthDataToEmailRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSAMLApi->resetSamlAuthDataToEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostResetSamlAuthDataToEmailRequest** | [**MattermostResetSamlAuthDataToEmailRequest**](MattermostResetSamlAuthDataToEmailRequest.md)|  | [optional] 

### Return type

[**MattermostResetSamlAuthDataToEmail200Response**](MattermostResetSamlAuthDataToEmail200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadSamlIdpCertificate**
> MattermostStatusOK uploadSamlIdpCertificate(certificate)

Upload IDP certificate

Upload the IDP certificate to be used with your SAML configuration. The server will pick a hard-coded filename for the IdpCertificateFile setting in your `config.json`. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSAMLApi();
final certificate = BINARY_DATA_HERE; // MultipartFile | The IDP certificate file

try {
    final result = api_instance.uploadSamlIdpCertificate(certificate);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSAMLApi->uploadSamlIdpCertificate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate** | **MultipartFile**| The IDP certificate file | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadSamlPrivateCertificate**
> MattermostStatusOK uploadSamlPrivateCertificate(certificate)

Upload private key

Upload the private key to be used for encryption with your SAML configuration. The server will pick a hard-coded filename for the PrivateKeyFile setting in your `config.json`. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSAMLApi();
final certificate = BINARY_DATA_HERE; // MultipartFile | The private key file

try {
    final result = api_instance.uploadSamlPrivateCertificate(certificate);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSAMLApi->uploadSamlPrivateCertificate: $e\n');
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

# **uploadSamlPublicCertificate**
> MattermostStatusOK uploadSamlPublicCertificate(certificate)

Upload public certificate

Upload the public certificate to be used for encryption with your SAML configuration. The server will pick a hard-coded filename for the PublicCertificateFile setting in your `config.json`. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSAMLApi();
final certificate = BINARY_DATA_HERE; // MultipartFile | The public certificate file

try {
    final result = api_instance.uploadSamlPublicCertificate(certificate);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSAMLApi->uploadSamlPublicCertificate: $e\n');
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

