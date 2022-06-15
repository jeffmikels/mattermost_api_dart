# mattermost_api.model.MMSession

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


MMSession example = await client.session.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createAt** | **int** | The time in milliseconds a session was created | [optional] 
**deviceId** | **String** |  | [optional] 
**expiresAt** | **int** | The time in milliseconds a session will expire | [optional] 
**id** | **String** |  | [optional] 
**isOauth** | **bool** |  | [optional] 
**lastActivityAt** | **int** | The time in milliseconds of the last activity of a session | [optional] 
**props** | [**Map**](.md) |  | [optional] 
**roles** | **String** |  | [optional] 
**teamMembers** | [**List<MMTeamMember>**](MMTeamMember.md) |  | [optional] [default to const []]
**token** | **String** |  | [optional] 
**userId** | **String** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


