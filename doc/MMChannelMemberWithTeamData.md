# mattermost_api.model.MMChannelMemberWithTeamData

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


MMChannelMemberWithTeamData example = await client.channelMemberWithTeamData.FUNCTION_THAT_RETURNS_THIS_CLASS();

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
**notifyProps** | [**MMChannelNotifyProps**](MMChannelNotifyProps.md) |  | [optional] 
**lastUpdateAt** | **int** | The time in milliseconds the channel member was last updated | [optional] 
**teamDisplayName** | **String** | The display name of the team to which this channel belongs. | [optional] 
**teamName** | **String** | The name of the team to which this channel belongs. | [optional] 
**teamUpdateAt** | **int** | The time at which the team to which this channel belongs was last updated. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


