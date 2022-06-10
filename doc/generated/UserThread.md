# mattermost_api.model.UserThread

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the post that is this thread's root | [optional] 
**replyCount** | **int** | number of replies in this thread | [optional] 
**lastReplyAt** | **int** | timestamp of the last post to this thread | [optional] 
**lastViewedAt** | **int** | timestamp of the last time the user viewed this thread | [optional] 
**participants** | [**List<Post>**](Post.md) | list of users participating in this thread. only includes IDs unless 'extended' was set to 'true' | [optional] [default to const []]
**post** | [**Post**](Post.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


