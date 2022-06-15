# mattermost_api.model.MmConfigGitLabSettings

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


MmConfigGitLabSettings example = await client.configGitLabSettings.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enable** | **bool** |  | [optional] 
**secret** | **String** |  | [optional] 
**id** | **String** |  | [optional] 
**scope** | **String** |  | [optional] 
**authEndpoint** | **String** |  | [optional] 
**tokenEndpoint** | **String** |  | [optional] 
**userApiEndpoint** | **String** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


