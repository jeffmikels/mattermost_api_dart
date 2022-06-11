# mattermost_api.model.MattermostClusterInfo

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique ID for the node | [optional] 
**version** | **String** | The server version the node is on | [optional] 
**configHash** | **String** | The hash of the configuartion file the node is using | [optional] 
**internodeUrl** | **String** | The URL used to communicate with those node from other nodes | [optional] 
**hostname** | **String** | The hostname for this node | [optional] 
**lastPing** | **int** | The time of the last ping to this node | [optional] 
**isAlive** | **bool** | Whether or not the node is alive and well | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


