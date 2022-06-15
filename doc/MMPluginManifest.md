# mattermost_api.model.MMPluginManifest

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


MMPluginManifest example = await client.pluginManifest.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Globally unique identifier that represents the plugin. | [optional] 
**name** | **String** | Name of the plugin. | [optional] 
**description** | **String** | Description of what the plugin is and does. | [optional] 
**version** | **String** | Version number of the plugin. | [optional] 
**minServerVersion** | **String** | The minimum Mattermost server version required for the plugin.  Available as server version 5.6.  | [optional] 
**backend** | [**MMPluginManifestBackend**](MMPluginManifestBackend.md) |  | [optional] 
**server** | [**MMPluginManifestServer**](MMPluginManifestServer.md) |  | [optional] 
**webapp** | [**MMPluginManifestWebapp**](MMPluginManifestWebapp.md) |  | [optional] 
**settingsSchema** | [**Map**](.md) | Settings schema used to define the System Console UI for the plugin. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


