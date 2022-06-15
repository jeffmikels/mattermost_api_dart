# mattermost_api.model.MMClusterInfo

## Load the package and get an instance of this class.
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//

// example client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


MMClusterInfo example = await client.clusterInfo.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique ID for the node | [optional] 
**version** | **String** | The server version the node is on | [optional] 
**configHash** | **String** | The hash of the configuartion file the node is using | [optional] 
**internodeUrl** | **String** | The URL used to communicate with those node from other nodes | [optional] 
**hostname** | **String** | The hostname for this node | [optional] 
**lastPing** | **int** | The time of the last ping to this node | [optional] 
**isAlive** | **bool** | Whether or not the node is alive and well | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


