# mattermost_api.model.MattermostConfigTeamSettings

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


MattermostConfigTeamSettings example = await client.configTeamSettings.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**siteName** | **String** |  | [optional] 
**maxUsersPerTeam** | **int** |  | [optional] 
**enableTeamCreation** | **bool** |  | [optional] 
**enableUserCreation** | **bool** |  | [optional] 
**enableOpenServer** | **bool** |  | [optional] 
**restrictCreationToDomains** | **String** |  | [optional] 
**enableCustomBrand** | **bool** |  | [optional] 
**customBrandText** | **String** |  | [optional] 
**customDescriptionText** | **String** |  | [optional] 
**restrictDirectMessage** | **String** |  | [optional] 
**restrictTeamInvite** | **String** |  | [optional] 
**restrictPublicChannelManagement** | **String** |  | [optional] 
**restrictPrivateChannelManagement** | **String** |  | [optional] 
**restrictPublicChannelCreation** | **String** |  | [optional] 
**restrictPrivateChannelCreation** | **String** |  | [optional] 
**restrictPublicChannelDeletion** | **String** |  | [optional] 
**restrictPrivateChannelDeletion** | **String** |  | [optional] 
**userStatusAwayTimeout** | **int** |  | [optional] 
**maxChannelsPerTeam** | **int** |  | [optional] 
**maxNotificationsPerChannel** | **int** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


