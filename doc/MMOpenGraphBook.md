# mattermost_api.model.MMOpenGraphBook

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


MMOpenGraphBook example = await client.openGraphBook.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**isbn** | **String** |  | [optional] 
**releaseDate** | **String** |  | [optional] 
**tags** | **List<String>** |  | [optional] [default to const []]
**authors** | [**List<MMOpenGraphArticleAuthorsInner>**](MMOpenGraphArticleAuthorsInner.md) |  | [optional] [default to const []]

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


