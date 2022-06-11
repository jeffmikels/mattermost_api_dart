# mattermost_api.model.MattermostPostListWithSearchMatches

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order** | **List<String>** |  | [optional] [default to const []]
**posts** | [**Map<String, MattermostPost>**](MattermostPost.md) |  | [optional] [default to const {}]
**matches** | [**Map<String, List<String>>**](List.md) | A mapping of post IDs to a list of matched terms within the post. This field will only be populated on servers running version 5.1 or greater with Elasticsearch enabled. | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


