# mattermost_api.api.MattermostClusterApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getClusterStatus**](MattermostClusterApi.md#getclusterstatus) | **GET** /cluster/status | Get cluster status


# **getClusterStatus**
> List<MattermostClusterInfo> getClusterStatus()

Get cluster status

Get a set of information for each node in the cluster, useful for checking the status and health of each node. ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostClusterApi();

try {
    final result = api_instance.getClusterStatus();
    print(result);
} catch (e) {
    print('Exception when calling MattermostClusterApi->getClusterStatus: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<MattermostClusterInfo>**](MattermostClusterInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

