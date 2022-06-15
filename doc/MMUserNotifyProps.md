# mattermost_api.model.MMUserNotifyProps

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


MMUserNotifyProps example = await client.userNotifyProps.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **bool** | Set to \"true\" to enable email notifications, \"false\" to disable. Defaults to \"true\". | [optional] 
**push** | **String** | Set to \"all\" to receive push notifications for all activity, \"mention\" for mentions and direct messages only, and \"none\" to disable. Defaults to \"mention\". | [optional] 
**desktop** | **String** | Set to \"all\" to receive desktop notifications for all activity, \"mention\" for mentions and direct messages only, and \"none\" to disable. Defaults to \"all\". | [optional] 
**desktopSound** | **bool** | Set to \"true\" to enable sound on desktop notifications, \"false\" to disable. Defaults to \"true\". | [optional] 
**mentionKeys** | **String** | A comma-separated list of words to count as mentions. Defaults to username and @username. | [optional] 
**channel** | **bool** | Set to \"true\" to enable channel-wide notifications (@channel, @all, etc.), \"false\" to disable. Defaults to \"true\". | [optional] 
**firstName** | **bool** | Set to \"true\" to enable mentions for first name. Defaults to \"true\" if a first name is set, \"false\" otherwise. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


