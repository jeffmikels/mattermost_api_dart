# mattermost_api.model.MmInviteGuestsToTeamRequest

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


MmInviteGuestsToTeamRequest example = await client.inviteGuestsToTeamRequest.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**emails** | **List<String>** | List of emails | [default to const []]
**channels** | **List<String>** | List of channel ids | [default to const []]
**message** | **String** | Message to include in the invite | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


