# mattermost_api.model.MattermostViewChannelRequest

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**channelId** | **String** | The channel ID that is being viewed. Use a blank string to indicate that all channels have lost focus. | 
**prevChannelId** | **String** | The channel ID of the previous channel, used when switching channels. Providing this ID will cause push notifications to clear on the channel being switched to. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


