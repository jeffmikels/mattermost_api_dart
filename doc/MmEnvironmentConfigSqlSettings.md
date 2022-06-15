# mattermost_api.model.MmEnvironmentConfigSqlSettings

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


MmEnvironmentConfigSqlSettings example = await client.environmentConfigSqlSettings.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**driverName** | **bool** |  | [optional] 
**dataSource** | **bool** |  | [optional] 
**dataSourceReplicas** | **bool** |  | [optional] 
**maxIdleConns** | **bool** |  | [optional] 
**maxOpenConns** | **bool** |  | [optional] 
**trace** | **bool** |  | [optional] 
**atRestEncryptKey** | **bool** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


