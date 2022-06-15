# mattermost_api.model.MmPushNotification

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


MmPushNotification example = await client.pushNotification.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ackId** | **String** |  | [optional] 
**platform** | **String** |  | [optional] 
**serverId** | **String** |  | [optional] 
**deviceId** | **String** |  | [optional] 
**postId** | **String** |  | [optional] 
**category** | **String** |  | [optional] 
**sound** | **String** |  | [optional] 
**message** | **String** |  | [optional] 
**badge** | **num** |  | [optional] 
**contAva** | **num** |  | [optional] 
**teamId** | **String** |  | [optional] 
**channelId** | **String** |  | [optional] 
**rootId** | **String** |  | [optional] 
**channelName** | **String** |  | [optional] 
**type** | **String** |  | [optional] 
**senderId** | **String** |  | [optional] 
**senderName** | **String** |  | [optional] 
**overrideUsername** | **String** |  | [optional] 
**overrideIconUrl** | **String** |  | [optional] 
**fromWebhook** | **String** |  | [optional] 
**version** | **String** |  | [optional] 
**isIdLoaded** | **bool** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


