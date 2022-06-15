# mattermost_api.model.MmReaction

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


MmReaction example = await client.reaction.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userId** | **String** | The ID of the user that made this reaction | [optional] 
**postId** | **String** | The ID of the post to which this reaction was made | [optional] 
**emojiName** | **String** | The name of the emoji that was used for this reaction | [optional] 
**createAt** | **int** | The time in milliseconds this reaction was made | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


