# mattermost_api.model.MMDataRetentionPolicyWithTeamAndChannelCounts

## Load the package and get an instance of this class.
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
late MattermostApiClient client;

// example client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


MMDataRetentionPolicyWithTeamAndChannelCounts example = await client.dataRetentionPolicyWithTeamAndChannelCounts.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**displayName** | **String** | The display name for this retention policy. | [optional] 
**postDuration** | **int** | The number of days a message will be retained before being deleted by this policy. If this value is less than 0, the policy has infinite retention (i.e. messages are never deleted).  | [optional] 
**id** | **String** | The ID of this retention policy. | [optional] 
**teamCount** | **int** | The number of teams to which this policy is applied. | [optional] 
**channelCount** | **int** | The number of channels to which this policy is applied. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)

