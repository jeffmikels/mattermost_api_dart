# mattermost_api.model.MattermostOpenGraph

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


MattermostOpenGraph example = await client.openGraph.FUNCTION_THAT_RETURNS_THIS_CLASS();

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
**images** | [**List<MattermostOpenGraphImagesInner>**](MattermostOpenGraphImagesInner.md) |  | [optional] [default to const []]
**videos** | [**List<MattermostOpenGraphVideosInner>**](MattermostOpenGraphVideosInner.md) |  | [optional] [default to const []]
**audios** | [**List<MattermostOpenGraphAudiosInner>**](MattermostOpenGraphAudiosInner.md) |  | [optional] [default to const []]
**article** | [**MattermostOpenGraphArticle**](MattermostOpenGraphArticle.md) |  | [optional] 
**book** | [**MattermostOpenGraphBook**](MattermostOpenGraphBook.md) |  | [optional] 
**profile** | [**MattermostOpenGraphArticleAuthorsInner**](MattermostOpenGraphArticleAuthorsInner.md) |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


