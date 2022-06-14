# mattermost_api.api.MattermostElasticsearchApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**purgeElasticsearchIndexes**](MattermostElasticsearchApi.md#purgeelasticsearchindexes) | **POST** /elasticsearch/purge_indexes | Purge all Elasticsearch indexes
[**testElasticsearch**](MattermostElasticsearchApi.md#testelasticsearch) | **POST** /elasticsearch/test | Test Elasticsearch configuration


# **purgeElasticsearchIndexes**
> MattermostStatusOK purgeElasticsearchIndexes()

Purge all Elasticsearch indexes

Deletes all Elasticsearch indexes and their contents. After calling this endpoint, it is necessary to schedule a new Elasticsearch indexing job to repopulate the indexes. __Minimum server version__: 4.1 ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostElasticsearchApi();

try {
    final result = api_instance.purgeElasticsearchIndexes();
    print(result);
} catch (e) {
    print('Exception when calling MattermostElasticsearchApi->purgeElasticsearchIndexes: $e\n');
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

# **testElasticsearch**
> MattermostStatusOK testElasticsearch()

Test Elasticsearch configuration

Test the current Elasticsearch configuration to see if the Elasticsearch server can be contacted successfully. Optionally provide a configuration in the request body to test. If no valid configuration is present in the request body the current server configuration will be tested.  __Minimum server version__: 4.1 ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostElasticsearchApi();

try {
    final result = api_instance.testElasticsearch();
    print(result);
} catch (e) {
    print('Exception when calling MattermostElasticsearchApi->testElasticsearch: $e\n');
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

