# mattermost_api.model.MMConfigSamlSettings

## Load the package and get an instance of this class.
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
late MattermostApiClient client;

// example client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


MMConfigSamlSettings example = await client.configSamlSettings.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enable** | **bool** |  | [optional] 
**verify** | **bool** |  | [optional] 
**encrypt** | **bool** |  | [optional] 
**idpUrl** | **String** |  | [optional] 
**idpDescriptorUrl** | **String** |  | [optional] 
**assertionConsumerServiceURL** | **String** |  | [optional] 
**idpCertificateFile** | **String** |  | [optional] 
**publicCertificateFile** | **String** |  | [optional] 
**privateKeyFile** | **String** |  | [optional] 
**firstNameAttribute** | **String** |  | [optional] 
**lastNameAttribute** | **String** |  | [optional] 
**emailAttribute** | **String** |  | [optional] 
**usernameAttribute** | **String** |  | [optional] 
**nicknameAttribute** | **String** |  | [optional] 
**localeAttribute** | **String** |  | [optional] 
**positionAttribute** | **String** |  | [optional] 
**loginButtonText** | **String** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


