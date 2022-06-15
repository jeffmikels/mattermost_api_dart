# mattermost_api.model.MattermostSubmitInteractiveDialogRequest

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


MattermostSubmitInteractiveDialogRequest = await client.submitInteractiveDialogRequest.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** | The URL to send the submitted dialog payload to | 
**channelId** | **String** | Channel ID the user submitted the dialog from | 
**teamId** | **String** | Team ID the user submitted the dialog from | 
**submission** | [**Map**](.md) | String map where keys are element names and values are the element input values | 
**callbackId** | **String** | Callback ID sent when the dialog was opened | [optional] 
**state** | **String** | State sent when the dialog was opened | [optional] 
**cancelled** | **bool** | Set to true if the dialog was cancelled | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


