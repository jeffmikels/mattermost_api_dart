# mattermost_api.model.MMFileInfoList

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


MMFileInfoList example = await client.fileInfoList.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order** | **List<String>** |  | [optional] [default to const []]
**fileInfos** | [**Map<String, MMFileInfo>**](MMFileInfo.md) |  | [optional] [default to const {}]
**nextFileId** | **String** | The ID of next file info. Not omitted when empty or not relevant. | [optional] 
**prevFileId** | **String** | The ID of previous file info. Not omitted when empty or not relevant. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


