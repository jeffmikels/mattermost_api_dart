# mattermost_api.model.MMGroupSyncableChannels

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


MMGroupSyncableChannels example = await client.groupSyncableChannels.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**channelId** | **String** |  | [optional] 
**channelDisplayName** | **String** |  | [optional] 
**channelType** | **String** |  | [optional] 
**teamId** | **String** |  | [optional] 
**teamDisplayName** | **String** |  | [optional] 
**teamType** | **String** |  | [optional] 
**groupId** | **String** |  | [optional] 
**autoAdd** | **bool** |  | [optional] 
**createAt** | **int** |  | [optional] 
**deleteAt** | **int** |  | [optional] 
**updateAt** | **int** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


