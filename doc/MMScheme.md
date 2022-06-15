# mattermost_api.model.MMScheme

## Load the package and get an instance of this class.
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//

// example client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


MMScheme example = await client.scheme.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier of the scheme. | [optional] 
**name** | **String** | The human readable name for the scheme. | [optional] 
**description** | **String** | A human readable description of the scheme. | [optional] 
**createAt** | **int** | The time at which the scheme was created. | [optional] 
**updateAt** | **int** | The time at which the scheme was last updated. | [optional] 
**deleteAt** | **int** | The time at which the scheme was deleted. | [optional] 
**scope** | **String** | The scope to which this scheme can be applied, either \"team\" or \"channel\". | [optional] 
**defaultTeamAdminRole** | **String** | The id of the default team admin role for this scheme. | [optional] 
**defaultTeamUserRole** | **String** | The id of the default team user role for this scheme. | [optional] 
**defaultChannelAdminRole** | **String** | The id of the default channel admin role for this scheme. | [optional] 
**defaultChannelUserRole** | **String** | The id of the default channel user role for this scheme. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


