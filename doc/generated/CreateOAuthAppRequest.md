# mattermost_api.model.CreateOAuthAppRequest

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the client application | 
**description** | **String** | A short description of the application | 
**iconUrl** | **String** | A URL to an icon to display with the application | [optional] 
**callbackUrls** | **List<String>** | A list of callback URLs for the appliation | [default to const []]
**homepage** | **String** | A link to the website of the application | 
**isTrusted** | **bool** | Set this to `true` to skip asking users for permission | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


