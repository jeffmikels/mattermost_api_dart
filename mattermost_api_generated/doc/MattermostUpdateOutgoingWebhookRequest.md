# mattermost_api.model.MattermostUpdateOutgoingWebhookRequest

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


MattermostUpdateOutgoingWebhookRequest = await client.updateOutgoingWebhookRequest.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hookId** | **String** | Outgoing webhook GUID | [optional] 
**channelId** | **String** | The ID of a public channel or private group that receives the webhook payloads. | 
**displayName** | **String** | The display name for this incoming webhook | 
**description** | **String** | The description for this incoming webhook | 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


