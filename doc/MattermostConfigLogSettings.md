# mattermost_api.model.MattermostConfigLogSettings

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


MattermostConfigLogSettings = await client.configLogSettings.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enableConsole** | **bool** |  | [optional] 
**consoleLevel** | **String** |  | [optional] 
**enableFile** | **bool** |  | [optional] 
**fileLevel** | **String** |  | [optional] 
**fileLocation** | **String** |  | [optional] 
**enableWebhookDebugging** | **bool** |  | [optional] 
**enableDiagnostics** | **bool** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


