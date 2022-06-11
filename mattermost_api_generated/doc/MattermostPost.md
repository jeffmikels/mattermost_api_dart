# mattermost_api.model.MattermostPost

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**createAt** | **int** | The time in milliseconds a post was created | [optional] 
**updateAt** | **int** | The time in milliseconds a post was last updated | [optional] 
**deleteAt** | **int** | The time in milliseconds a post was deleted | [optional] 
**editAt** | **int** |  | [optional] 
**userId** | **String** |  | [optional] 
**channelId** | **String** |  | [optional] 
**rootId** | **String** |  | [optional] 
**originalId** | **String** |  | [optional] 
**message** | **String** |  | [optional] 
**type** | **String** |  | [optional] 
**props** | [**Map**](.md) |  | [optional] 
**hashtag** | **String** |  | [optional] 
**fileIds** | **List<String>** |  | [optional] [default to const []]
**pendingPostId** | **String** |  | [optional] 
**metadata** | [**MattermostPostMetadata**](MattermostPostMetadata.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


