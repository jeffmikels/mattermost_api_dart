# mattermost_api.api.MattermostUsageApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPostsUsage**](MattermostUsageApi.md#getpostsusage) | **GET** /usage/posts | Get current usage of posts


# **getPostsUsage**
> MattermostPostsUsage getPostsUsage()

Get current usage of posts

Retrieve rounded off total no. of posts for this instance. Example: returns 4000 instead of 4321 ##### Permissions Must be authenticated. __Minimum server version__: 7.0 

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

// Then, access MattermostUsageApi api instance
// final MattermostUsageApi api_instance = client.usage


try {
    final result = await client.usage.getPostsUsage();
    print(result);
} catch (e) {
    print('Exception when calling MattermostUsageApi->getPostsUsage: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostPostsUsage**](MattermostPostsUsage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
