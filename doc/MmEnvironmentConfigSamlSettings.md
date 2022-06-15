# mattermost_api.model.MmEnvironmentConfigSamlSettings

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


MmEnvironmentConfigSamlSettings example = await client.environmentConfigSamlSettings.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enable** | **bool** |  | [optional] 
**verify** | **bool** |  | [optional] 
**encrypt** | **bool** |  | [optional] 
**idpUrl** | **bool** |  | [optional] 
**idpDescriptorUrl** | **bool** |  | [optional] 
**assertionConsumerServiceURL** | **bool** |  | [optional] 
**idpCertificateFile** | **bool** |  | [optional] 
**publicCertificateFile** | **bool** |  | [optional] 
**privateKeyFile** | **bool** |  | [optional] 
**firstNameAttribute** | **bool** |  | [optional] 
**lastNameAttribute** | **bool** |  | [optional] 
**emailAttribute** | **bool** |  | [optional] 
**usernameAttribute** | **bool** |  | [optional] 
**nicknameAttribute** | **bool** |  | [optional] 
**localeAttribute** | **bool** |  | [optional] 
**positionAttribute** | **bool** |  | [optional] 
**loginButtonText** | **bool** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


