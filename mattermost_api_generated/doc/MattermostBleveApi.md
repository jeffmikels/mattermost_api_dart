# mattermost_api.api.MattermostBleveApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**purgeBleveIndexes**](MattermostBleveApi.md#purgebleveindexes) | **POST** /bleve/purge_indexes | Purge all Bleve indexes


# **purgeBleveIndexes**
> MMStatusOK purgeBleveIndexes()

Purge all Bleve indexes

Deletes all Bleve indexes and their contents. After calling this endpoint, it is necessary to schedule a new Bleve indexing job to repopulate the indexes. __Minimum server version__: 5.24 ##### Permissions Must have `sysconsole_write_experimental` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MMStatusOK result = await client.bleve.purgeBleveIndexes(); // returns MMStatusOK instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostBleveApi->purgeBleveIndexes: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

