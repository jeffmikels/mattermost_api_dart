# mattermost_api.model.MattermostSharedChannel

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Channel id of the shared channel | [optional] 
**teamId** | **String** |  | [optional] 
**home** | **bool** | Is this the home cluster for the shared channel | [optional] 
**readonly** | **bool** | Is this shared channel shared as read only | [optional] 
**name** | **String** | Channel name as it is shared (may be different than original channel name) | [optional] 
**displayName** | **String** | Channel display name as it appears locally | [optional] 
**purpose** | **String** |  | [optional] 
**header** | **String** |  | [optional] 
**creatorId** | **String** | Id of the user that shared the channel | [optional] 
**createAt** | **int** | Time in milliseconds that the channel was shared | [optional] 
**updateAt** | **int** | Time in milliseconds that the shared channel record was last updated | [optional] 
**remoteId** | **String** | Id of the remote cluster where the shared channel is homed | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


