# mattermost_api.model.ResetSamlAuthDataToEmailRequest

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**includeDeleted** | **bool** | Whether to include deleted users. | [optional] [default to false]
**dryRun** | **bool** | If set to true, the number of users who would be affected is returned. | [optional] [default to false]
**userIds** | **List<String>** | If set to a non-empty array, then users whose IDs are not in the array will be excluded. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


