# mattermost_api.model.MmUpdateChannelRequest

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


MmUpdateChannelRequest example = await client.updateChannelRequest.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The channel's id, not updatable | 
**name** | **String** | The unique handle for the channel, will be present in the channel URL | [optional] 
**displayName** | **String** | The non-unique UI name for the channel | [optional] 
**purpose** | **String** | A short description of the purpose of the channel | [optional] 
**header** | **String** | Markdown-formatted text to display in the header of the channel | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


