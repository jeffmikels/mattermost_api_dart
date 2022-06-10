# mattermost_api.model.DataRetentionPolicyWithTeamAndChannelCounts

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**displayName** | **String** | The display name for this retention policy. | [optional] 
**postDuration** | **int** | The number of days a message will be retained before being deleted by this policy. If this value is less than 0, the policy has infinite retention (i.e. messages are never deleted).  | [optional] 
**id** | **String** | The ID of this retention policy. | [optional] 
**teamCount** | **int** | The number of teams to which this policy is applied. | [optional] 
**channelCount** | **int** | The number of channels to which this policy is applied. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


