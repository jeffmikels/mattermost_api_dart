# mattermost_api.model.MMUserAutocomplete

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


MMUserAutocomplete example = await client.userAutocomplete.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**users** | [**List<MMUser>**](MMUser.md) | A list of users that are the main result of the query | [optional] [default to const []]
**outOfChannel** | [**List<MMUser>**](MMUser.md) | A special case list of users returned when autocompleting in a specific channel. Omitted when empty or not relevant | [optional] [default to const []]

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


