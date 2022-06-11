# mattermost_api.api.MattermostFilesApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getFile**](MattermostFilesApi.md#getfile) | **GET** /files/{file_id} | Get a file
[**getFileInfo**](MattermostFilesApi.md#getfileinfo) | **GET** /files/{file_id}/info | Get metadata for a file
[**getFileLink**](MattermostFilesApi.md#getfilelink) | **GET** /files/{file_id}/link | Get a public file link
[**getFilePreview**](MattermostFilesApi.md#getfilepreview) | **GET** /files/{file_id}/preview | Get a file's preview
[**getFilePublic**](MattermostFilesApi.md#getfilepublic) | **GET** /files/{file_id}/public | Get a public file
[**getFileThumbnail**](MattermostFilesApi.md#getfilethumbnail) | **GET** /files/{file_id}/thumbnail | Get a file's thumbnail
[**searchFiles**](MattermostFilesApi.md#searchfiles) | **POST** /teams/{team_id}/files/search | Search files in a team
[**uploadFile**](MattermostFilesApi.md#uploadfile) | **POST** /files | Upload a file


# **getFile**
> getFile(fileId)

Get a file

Gets a file that has been uploaded previously. ##### Permissions Must have `read_channel` permission or be uploader of the file. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostFilesApi();
final fileId = fileId_example; // String | The ID of the file to get

try {
    api_instance.getFile(fileId);
} catch (e) {
    print('Exception when calling MattermostFilesApi->getFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **String**| The ID of the file to get | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFileInfo**
> MattermostFileInfo getFileInfo(fileId)

Get metadata for a file

Gets a file's info. ##### Permissions Must have `read_channel` permission or be uploader of the file. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostFilesApi();
final fileId = fileId_example; // String | The ID of the file info to get

try {
    final result = api_instance.getFileInfo(fileId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostFilesApi->getFileInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **String**| The ID of the file info to get | 

### Return type

[**MattermostFileInfo**](MattermostFileInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFileLink**
> MattermostGetFileLink200Response getFileLink(fileId)

Get a public file link

Gets a public link for a file that can be accessed without logging into Mattermost. ##### Permissions Must have `read_channel` permission or be uploader of the file. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostFilesApi();
final fileId = fileId_example; // String | The ID of the file to get a link for

try {
    final result = api_instance.getFileLink(fileId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostFilesApi->getFileLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **String**| The ID of the file to get a link for | 

### Return type

[**MattermostGetFileLink200Response**](MattermostGetFileLink200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFilePreview**
> getFilePreview(fileId)

Get a file's preview

Gets a file's preview. ##### Permissions Must have `read_channel` permission or be uploader of the file. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostFilesApi();
final fileId = fileId_example; // String | The ID of the file to get

try {
    api_instance.getFilePreview(fileId);
} catch (e) {
    print('Exception when calling MattermostFilesApi->getFilePreview: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **String**| The ID of the file to get | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFilePublic**
> getFilePublic(fileId, h)

Get a public file

##### Permissions No permissions required. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostFilesApi();
final fileId = fileId_example; // String | The ID of the file to get
final h = h_example; // String | File hash

try {
    api_instance.getFilePublic(fileId, h);
} catch (e) {
    print('Exception when calling MattermostFilesApi->getFilePublic: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **String**| The ID of the file to get | 
 **h** | **String**| File hash | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFileThumbnail**
> getFileThumbnail(fileId)

Get a file's thumbnail

Gets a file's thumbnail. ##### Permissions Must have `read_channel` permission or be uploader of the file. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostFilesApi();
final fileId = fileId_example; // String | The ID of the file to get

try {
    api_instance.getFileThumbnail(fileId);
} catch (e) {
    print('Exception when calling MattermostFilesApi->getFileThumbnail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **String**| The ID of the file to get | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchFiles**
> MattermostFileInfoList searchFiles(teamId, terms, isOrSearch, timeZoneOffset, includeDeletedChannels, page, perPage)

Search files in a team

Search for files in a team based on file name, extention and file content (if file content extraction is enabled and supported for the files). __Minimum server version__: 5.34 ##### Permissions Must be authenticated and have the `view_team` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostFilesApi();
final teamId = teamId_example; // String | Team GUID
final terms = terms_example; // String | The search terms as inputed by the user. To search for files from a user include `from:someusername`, using a user's username. To search in a specific channel include `in:somechannel`, using the channel name (not the display name). To search for specific extensions included `ext:extension`.
final isOrSearch = true; // bool | Set to true if an Or search should be performed vs an And search.
final timeZoneOffset = 56; // int | Offset from UTC of user timezone for date searches.
final includeDeletedChannels = true; // bool | Set to true if deleted channels should be included in the search. (archived channels)
final page = 56; // int | The page to select. (Only works with Elasticsearch)
final perPage = 56; // int | The number of posts per page. (Only works with Elasticsearch)

try {
    final result = api_instance.searchFiles(teamId, terms, isOrSearch, timeZoneOffset, includeDeletedChannels, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostFilesApi->searchFiles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **terms** | **String**| The search terms as inputed by the user. To search for files from a user include `from:someusername`, using a user's username. To search in a specific channel include `in:somechannel`, using the channel name (not the display name). To search for specific extensions included `ext:extension`. | 
 **isOrSearch** | **bool**| Set to true if an Or search should be performed vs an And search. | 
 **timeZoneOffset** | **int**| Offset from UTC of user timezone for date searches. | [optional] [default to 0]
 **includeDeletedChannels** | **bool**| Set to true if deleted channels should be included in the search. (archived channels) | [optional] 
 **page** | **int**| The page to select. (Only works with Elasticsearch) | [optional] [default to 0]
 **perPage** | **int**| The number of posts per page. (Only works with Elasticsearch) | [optional] [default to 60]

### Return type

[**MattermostFileInfoList**](MattermostFileInfoList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadFile**
> MattermostUploadFile201Response uploadFile(channelId, filename, files, channelId2, clientIds)

Upload a file

Uploads a file that can later be attached to a post.  This request can either be a multipart/form-data request with a channel_id, files and optional client_ids defined in the FormData, or it can be a request with the channel_id and filename defined as query parameters with the contents of a single file in the body of the request.  Only multipart/form-data requests are supported by server versions up to and including 4.7. Server versions 4.8 and higher support both types of requests.  ##### Permissions Must have `upload_file` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostFilesApi();
final channelId = channelId_example; // String | The ID of the channel that this file will be uploaded to
final filename = filename_example; // String | The name of the file to be uploaded
final files = BINARY_DATA_HERE; // MultipartFile | A file to be uploaded
final channelId2 = channelId_example; // String | The ID of the channel that this file will be uploaded to
final clientIds = clientIds_example; // String | A unique identifier for the file that will be returned in the response

try {
    final result = api_instance.uploadFile(channelId, filename, files, channelId2, clientIds);
    print(result);
} catch (e) {
    print('Exception when calling MattermostFilesApi->uploadFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **String**| The ID of the channel that this file will be uploaded to | [optional] 
 **filename** | **String**| The name of the file to be uploaded | [optional] 
 **files** | **MultipartFile**| A file to be uploaded | [optional] 
 **channelId2** | **String**| The ID of the channel that this file will be uploaded to | [optional] 
 **clientIds** | **String**| A unique identifier for the file that will be returned in the response | [optional] 

### Return type

[**MattermostUploadFile201Response**](MattermostUploadFile201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

