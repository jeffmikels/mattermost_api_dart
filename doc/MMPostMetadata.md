# mattermost_api.model.MMPostMetadata

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


MMPostMetadata example = await client.postMetadata.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**embeds** | [**List<MMPostMetadataEmbedsInner>**](MMPostMetadataEmbedsInner.md) | Information about content embedded in the post including OpenGraph previews, image link previews, and message attachments. This field will be null if the post does not contain embedded content.  | [optional] [default to const []]
**emojis** | [**List<MMEmoji>**](MMEmoji.md) | The custom emojis that appear in this point or have been used in reactions to this post. This field will be null if the post does not contain custom emojis.  | [optional] [default to const []]
**files** | [**List<MMFileInfo>**](MMFileInfo.md) | The FileInfo objects for any files attached to the post. This field will be null if the post does not have any file attachments.  | [optional] [default to const []]
**images** | [**List<MMPostMetadataImagesInner>**](MMPostMetadataImagesInner.md) | An object mapping the URL of an external image to an object containing the dimensions of that image. This field will be null if the post or its embedded content does not reference any external images.  | [optional] [default to const []]
**reactions** | [**List<MMReaction>**](MMReaction.md) | Any reactions made to this point. This field will be null if no reactions have been made to this post.  | [optional] [default to const []]

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


