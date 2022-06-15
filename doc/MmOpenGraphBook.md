# mattermost_api.model.MmOpenGraphBook

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


MmOpenGraphBook example = await client.openGraphBook.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**isbn** | **String** |  | [optional] 
**releaseDate** | **String** |  | [optional] 
**tags** | **List<String>** |  | [optional] [default to const []]
**authors** | [**List<MmOpenGraphArticleAuthorsInner>**](MmOpenGraphArticleAuthorsInner.md) |  | [optional] [default to const []]

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


