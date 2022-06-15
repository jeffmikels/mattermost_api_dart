# mattermost_api.model.MmDataRetentionPolicyWithTeamAndChannelIds

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


MmDataRetentionPolicyWithTeamAndChannelIds example = await client.dataRetentionPolicyWithTeamAndChannelIds.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**displayName** | **String** | The display name for this retention policy. | [optional] 
**postDuration** | **int** | The number of days a message will be retained before being deleted by this policy. If this value is less than 0, the policy has infinite retention (i.e. messages are never deleted).  | [optional] 
**teamIds** | **List<String>** | The IDs of the teams to which this policy should be applied. | [optional] [default to const []]
**channelIds** | **List<String>** | The IDs of the channels to which this policy should be applied. | [optional] [default to const []]

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


