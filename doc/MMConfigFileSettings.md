# mattermost_api.model.MmConfigFileSettings

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


MmConfigFileSettings example = await client.configFileSettings.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**maxFileSize** | **int** |  | [optional] 
**driverName** | **String** |  | [optional] 
**directory** | **String** |  | [optional] 
**enablePublicLink** | **bool** |  | [optional] 
**publicLinkSalt** | **String** |  | [optional] 
**thumbnailWidth** | **int** |  | [optional] 
**thumbnailHeight** | **int** |  | [optional] 
**previewWidth** | **int** |  | [optional] 
**previewHeight** | **int** |  | [optional] 
**profileWidth** | **int** |  | [optional] 
**profileHeight** | **int** |  | [optional] 
**initialFont** | **String** |  | [optional] 
**amazonS3AccessKeyId** | **String** |  | [optional] 
**amazonS3SecretAccessKey** | **String** |  | [optional] 
**amazonS3Bucket** | **String** |  | [optional] 
**amazonS3Region** | **String** |  | [optional] 
**amazonS3Endpoint** | **String** |  | [optional] 
**amazonS3SSL** | **bool** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


