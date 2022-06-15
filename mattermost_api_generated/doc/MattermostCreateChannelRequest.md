# mattermost_api.model.MattermostCreateChannelRequest

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


MattermostCreateChannelRequest = await client.createChannelRequest.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**teamId** | **String** | The team ID of the team to create the channel on | 
**name** | **String** | The unique handle for the channel, will be present in the channel URL | 
**displayName** | **String** | The non-unique UI name for the channel | 
**purpose** | **String** | A short description of the purpose of the channel | [optional] 
**header** | **String** | Markdown-formatted text to display in the header of the channel | [optional] 
**type** | **String** | 'O' for a public channel, 'P' for a private channel | 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


