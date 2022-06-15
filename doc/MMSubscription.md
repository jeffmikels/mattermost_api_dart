# mattermost_api.model.MmSubscription

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


MmSubscription example = await client.subscription.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**customerId** | **String** |  | [optional] 
**productId** | **String** |  | [optional] 
**addOns** | **List<String>** |  | [optional] [default to const []]
**startAt** | **int** |  | [optional] 
**endAt** | **int** |  | [optional] 
**createAt** | **int** |  | [optional] 
**seats** | **int** |  | [optional] 
**dns** | **String** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


