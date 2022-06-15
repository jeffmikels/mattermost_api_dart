# mattermost_api.model.MMProductLimits

## Load the package and get an instance of this class.
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
late MattermostApiClient client;

// example client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


MMProductLimits example = await client.productLimits.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**boards** | [**MMBoardsLimits**](MMBoardsLimits.md) |  | [optional] 
**files** | [**MMFilesLimits**](MMFilesLimits.md) |  | [optional] 
**integrations** | [**MMIntegrationsLimits**](MMIntegrationsLimits.md) |  | [optional] 
**messages** | [**MMMessagesLimits**](MMMessagesLimits.md) |  | [optional] 
**teams** | [**MMTeamsLimits**](MMTeamsLimits.md) |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


