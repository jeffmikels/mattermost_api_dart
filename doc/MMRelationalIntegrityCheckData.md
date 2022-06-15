# mattermost_api.model.MmRelationalIntegrityCheckData

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


MmRelationalIntegrityCheckData example = await client.relationalIntegrityCheckData.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**parentName** | **String** | the name of the parent relation (table). | [optional] 
**childName** | **String** | the name of the child relation (table). | [optional] 
**parentIdAttr** | **String** | the name of the attribute (column) containing the parent id. | [optional] 
**childIdAttr** | **String** | the name of the attribute (column) containing the child id. | [optional] 
**records** | [**List<MmOrphanedRecord>**](MmOrphanedRecord.md) | the list of orphaned records found. | [optional] [default to const []]

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


