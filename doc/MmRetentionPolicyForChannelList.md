# mattermost_api.model.MmRetentionPolicyForChannelList

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


MmRetentionPolicyForChannelList example = await client.retentionPolicyForChannelList.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**policies** | [**List<MmDataRetentionPolicyForChannel>**](MmDataRetentionPolicyForChannel.md) | The list of channel policies. | [optional] [default to const []]
**totalCount** | **int** | The total number of channel policies. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


