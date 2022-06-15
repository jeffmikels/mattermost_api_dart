# mattermost_api.model.MMTeam

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


MMTeam example = await client.team.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**createAt** | **int** | The time in milliseconds a team was created | [optional] 
**updateAt** | **int** | The time in milliseconds a team was last updated | [optional] 
**deleteAt** | **int** | The time in milliseconds a team was deleted | [optional] 
**displayName** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**type** | **String** |  | [optional] 
**allowedDomains** | **String** |  | [optional] 
**inviteId** | **String** |  | [optional] 
**allowOpenInvite** | **bool** |  | [optional] 
**policyId** | **String** | The data retention policy to which this team has been assigned. If no such policy exists, or the caller does not have the `sysconsole_read_compliance_data_retention` permission, this field will be null. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


