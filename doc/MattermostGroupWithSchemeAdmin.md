# mattermost_api.model.MattermostGroupWithSchemeAdmin

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


MattermostGroupWithSchemeAdmin example = await client.groupWithSchemeAdmin.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**group** | [**MattermostGroup**](MattermostGroup.md) |  | [optional] 
**schemeAdmin** | **bool** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


