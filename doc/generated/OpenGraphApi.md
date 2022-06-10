# mattermost_api.api.OpenGraphApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**openGraph**](OpenGraphApi.md#opengraph) | **POST** /opengraph | Get open graph metadata for url


# **openGraph**
> OpenGraph openGraph(openGraphRequest)

Get open graph metadata for url

Get Open Graph Metadata for a specif URL. Use the Open Graph protocol to get some generic metadata about a URL. Used for creating link previews.  __Minimum server version__: 3.10  ##### Permissions No permission required but must be logged in. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OpenGraphApi();
final openGraphRequest = OpenGraphRequest(); // OpenGraphRequest | 

try {
    final result = api_instance.openGraph(openGraphRequest);
    print(result);
} catch (e) {
    print('Exception when calling OpenGraphApi->openGraph: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **openGraphRequest** | [**OpenGraphRequest**](OpenGraphRequest.md)|  | 

### Return type

[**OpenGraph**](OpenGraph.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

