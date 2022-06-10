# mattermost_api.model.SearchPostsRequest

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
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

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


