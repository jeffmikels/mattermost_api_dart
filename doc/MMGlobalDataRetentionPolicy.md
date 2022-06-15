# mattermost_api.model.MMGlobalDataRetentionPolicy

## Load the package and get an instance of this class.
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
late MattermostApiClient client;

// example client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


MMGlobalDataRetentionPolicy example = await client.globalDataRetentionPolicy.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageDeletionEnabled** | **bool** | Indicates whether data retention policy deletion of messages is enabled globally. | [optional] 
**fileDeletionEnabled** | **bool** | Indicates whether data retention policy deletion of file attachments is enabled globally. | [optional] 
**messageRetentionCutoff** | **int** | The current server timestamp before which messages should be deleted. | [optional] 
**fileRetentionCutoff** | **int** | The current server timestamp before which files should be deleted. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


