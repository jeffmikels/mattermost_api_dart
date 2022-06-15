# mattermost_api.model.MattermostCommandResponse

## Load the package and get an instance of this class.
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
late MattermostApiClient client;

// example client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


MattermostCommandResponse = await client.commandResponse.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**responseType** | **String** | The response type either in_channel or ephemeral | [optional] 
**text** | **String** |  | [optional] 
**username** | **String** |  | [optional] 
**iconURL** | **String** |  | [optional] 
**gotoLocation** | **String** |  | [optional] 
**attachments** | [**List<MattermostSlackAttachment>**](MattermostSlackAttachment.md) |  | [optional] [default to const []]

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


