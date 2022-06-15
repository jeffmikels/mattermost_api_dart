# mattermost_api.model.MMOpenGraphArticle

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


MMOpenGraphArticle example = await client.openGraphArticle.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**publishedTime** | **String** |  | [optional] 
**modifiedTime** | **String** |  | [optional] 
**expirationTime** | **String** |  | [optional] 
**section** | **String** |  | [optional] 
**tags** | **List<String>** |  | [optional] [default to const []]
**authors** | [**List<MMOpenGraphArticleAuthorsInner>**](MMOpenGraphArticleAuthorsInner.md) |  | [optional] [default to const []]

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


