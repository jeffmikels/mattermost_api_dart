# mattermost_api.model.MMIncomingWebhook

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


MMIncomingWebhook example = await client.incomingWebhook.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier for this incoming webhook | [optional] 
**createAt** | **int** | The time in milliseconds a incoming webhook was created | [optional] 
**updateAt** | **int** | The time in milliseconds a incoming webhook was last updated | [optional] 
**deleteAt** | **int** | The time in milliseconds a incoming webhook was deleted | [optional] 
**channelId** | **String** | The ID of a public channel or private group that receives the webhook payloads | [optional] 
**description** | **String** | The description for this incoming webhook | [optional] 
**displayName** | **String** | The display name for this incoming webhook | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


