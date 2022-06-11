# mattermost_api.model.MattermostSession

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createAt** | **int** | The time in milliseconds a session was created | [optional] 
**deviceId** | **String** |  | [optional] 
**expiresAt** | **int** | The time in milliseconds a session will expire | [optional] 
**id** | **String** |  | [optional] 
**isOauth** | **bool** |  | [optional] 
**lastActivityAt** | **int** | The time in milliseconds of the last activity of a session | [optional] 
**props** | [**Map**](.md) |  | [optional] 
**roles** | **String** |  | [optional] 
**teamMembers** | [**List<MattermostTeamMember>**](MattermostTeamMember.md) |  | [optional] [default to const []]
**token** | **String** |  | [optional] 
**userId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


