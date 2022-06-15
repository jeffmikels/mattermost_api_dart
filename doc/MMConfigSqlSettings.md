# mattermost_api.model.MMConfigSqlSettings

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


MMConfigSqlSettings example = await client.configSqlSettings.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**driverName** | **String** |  | [optional] 
**dataSource** | **String** |  | [optional] 
**dataSourceReplicas** | **List<String>** |  | [optional] [default to const []]
**maxIdleConns** | **int** |  | [optional] 
**maxOpenConns** | **int** |  | [optional] 
**trace** | **bool** |  | [optional] 
**atRestEncryptKey** | **String** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


