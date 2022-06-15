# mattermost_api.model.MattermostSystemStatusResponse

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


MattermostSystemStatusResponse = await client.systemStatusResponse.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**androidLatestVersion** | **String** | Latest Android version supported | [optional] 
**androidMinVersion** | **String** | Minimum Android version supported | [optional] 
**desktopLatestVersion** | **String** | Latest desktop version supported | [optional] 
**desktopMinVersion** | **String** | Minimum desktop version supported | [optional] 
**iosLatestVersion** | **String** | Latest iOS version supported | [optional] 
**iosMinVersion** | **String** | Minimum iOS version supported | [optional] 
**databaseStatus** | **String** | Status of database (\"OK\" or \"UNHEALTHY\"). Included when get_server_status parameter set. | [optional] 
**filestoreStatus** | **String** | Status of filestore (\"OK\" or \"UNHEALTHY\"). Included when get_server_status parameter set. | [optional] 
**status** | **String** | Status of server (\"OK\" or \"UNHEALTHY\"). Included when get_server_status parameter set. | [optional] 
**canReceiveNotifications** | **String** | Whether the device id provided can receive notifications (\"true\", \"false\" or \"unknown\"). Included when device_id parameter set. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


