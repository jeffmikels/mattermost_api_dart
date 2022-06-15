# mattermost_api.model.MattermostCreateUserRequest

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** |  | 
**username** | **String** |  | 
**firstName** | **String** |  | [optional] 
**lastName** | **String** |  | [optional] 
**nickname** | **String** |  | [optional] 
**authData** | **String** | Service-specific authentication data, such as email address. | [optional] 
**authService** | **String** | The authentication service, one of \"email\", \"gitlab\", \"ldap\", \"saml\", \"office365\", \"google\", and \"\". | [optional] 
**password** | **String** | The password used for email authentication. | [optional] 
**locale** | **String** |  | [optional] 
**props** | [**Map**](.md) |  | [optional] 
**notifyProps** | [**MattermostUserNotifyProps**](MattermostUserNotifyProps.md) |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


