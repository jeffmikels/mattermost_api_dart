# mattermost_api.model.MmChannelMember

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


MmChannelMember example = await client.channelMember.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**channelId** | **String** |  | [optional] 
**userId** | **String** |  | [optional] 
**roles** | **String** |  | [optional] 
**lastViewedAt** | **int** | The time in milliseconds the channel was last viewed by the user | [optional] 
**msgCount** | **int** |  | [optional] 
**mentionCount** | **int** |  | [optional] 
**notifyProps** | [**MmChannelNotifyProps**](MmChannelNotifyProps.md) |  | [optional] 
**lastUpdateAt** | **int** | The time in milliseconds the channel member was last updated | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


