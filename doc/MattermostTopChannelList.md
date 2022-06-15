# mattermost_api.model.MattermostTopChannelList

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


MattermostTopChannelList example = await client.topChannelList.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hasNext** | **bool** | Indicates if there is another page of channels that can be fetched. | [optional] 
**items** | [**List<MattermostTopChannel>**](MattermostTopChannel.md) | List of channels. | [optional] [default to const []]

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


