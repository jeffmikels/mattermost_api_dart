# mattermost_api.model.User

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**createAt** | **int** | The time in milliseconds a user was created | [optional] 
**updateAt** | **int** | The time in milliseconds a user was last updated | [optional] 
**deleteAt** | **int** | The time in milliseconds a user was deleted | [optional] 
**username** | **String** |  | [optional] 
**firstName** | **String** |  | [optional] 
**lastName** | **String** |  | [optional] 
**nickname** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**emailVerified** | **bool** |  | [optional] 
**authService** | **String** |  | [optional] 
**roles** | **String** |  | [optional] 
**locale** | **String** |  | [optional] 
**notifyProps** | [**UserNotifyProps**](UserNotifyProps.md) |  | [optional] 
**props** | [**Object**](.md) |  | [optional] 
**lastPasswordUpdate** | **int** |  | [optional] 
**lastPictureUpdate** | **int** |  | [optional] 
**failedAttempts** | **int** |  | [optional] 
**mfaActive** | **bool** |  | [optional] 
**timezone** | [**Timezone**](Timezone.md) |  | [optional] 
**termsOfServiceId** | **String** | ID of accepted terms of service, if any. This field is not present if empty. | [optional] 
**termsOfServiceCreateAt** | **int** | The time in milliseconds the user accepted the terms of service | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


