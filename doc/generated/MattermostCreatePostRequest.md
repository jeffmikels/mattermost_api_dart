# mattermost_api.model.MattermostCreatePostRequest

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**channelId** | **String** | The channel ID to post in | 
**message** | **String** | The message contents, can be formatted with Markdown | 
**rootId** | **String** | The post ID to comment on | [optional] 
**fileIds** | **List<String>** | A list of file IDs to associate with the post. Note that posts are limited to 5 files maximum. Please use additional posts for more files. | [optional] [default to const []]
**props** | [**Map**](.md) | A general JSON property bag to attach to the post | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


