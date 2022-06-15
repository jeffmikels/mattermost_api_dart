# mattermost_api.model.MmUploadSession

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


MmUploadSession example = await client.uploadSession.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier for the upload. | [optional] 
**type** | **String** | The type of the upload. | [optional] 
**createAt** | **int** | The time the upload was created in milliseconds. | [optional] 
**userId** | **String** | The ID of the user performing the upload. | [optional] 
**channelId** | **String** | The ID of the channel to upload to. | [optional] 
**filename** | **String** | The name of the file to upload. | [optional] 
**fileSize** | **int** | The size of the file to upload in bytes. | [optional] 
**fileOffset** | **int** | The amount of data uploaded in bytes. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


