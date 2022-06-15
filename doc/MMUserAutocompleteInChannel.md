# mattermost_api.model.MMUserAutocompleteInChannel

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


MMUserAutocompleteInChannel example = await client.userAutocompleteInChannel.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inChannel** | [**List<MMUser>**](MMUser.md) | A list of user objects in the channel | [optional] [default to const []]
**outOfChannel** | [**List<MMUser>**](MMUser.md) | A list of user objects not in the channel | [optional] [default to const []]

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


