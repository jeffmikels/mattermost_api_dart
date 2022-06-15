# mattermost_api.model.MMUserAccessToken

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


MMUserAccessToken example = await client.userAccessToken.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique identifier for the token | [optional] 
**token** | **String** | The token used for authentication | [optional] 
**userId** | **String** | The user the token authenticates for | [optional] 
**description** | **String** | A description of the token usage | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


