# mattermost_api.model.MMPostList

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


MMPostList example = await client.postList.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order** | **List<String>** |  | [optional] [default to const []]
**posts** | [**Map<String, MMPost>**](MMPost.md) |  | [optional] [default to const {}]
**nextPostId** | **String** | The ID of next post. Not omitted when empty or not relevant. | [optional] 
**prevPostId** | **String** | The ID of previous post. Not omitted when empty or not relevant. | [optional] 
**hasNext** | **bool** | Whether there are more items after this page. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


