# mattermost_api.model.MattermostOutgoingWebhook

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
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

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


