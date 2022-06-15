# mattermost_api.model.MattermostSearchChannelsForRetentionPolicyRequest

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**term** | **String** | The string to search in the channel name, display name, and purpose. | [optional] 
**teamIds** | **List<String>** | Filters results to channels belonging to the given team ids  | [optional] [default to const []]
**public** | **bool** | Filters results to only return Public / Open channels, can be used in conjunction with `private` to return both `public` and `private` channels  | [optional] 
**private** | **bool** | Filters results to only return Private channels, can be used in conjunction with `public` to return both `private` and `public` channels  | [optional] 
**deleted** | **bool** | Filters results to only return deleted / archived channels  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


