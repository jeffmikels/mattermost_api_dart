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

// Then, access MattermostClusterApi api instance
// final MattermostClusterApi api_instance = client.cluster


try {
    final result = await client.cluster.getClusterStatus();
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

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

