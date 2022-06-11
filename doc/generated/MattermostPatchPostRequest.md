# mattermost_api.model.MattermostPatchPostRequest

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**isPinned** | **bool** | Set to `true` to pin the post to the channel it is in | [optional] 
**message** | **String** | The message text of the post | [optional] 
**fileIds** | **List<String>** | The list of files attached to this post | [optional] [default to const []]
**hasReactions** | **bool** | Set to `true` if the post has reactions to it | [optional] 
**props** | **String** | A general JSON property bag to attach to the post | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


