# mattermost_api.model.CreateChannelRequest

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**teamId** | **String** | The team ID of the team to create the channel on | 
**name** | **String** | The unique handle for the channel, will be present in the channel URL | 
**displayName** | **String** | The non-unique UI name for the channel | 
**purpose** | **String** | A short description of the purpose of the channel | [optional] 
**header** | **String** | Markdown-formatted text to display in the header of the channel | [optional] 
**type** | **String** | 'O' for a public channel, 'P' for a private channel | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


