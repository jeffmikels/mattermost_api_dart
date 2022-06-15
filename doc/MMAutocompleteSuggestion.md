# mattermost_api.model.MmAutocompleteSuggestion

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


MmAutocompleteSuggestion example = await client.autocompleteSuggestion.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**complete** | **String** | Completed suggestion | [optional] 
**suggestion** | **String** | Predicted text user might want to input | [optional] 
**hint** | **String** | Hint about suggested input | [optional] 
**description** | **String** | Description of the suggested command | [optional] 
**iconData** | **String** | Base64 encoded svg image | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


