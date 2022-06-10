# mattermost_api.model.UserAutocomplete

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**users** | [**List<User>**](User.md) | A list of users that are the main result of the query | [optional] [default to const []]
**outOfChannel** | [**List<User>**](User.md) | A special case list of users returned when autocompleting in a specific channel. Omitted when empty or not relevant | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


