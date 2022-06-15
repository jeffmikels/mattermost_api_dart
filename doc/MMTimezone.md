# mattermost_api.model.MMTimezone

## Load the package and get an instance of this class.
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
late MattermostApiClient client;

// example client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


MMTimezone example = await client.timezone.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**useAutomaticTimezone** | **bool** | Set to \"true\" to use the browser/system timezone, \"false\" to set manually. Defaults to \"true\". | [optional] 
**manualTimezone** | **String** | Value when setting manually the timezone, i.e. \"Europe/Berlin\". | [optional] 
**automaticTimezone** | **String** | This value is set automatically when the \"useAutomaticTimezone\" is set to \"true\". | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


