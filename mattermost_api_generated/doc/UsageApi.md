# mattermost_api.api.UsageApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPostsUsage**](UsageApi.md#getpostsusage) | **GET** /usage/posts | Get current usage of posts


# **getPostsUsage**
> PostsUsage getPostsUsage()

Get current usage of posts

Retrieve rounded off total no. of posts for this instance. Example: returns 4000 instead of 4321 ##### Permissions Must be authenticated. __Minimum server version__: 7.0 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsageApi();

try {
    final result = api_instance.getPostsUsage();
    print(result);
} catch (e) {
    print('Exception when calling UsageApi->getPostsUsage: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PostsUsage**](PostsUsage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

