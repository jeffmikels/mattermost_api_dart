# mattermost_api.model.MmSwitchAccountTypeRequest

## Load the package and get an instance of this class.
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//

// example client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


MmSwitchAccountTypeRequest example = await client.switchAccountTypeRequest.FUNCTION_THAT_RETURNS_THIS_CLASS();

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


