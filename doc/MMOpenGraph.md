# mattermost_api.model.MMOpenGraph

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


MMOpenGraph example = await client.openGraph.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | [optional] 
**url** | **String** |  | [optional] 
**title** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**determiner** | **String** |  | [optional] 
**siteName** | **String** |  | [optional] 
**locale** | **String** |  | [optional] 
**localesAlternate** | **List<String>** |  | [optional] [default to const []]
**images** | [**List<MMOpenGraphImagesInner>**](MMOpenGraphImagesInner.md) |  | [optional] [default to const []]
**videos** | [**List<MMOpenGraphVideosInner>**](MMOpenGraphVideosInner.md) |  | [optional] [default to const []]
**audios** | [**List<MMOpenGraphAudiosInner>**](MMOpenGraphAudiosInner.md) |  | [optional] [default to const []]
**article** | [**MMOpenGraphArticle**](MMOpenGraphArticle.md) |  | [optional] 
**book** | [**MMOpenGraphBook**](MMOpenGraphBook.md) |  | [optional] 
**profile** | [**MMOpenGraphArticleAuthorsInner**](MMOpenGraphArticleAuthorsInner.md) |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


