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
> MmPostsUsage getPostsUsage()

Get current usage of posts

Retrieve rounded off total no. of posts for this instance. Example: returns 4000 instead of 4321 ##### Permissions Must be authenticated. __Minimum server version__: 7.0 

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
  final MmPostsUsage? result = await client.usage.getPostsUsage(); // await the Future<MmPostsUsage?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostUsageApi->getPostsUsage: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MmPostsUsage**](MmPostsUsage.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

