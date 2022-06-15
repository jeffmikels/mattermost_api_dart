# mattermost_api.model.MattermostPostList

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order** | **List<String>** |  | [optional] [default to const []]
**posts** | [**Map<String, MattermostPost>**](MattermostPost.md) |  | [optional] [default to const {}]
**nextPostId** | **String** | The ID of next post. Not omitted when empty or not relevant. | [optional] 
**prevPostId** | **String** | The ID of previous post. Not omitted when empty or not relevant. | [optional] 
**hasNext** | **bool** | Whether there are more items after this page. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


