# mattermost_api.model.MMUploadFile201Response

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


MMUploadFile201Response example = await client.uploadFile201Response.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fileInfos** | [**List<MMFileInfo>**](MMFileInfo.md) | A list of file metadata that has been stored in the database | [optional] [default to const []]
**clientIds** | **List<String>** | A list of the client_ids that were provided in the request | [optional] [default to const []]

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


