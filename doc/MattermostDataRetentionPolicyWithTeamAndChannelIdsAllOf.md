# mattermost_api.model.MattermostDataRetentionPolicyWithTeamAndChannelIdsAllOf

## Load the package and get an instance of this class.
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
late MattermostApiClient client;

// example client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


MattermostDataRetentionPolicyWithTeamAndChannelIdsAllOf example = await client.dataRetentionPolicyWithTeamAndChannelIdsAllOf.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**teamIds** | **List<String>** | The IDs of the teams to which this policy should be applied. | [optional] [default to const []]
**channelIds** | **List<String>** | The IDs of the channels to which this policy should be applied. | [optional] [default to const []]

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


