# mattermost_api.model.MMPostMetadataEmbedsInner

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


MMPostMetadataEmbedsInner example = await client.postMetadataEmbedsInner.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of content that is embedded in this point. | [optional] 
**url** | **String** | The URL of the embedded content, if one exists. | [optional] 
**data** | [**Map**](.md) | Any additional information about the embedded content. Only used at this time to store OpenGraph metadata. This field will be null for non-OpenGraph embeds.  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


