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
> List<MmClusterInfo> getClusterStatus()

Get cluster status

Get a set of information for each node in the cluster, useful for checking the status and health of each node. ##### Permissions Must have `manage_system` permission. 

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
  final List&lt;MmClusterInfo&gt;? result = await client.cluster.getClusterStatus(); // await the Future<List&lt;MmClusterInfo&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostClusterApi->getClusterStatus: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<MmClusterInfo>**](MmClusterInfo.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

