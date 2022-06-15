# mattermost_api.model.MmUserThread

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


MmUserThread example = await client.userThread.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the post that is this thread's root | [optional] 
**replyCount** | **int** | number of replies in this thread | [optional] 
**lastReplyAt** | **int** | timestamp of the last post to this thread | [optional] 
**lastViewedAt** | **int** | timestamp of the last time the user viewed this thread | [optional] 
**participants** | [**List<MmPost>**](MmPost.md) | list of users participating in this thread. only includes IDs unless 'extended' was set to 'true' | [optional] [default to const []]
**post** | [**MmPost**](MmPost.md) |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


