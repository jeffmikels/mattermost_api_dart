# mattermost_api.model.MattermostEnvironmentConfigFileSettings

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


MattermostEnvironmentConfigFileSettings example = await client.environmentConfigFileSettings.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**maxFileSize** | **bool** |  | [optional] 
**driverName** | **bool** |  | [optional] 
**directory** | **bool** |  | [optional] 
**enablePublicLink** | **bool** |  | [optional] 
**publicLinkSalt** | **bool** |  | [optional] 
**thumbnailWidth** | **bool** |  | [optional] 
**thumbnailHeight** | **bool** |  | [optional] 
**previewWidth** | **bool** |  | [optional] 
**previewHeight** | **bool** |  | [optional] 
**profileWidth** | **bool** |  | [optional] 
**profileHeight** | **bool** |  | [optional] 
**initialFont** | **bool** |  | [optional] 
**amazonS3AccessKeyId** | **bool** |  | [optional] 
**amazonS3SecretAccessKey** | **bool** |  | [optional] 
**amazonS3Bucket** | **bool** |  | [optional] 
**amazonS3Region** | **bool** |  | [optional] 
**amazonS3Endpoint** | **bool** |  | [optional] 
**amazonS3SSL** | **bool** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


