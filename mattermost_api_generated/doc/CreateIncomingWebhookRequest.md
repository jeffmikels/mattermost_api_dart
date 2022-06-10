# mattermost_api.model.CreateIncomingWebhookRequest

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
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

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


