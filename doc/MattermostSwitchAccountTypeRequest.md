# mattermost_api.model.MattermostSwitchAccountTypeRequest

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currentService** | **String** | The service the user currently uses to login | 
**newService** | **String** | The service the user will use to login | 
**email** | **String** | The email of the user | [optional] 
**password** | **String** | The password used with the current service | [optional] 
**mfaCode** | **String** | The MFA code of the current service | [optional] 
**ldapId** | **String** | The LDAP/AD id of the user | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


