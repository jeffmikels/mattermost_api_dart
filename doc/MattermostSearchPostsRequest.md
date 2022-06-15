# mattermost_api.model.MattermostSearchPostsRequest

## Load the package and get an instance of this class.
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
late MattermostApiClient client;

// example client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


MattermostSearchPostsRequest = await client.searchPostsRequest.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**terms** | **String** | The search terms as inputed by the user. To search for posts from a user include `from:someusername`, using a user's username. To search in a specific channel include `in:somechannel`, using the channel name (not the display name). | 
**isOrSearch** | **bool** | Set to true if an Or search should be performed vs an And search. | 
**timeZoneOffset** | **int** | Offset from UTC of user timezone for date searches. | [optional] [default to 0]
**includeDeletedChannels** | **bool** | Set to true if deleted channels should be included in the search. (archived channels) | [optional] 
**page** | **int** | The page to select. (Only works with Elasticsearch) | [optional] [default to 0]
**perPage** | **int** | The number of posts per page. (Only works with Elasticsearch) | [optional] [default to 60]

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


