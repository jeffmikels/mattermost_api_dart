# mattermost_api.model.ChannelMemberWithTeamData

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**channelId** | **String** |  | [optional] 
**userId** | **String** |  | [optional] 
**roles** | **String** |  | [optional] 
**lastViewedAt** | **int** | The time in milliseconds the channel was last viewed by the user | [optional] 
**msgCount** | **int** |  | [optional] 
**mentionCount** | **int** |  | [optional] 
**notifyProps** | [**ChannelNotifyProps**](ChannelNotifyProps.md) |  | [optional] 
**lastUpdateAt** | **int** | The time in milliseconds the channel member was last updated | [optional] 
**teamDisplayName** | **String** | The display name of the team to which this channel belongs. | [optional] 
**teamName** | **String** | The name of the team to which this channel belongs. | [optional] 
**teamUpdateAt** | **int** | The time at which the team to which this channel belongs was last updated. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


