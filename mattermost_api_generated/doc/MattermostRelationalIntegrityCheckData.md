# mattermost_api.model.MattermostRelationalIntegrityCheckData

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**parentName** | **String** | the name of the parent relation (table). | [optional] 
**childName** | **String** | the name of the child relation (table). | [optional] 
**parentIdAttr** | **String** | the name of the attribute (column) containing the parent id. | [optional] 
**childIdAttr** | **String** | the name of the attribute (column) containing the child id. | [optional] 
**records** | [**List<MattermostOrphanedRecord>**](MattermostOrphanedRecord.md) | the list of orphaned records found. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


