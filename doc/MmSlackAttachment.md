# mattermost_api.model.MmSlackAttachment

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


MmSlackAttachment example = await client.slackAttachment.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**fallback** | **String** |  | [optional] 
**color** | **String** |  | [optional] 
**pretext** | **String** |  | [optional] 
**authorName** | **String** |  | [optional] 
**authorLink** | **String** |  | [optional] 
**authorIcon** | **String** |  | [optional] 
**title** | **String** |  | [optional] 
**titleLink** | **String** |  | [optional] 
**text** | **String** |  | [optional] 
**fields** | [**List<MmSlackAttachmentField>**](MmSlackAttachmentField.md) |  | [optional] [default to const []]
**imageURL** | **String** |  | [optional] 
**thumbURL** | **String** |  | [optional] 
**footer** | **String** |  | [optional] 
**footerIcon** | **String** |  | [optional] 
**timestamp** | **String** | The timestamp of the slack attachment, either type of string or integer | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


