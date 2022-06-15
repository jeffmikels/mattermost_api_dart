# mattermost_api.model.MattermostTeamMember

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


MattermostTeamMember example = await client.teamMember.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**teamId** | **String** | The ID of the team this member belongs to. | [optional] 
**userId** | **String** | The ID of the user this member relates to. | [optional] 
**roles** | **String** | The complete list of roles assigned to this team member, as a space-separated list of role names, including any roles granted implicitly through permissions schemes. | [optional] 
**deleteAt** | **int** | The time in milliseconds that this team member was deleted. | [optional] 
**schemeUser** | **bool** | Whether this team member holds the default user role defined by the team's permissions scheme. | [optional] 
**schemeAdmin** | **bool** | Whether this team member holds the default admin role defined by the team's permissions scheme. | [optional] 
**explicitRoles** | **String** | The list of roles explicitly assigned to this team member, as a space separated list of role names. This list does *not* include any roles granted implicitly through permissions schemes. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


