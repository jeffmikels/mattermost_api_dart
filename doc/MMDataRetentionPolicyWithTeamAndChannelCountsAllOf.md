# mattermost_api.model.MmDataRetentionPolicyWithTeamAndChannelCountsAllOf

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


MmDataRetentionPolicyWithTeamAndChannelCountsAllOf example = await client.dataRetentionPolicyWithTeamAndChannelCountsAllOf.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**teamCount** | **int** | The number of teams to which this policy is applied. | [optional] 
**channelCount** | **int** | The number of channels to which this policy is applied. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


