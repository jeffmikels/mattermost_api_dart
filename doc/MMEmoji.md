# mattermost_api.model.MMEmoji

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


MMEmoji example = await client.emoji.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The ID of the emoji | [optional] 
**creatorId** | **String** | The ID of the user that made the emoji | [optional] 
**name** | **String** | The name of the emoji | [optional] 
**createAt** | **int** | The time in milliseconds the emoji was made | [optional] 
**updateAt** | **int** | The time in milliseconds the emoji was last updated | [optional] 
**deleteAt** | **int** | The time in milliseconds the emoji was deleted | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


