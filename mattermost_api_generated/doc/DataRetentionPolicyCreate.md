# mattermost_api.model.DataRetentionPolicyCreate

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**displayName** | **String** | The display name for this retention policy. | 
**postDuration** | **int** | The number of days a message will be retained before being deleted by this policy. If this value is less than 0, the policy has infinite retention (i.e. messages are never deleted).  | 
**teamIds** | **List<String>** | The IDs of the teams to which this policy should be applied. | [optional] [default to const []]
**channelIds** | **List<String>** | The IDs of the channels to which this policy should be applied. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


