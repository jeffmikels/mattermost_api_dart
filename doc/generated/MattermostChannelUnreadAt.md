# mattermost_api.model.MattermostChannelUnreadAt

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**teamId** | **String** | The ID of the team the channel belongs to. | [optional] 
**channelId** | **String** | The ID of the channel the user has access to.. | [optional] 
**msgCount** | **int** | No. of messages the user has already read. | [optional] 
**mentionCount** | **int** | No. of mentions the user has within the unread posts of the channel. | [optional] 
**lastViewedAt** | **int** | time in milliseconds when the user last viewed the channel. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


