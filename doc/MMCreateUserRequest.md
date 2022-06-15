# mattermost_api.model.MMCreateUserRequest

## Load the package and get an instance of this class.
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
late MattermostApiClient client;

// example client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


MMCreateUserRequest example = await client.createUserRequest.FUNCTION_THAT_RETURNS_THIS_CLASS();

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
**notifyProps** | [**MMUserNotifyProps**](MMUserNotifyProps.md) |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


