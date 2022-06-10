# mattermost_api.model.OAuthApp

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The client id of the application | [optional] 
**clientSecret** | **String** | The client secret of the application | [optional] 
**name** | **String** | The name of the client application | [optional] 
**description** | **String** | A short description of the application | [optional] 
**iconUrl** | **String** | A URL to an icon to display with the application | [optional] 
**callbackUrls** | **List<String>** | A list of callback URLs for the appliation | [optional] [default to const []]
**homepage** | **String** | A link to the website of the application | [optional] 
**isTrusted** | **bool** | Set this to `true` to skip asking users for permission | [optional] 
**createAt** | **int** | The time of registration for the application | [optional] 
**updateAt** | **int** | The last time of update for the application | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


