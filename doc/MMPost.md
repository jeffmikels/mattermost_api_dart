# mattermost_api.model.MmPost

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


MmPost example = await client.post.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**createAt** | **int** | The time in milliseconds a post was created | [optional] 
**updateAt** | **int** | The time in milliseconds a post was last updated | [optional] 
**deleteAt** | **int** | The time in milliseconds a post was deleted | [optional] 
**editAt** | **int** |  | [optional] 
**userId** | **String** |  | [optional] 
**channelId** | **String** |  | [optional] 
**rootId** | **String** |  | [optional] 
**originalId** | **String** |  | [optional] 
**message** | **String** |  | [optional] 
**type** | **String** |  | [optional] 
**props** | [**Map**](.md) |  | [optional] 
**hashtag** | **String** |  | [optional] 
**fileIds** | **List<String>** |  | [optional] [default to const []]
**pendingPostId** | **String** |  | [optional] 
**metadata** | [**MmPostMetadata**](MmPostMetadata.md) |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


