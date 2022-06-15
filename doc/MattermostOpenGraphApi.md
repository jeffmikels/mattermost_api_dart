# mattermost_api.api.MattermostOpenGraphApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**openGraph**](MattermostOpenGraphApi.md#opengraph) | **POST** /opengraph | Get open graph metadata for url


# **openGraph**
> MattermostOpenGraph openGraph(mattermostOpenGraphRequest)

Get open graph metadata for url

Get Open Graph Metadata for a specif URL. Use the Open Graph protocol to get some generic metadata about a URL. Used for creating link previews.  __Minimum server version__: 3.10  ##### Permissions No permission required but must be logged in. 

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

// Then, access MattermostOpenGraphApi api instance
// final MattermostOpenGraphApi api_instance = client.openGraph

final mattermostOpenGraphRequest = MattermostOpenGraphRequest(); // MattermostOpenGraphRequest | 

try {
    final result = await client.openGraph.openGraph(mattermostOpenGraphRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostOpenGraphApi->openGraph: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostOpenGraphRequest** | [**MattermostOpenGraphRequest**](MattermostOpenGraphRequest.md)|  | 

### Return type

[**MattermostOpenGraph**](MattermostOpenGraph.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

