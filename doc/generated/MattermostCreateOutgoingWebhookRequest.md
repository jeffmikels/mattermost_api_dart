# mattermost_api.model.MattermostCreateOutgoingWebhookRequest

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**teamId** | **String** | The ID of the team that the webhook watchs | 
**channelId** | **String** | The ID of a public channel that the webhook watchs | [optional] 
**creatorId** | **String** | The ID of the owner of the webhook if different than the requester. Required in [local mode](https://docs.mattermost.com/administration/mmctl-cli-tool.html#local-mode). | [optional] 
**description** | **String** | The description for this outgoing webhook | [optional] 
**displayName** | **String** | The display name for this outgoing webhook | 
**triggerWords** | **List<String>** | List of words for the webhook to trigger on | [default to const []]
**triggerWhen** | **int** | When to trigger the webhook, `0` when a trigger word is present at all and `1` if the message starts with a trigger word | [optional] 
**callbackUrls** | **List<String>** | The URLs to POST the payloads to when the webhook is triggered | [default to const []]
**contentType** | **String** | The format to POST the data in, either `application/json` or `application/x-www-form-urlencoded` | [optional] [default to 'application/x-www-form-urlencoded']

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


