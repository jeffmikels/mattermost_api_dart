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
> MmOpenGraph openGraph(mmOpenGraphRequest)

Get open graph metadata for url

Get Open Graph Metadata for a specif URL. Use the Open Graph protocol to get some generic metadata about a URL. Used for creating link previews.  __Minimum server version__: 3.10  ##### Permissions No permission required but must be logged in. 

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


final MmOpenGraphRequest mmOpenGraphRequest = MmOpenGraphRequest(); // MmOpenGraphRequest | 

try {
  final MmOpenGraph? result = await client.openGraph.openGraph(mmOpenGraphRequest); // await the Future<MmOpenGraph?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostOpenGraphApi->openGraph: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmOpenGraphRequest** | [**MmOpenGraphRequest**](MmOpenGraphRequest.md)|  | 

### Return type

[**MmOpenGraph**](MmOpenGraph.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

