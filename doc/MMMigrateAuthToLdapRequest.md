# mattermost_api.model.MMMigrateAuthToLdapRequest

## Load the package and get an instance of this class.
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
late MattermostApiClient client;

// example client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


MMMigrateAuthToLdapRequest example = await client.migrateAuthToLdapRequest.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **String** | The current authentication type for the matched users. | 
**matchField** | **String** | Foreign user field name to match. | 
**force** | **bool** |  | 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


