# mattermost_api.api.MattermostBrandApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteBrandImage**](MattermostBrandApi.md#deletebrandimage) | **DELETE** /brand/image | Delete current brand image
[**getBrandImage**](MattermostBrandApi.md#getbrandimage) | **GET** /brand/image | Get brand image
[**uploadBrandImage**](MattermostBrandApi.md#uploadbrandimage) | **POST** /brand/image | Upload brand image


# **deleteBrandImage**
> MattermostStatusOK deleteBrandImage()

Delete current brand image

Deletes the previously uploaded brand image. Returns 404 if no brand image has been uploaded. ##### Permissions Must have `manage_system` permission. __Minimum server version: 5.6__ 

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

// Then, access MattermostBrandApi api instance
// final MattermostBrandApi api_instance = client.brand


try {
    final result = await client.brand.deleteBrandImage();
    print(result);
} catch (e) {
    print('Exception when calling MattermostBrandApi->deleteBrandImage: $e\n');
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

# **getBrandImage**
> String getBrandImage()

Get brand image

Get the previously uploaded brand image. Returns 404 if no brand image has been uploaded. ##### Permissions No permission required. 

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

// Then, access MattermostBrandApi api instance
// final MattermostBrandApi api_instance = client.brand


try {
    final result = await client.brand.getBrandImage();
    print(result);
} catch (e) {
    print('Exception when calling MattermostBrandApi->getBrandImage: $e\n');
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

# **uploadBrandImage**
> MattermostStatusOK uploadBrandImage(image)

Upload brand image

Uploads a brand image. ##### Permissions Must have `manage_system` permission. 

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

// Then, access MattermostBrandApi api instance
// final MattermostBrandApi api_instance = client.brand

final image = BINARY_DATA_HERE; // MultipartFile | The image to be uploaded

try {
    final result = await client.brand.uploadBrandImage(image);
    print(result);
} catch (e) {
    print('Exception when calling MattermostBrandApi->uploadBrandImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image** | **MultipartFile**| The image to be uploaded | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

