# mattermost_api.model.MmCreateIncomingWebhookRequest

## Load the package and get an instance of this class.
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//

// example client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


MmCreateIncomingWebhookRequest example = await client.createIncomingWebhookRequest.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**channelId** | **String** | The ID of a public channel or private group that receives the webhook payloads. | 
**userId** | **String** | The ID of the owner of the webhook if different than the requester. Required for [local mode](https://docs.mattermost.com/administration/mmctl-cli-tool.html#local-mode). | [optional] 
**displayName** | **String** | The display name for this incoming webhook | [optional] 
**description** | **String** | The description for this incoming webhook | [optional] 
**username** | **String** | The username this incoming webhook will post as. | [optional] 
**iconUrl** | **String** | The profile picture this incoming webhook will use when posting. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


