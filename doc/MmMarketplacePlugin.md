# mattermost_api.model.MmMarketplacePlugin

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


MmMarketplacePlugin example = await client.marketplacePlugin.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**homepageUrl** | **String** | URL that leads to the homepage of the plugin. | [optional] 
**iconData** | **String** | Base64 encoding of a plugin icon SVG. | [optional] 
**downloadUrl** | **String** | URL to download the plugin. | [optional] 
**releaseNotesUrl** | **String** | URL that leads to the release notes of the plugin. | [optional] 
**labels** | **List<String>** | A list of the plugin labels. | [optional] [default to const []]
**signature** | **String** | Base64 encoded signature of the plugin. | [optional] 
**manifest** | [**MmPluginManifest**](MmPluginManifest.md) |  | [optional] 
**installedVersion** | **String** | Version number of the already installed plugin, if any. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


