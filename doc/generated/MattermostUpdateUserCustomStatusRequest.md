# mattermost_api.model.MattermostUpdateUserCustomStatusRequest

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**emoji** | **String** | Any emoji | 
**text** | **String** | Any custom status text | 
**duration** | **String** | Duration of custom status, can be `thirty_minutes`, `one_hour`, `four_hours`, `today`, `this_week` or `date_and_time` | [optional] 
**expiresAt** | **String** | The time at which custom status should be expired. It should be in ISO format. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


