# mattermost_api.model.MMChannel

## Load the package and get an instance of this class.
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//

// example client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


MMChannel example = await client.channel.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**createAt** | **int** | The time in milliseconds a channel was created | [optional] 
**updateAt** | **int** | The time in milliseconds a channel was last updated | [optional] 
**deleteAt** | **int** | The time in milliseconds a channel was deleted | [optional] 
**teamId** | **String** |  | [optional] 
**type** | **String** |  | [optional] 
**displayName** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**header** | **String** |  | [optional] 
**purpose** | **String** |  | [optional] 
**lastPostAt** | **int** | The time in milliseconds of the last post of a channel | [optional] 
**totalMsgCount** | **int** |  | [optional] 
**extraUpdateAt** | **int** | Deprecated in Mattermost 5.0 release | [optional] 
**creatorId** | **String** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


