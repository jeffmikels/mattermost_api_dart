# mattermost_api.model.MMCreatePostRequest

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


MMCreatePostRequest example = await client.createPostRequest.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**channelId** | **String** | The channel ID to post in | 
**message** | **String** | The message contents, can be formatted with Markdown | 
**rootId** | **String** | The post ID to comment on | [optional] 
**fileIds** | **List<String>** | A list of file IDs to associate with the post. Note that posts are limited to 5 files maximum. Please use additional posts for more files. | [optional] [default to const []]
**props** | [**Map**](.md) | A general JSON property bag to attach to the post | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


