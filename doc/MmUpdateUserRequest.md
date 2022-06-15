# mattermost_api.model.MmUpdateUserRequest

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


MmUpdateUserRequest example = await client.updateUserRequest.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**email** | **String** |  | 
**username** | **String** |  | 
**firstName** | **String** |  | [optional] 
**lastName** | **String** |  | [optional] 
**nickname** | **String** |  | [optional] 
**locale** | **String** |  | [optional] 
**position** | **String** |  | [optional] 
**timezone** | [**MmTimezone**](MmTimezone.md) |  | [optional] 
**props** | [**Map**](.md) |  | [optional] 
**notifyProps** | [**MmUserNotifyProps**](MmUserNotifyProps.md) |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


