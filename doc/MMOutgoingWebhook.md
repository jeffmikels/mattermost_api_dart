# mattermost_api.model.MMOutgoingWebhook

## Load the package and get an instance of this class.
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
late MattermostApiClient client;

// example client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


MMOutgoingWebhook example = await client.outgoingWebhook.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier for this outgoing webhook | [optional] 
**createAt** | **int** | The time in milliseconds a outgoing webhook was created | [optional] 
**updateAt** | **int** | The time in milliseconds a outgoing webhook was last updated | [optional] 
**deleteAt** | **int** | The time in milliseconds a outgoing webhook was deleted | [optional] 
**creatorId** | **String** | The Id of the user who created the webhook | [optional] 
**teamId** | **String** | The ID of the team that the webhook watchs | [optional] 
**channelId** | **String** | The ID of a public channel that the webhook watchs | [optional] 
**description** | **String** | The description for this outgoing webhook | [optional] 
**displayName** | **String** | The display name for this outgoing webhook | [optional] 
**triggerWords** | **List<String>** | List of words for the webhook to trigger on | [optional] [default to const []]
**triggerWhen** | **int** | When to trigger the webhook, `0` when a trigger word is present at all and `1` if the message starts with a trigger word | [optional] 
**callbackUrls** | **List<String>** | The URLs to POST the payloads to when the webhook is triggered | [optional] [default to const []]
**contentType** | **String** | The format to POST the data in, either `application/json` or `application/x-www-form-urlencoded` | [optional] [default to 'application/x-www-form-urlencoded']

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


