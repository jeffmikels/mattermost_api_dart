# mattermost_api.model.Job

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique id of the job | [optional] 
**type** | **String** | The type of job | [optional] 
**createAt** | **int** | The time at which the job was created | [optional] 
**startAt** | **int** | The time at which the job was started | [optional] 
**lastActivityAt** | **int** | The last time at which the job had activity | [optional] 
**status** | **String** | The status of the job | [optional] 
**progress** | **int** | The progress (as a percentage) of the job | [optional] 
**data** | [**Object**](.md) | A freeform data field containing additional information about the job | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


