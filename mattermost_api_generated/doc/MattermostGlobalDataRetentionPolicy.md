# mattermost_api.model.MattermostGlobalDataRetentionPolicy

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageDeletionEnabled** | **bool** | Indicates whether data retention policy deletion of messages is enabled globally. | [optional] 
**fileDeletionEnabled** | **bool** | Indicates whether data retention policy deletion of file attachments is enabled globally. | [optional] 
**messageRetentionCutoff** | **int** | The current server timestamp before which messages should be deleted. | [optional] 
**fileRetentionCutoff** | **int** | The current server timestamp before which files should be deleted. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


