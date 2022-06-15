# mattermost_api.model.MmOAuthApp

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


MmOAuthApp example = await client.oAuthApp.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The client id of the application | [optional] 
**clientSecret** | **String** | The client secret of the application | [optional] 
**name** | **String** | The name of the client application | [optional] 
**description** | **String** | A short description of the application | [optional] 
**iconUrl** | **String** | A URL to an icon to display with the application | [optional] 
**callbackUrls** | **List<String>** | A list of callback URLs for the appliation | [optional] [default to const []]
**homepage** | **String** | A link to the website of the application | [optional] 
**isTrusted** | **bool** | Set this to `true` to skip asking users for permission | [optional] 
**createAt** | **int** | The time of registration for the application | [optional] 
**updateAt** | **int** | The last time of update for the application | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


