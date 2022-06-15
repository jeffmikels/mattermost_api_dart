# mattermost_api.model.MMJob

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


MMJob example = await client.job.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique id of the job | [optional] 
**type** | **String** | The type of job | [optional] 
**createAt** | **int** | The time at which the job was created | [optional] 
**startAt** | **int** | The time at which the job was started | [optional] 
**lastActivityAt** | **int** | The last time at which the job had activity | [optional] 
**status** | **String** | The status of the job | [optional] 
**progress** | **int** | The progress (as a percentage) of the job | [optional] 
**data** | [**Map**](.md) | A freeform data field containing additional information about the job | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


