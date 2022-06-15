# mattermost_api.model.MmProductLimits

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


MmProductLimits example = await client.productLimits.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**boards** | [**MmBoardsLimits**](MmBoardsLimits.md) |  | [optional] 
**files** | [**MmFilesLimits**](MmFilesLimits.md) |  | [optional] 
**integrations** | [**MmIntegrationsLimits**](MmIntegrationsLimits.md) |  | [optional] 
**messages** | [**MmMessagesLimits**](MmMessagesLimits.md) |  | [optional] 
**teams** | [**MmTeamsLimits**](MmTeamsLimits.md) |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


