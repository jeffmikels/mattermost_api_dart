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
> MattermostUploadSession createUpload(mattermostCreateUploadRequest)

Create an upload

Creates a new upload session.  __Minimum server version__: 5.28 ##### Permissions Must have `upload_file` permission. 

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

// Then, access MattermostUploadsApi api instance
// final MattermostUploadsApi api_instance = client.uploads

final mattermostCreateUploadRequest = MattermostCreateUploadRequest(); // MattermostCreateUploadRequest | 

try {
    final result = await client.uploads.createUpload(mattermostCreateUploadRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUploadsApi->createUpload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostCreateUploadRequest** | [**MattermostCreateUploadRequest**](MattermostCreateUploadRequest.md)|  | 

### Return type

[**MattermostUploadSession**](MattermostUploadSession.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUpload**
> getUpload(uploadId)

Get an upload session

Gets an upload session that has been previously created.  ##### Permissions Must be logged in as the user who created the upload session. 

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

// Then, access MattermostUploadsApi api instance
// final MattermostUploadsApi api_instance = client.uploads

final uploadId = uploadId_example; // String | The ID of the upload session to get.

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

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadData**
> MattermostFileInfo uploadData(uploadId)

Perform a file upload

Starts or resumes a file upload.   To resume an existing (incomplete) upload, data should be sent starting from the offset specified in the upload session object.  The request body can be in one of two formats: - Binary file content streamed in request's body - multipart/form-data  ##### Permissions Must be logged in as the user who created the upload session. 

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

// Then, access MattermostUploadsApi api instance
// final MattermostUploadsApi api_instance = client.uploads

final uploadId = uploadId_example; // String | The ID of the upload session the data belongs to.

try {
    final result = await client.uploads.uploadData(uploadId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostUploadsApi->uploadData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uploadId** | **String**| The ID of the upload session the data belongs to. | 

### Return type

[**MattermostFileInfo**](MattermostFileInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
