# mattermost_api.model.MarketplacePlugin

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
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
**manifest** | [**PluginManifest**](PluginManifest.md) |  | [optional] 
**installedVersion** | **String** | Version number of the already installed plugin, if any. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


