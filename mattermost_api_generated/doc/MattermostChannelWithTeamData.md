# mattermost_api.model.MattermostChannelWithTeamData

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**createAt** | **int** | The time in milliseconds a channel was created | [optional] 
**updateAt** | **int** | The time in milliseconds a channel was last updated | [optional] 
**deleteAt** | **int** | The time in milliseconds a channel was deleted | [optional] 
**teamId** | **String** |  | [optional] 
**type** | **String** |  | [optional] 
**displayName** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**header** | **String** |  | [optional] 
**purpose** | **String** |  | [optional] 
**lastPostAt** | **int** | The time in milliseconds of the last post of a channel | [optional] 
**totalMsgCount** | **int** |  | [optional] 
**extraUpdateAt** | **int** | Deprecated in Mattermost 5.0 release | [optional] 
**creatorId** | **String** |  | [optional] 
**teamDisplayName** | **String** | The display name of the team to which this channel belongs. | [optional] 
**teamName** | **String** | The name of the team to which this channel belongs. | [optional] 
**teamUpdateAt** | **int** | The time at which the team to which this channel belongs was last updated. | [optional] 
**policyId** | **String** | The data retention policy to which this team has been assigned. If no such policy exists, or the caller does not have the `sysconsole_read_compliance_data_retention` permission, this field will be null. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


