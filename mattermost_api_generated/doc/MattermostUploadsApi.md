# mattermost_api.api.MattermostUploadsApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUpload**](MattermostUploadsApi.md#createupload) | **POST** /uploads | Create an upload
[**getUpload**](MattermostUploadsApi.md#getupload) | **GET** /uploads/{upload_id} | Get an upload session
[**uploadData**](MattermostUploadsApi.md#uploaddata) | **POST** /uploads/{upload_id} | Perform a file upload


# **createUpload**
> MmUploadSession createUpload(mmCreateUploadRequest)

Create an upload

Creates a new upload session.  __Minimum server version__: 5.28 ##### Permissions Must have `upload_file` permission. 

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


final MmCreateUploadRequest mmCreateUploadRequest = MmCreateUploadRequest(); // MmCreateUploadRequest | 

try {
  final MmUploadSession? result = await client.uploads.createUpload(mmCreateUploadRequest); // await the Future<MmUploadSession?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUploadsApi->createUpload: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmCreateUploadRequest** | [**MmCreateUploadRequest**](MmCreateUploadRequest.md)|  | 

### Return type

[**MmUploadSession**](MmUploadSession.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getUpload**
> getUpload(uploadId)

Get an upload session

Gets an upload session that has been previously created.  ##### Permissions Must be logged in as the user who created the upload session. 

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


final String uploadId = 'uploadId_example'; // String | The ID of the upload session to get.

try {
  await client.uploads.getUpload(uploadId); 
} catch (e) {
  print('Exception when calling MattermostUploadsApi->getUpload: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uploadId** | **String**| The ID of the upload session to get. | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **uploadData**
> MmFileInfo uploadData(uploadId)

Perform a file upload

Starts or resumes a file upload.   To resume an existing (incomplete) upload, data should be sent starting from the offset specified in the upload session object.  The request body can be in one of two formats: - Binary file content streamed in request's body - multipart/form-data  ##### Permissions Must be logged in as the user who created the upload session. 

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


final String uploadId = 'uploadId_example'; // String | The ID of the upload session the data belongs to.

try {
  final MmFileInfo? result = await client.uploads.uploadData(uploadId); // await the Future<MmFileInfo?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUploadsApi->uploadData: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uploadId** | **String**| The ID of the upload session the data belongs to. | 

### Return type

[**MmFileInfo**](MmFileInfo.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

