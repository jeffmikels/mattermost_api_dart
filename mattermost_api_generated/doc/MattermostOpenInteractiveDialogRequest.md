# mattermost_api.model.MattermostOpenInteractiveDialogRequest

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


MattermostOpenInteractiveDialogRequest = await client.openInteractiveDialogRequest.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**triggerId** | **String** | Trigger ID provided by other action | 
**url** | **String** | The URL to send the submitted dialog payload to | 
**dialog** | [**MattermostOpenInteractiveDialogRequestDialog**](MattermostOpenInteractiveDialogRequestDialog.md) |  | 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


