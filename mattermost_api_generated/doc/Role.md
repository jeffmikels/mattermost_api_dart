# mattermost_api.model.Role

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier of the role. | [optional] 
**name** | **String** | The unique name of the role, used when assigning roles to users/groups in contexts. | [optional] 
**displayName** | **String** | The human readable name for the role. | [optional] 
**description** | **String** | A human readable description of the role. | [optional] 
**permissions** | **List<String>** | A list of the unique names of the permissions this role grants. | [optional] [default to const []]
**schemeManaged** | **bool** | indicates if this role is managed by a scheme (true), or is a custom stand-alone role (false). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


