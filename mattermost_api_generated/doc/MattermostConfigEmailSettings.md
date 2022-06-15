# mattermost_api.model.MattermostConfigEmailSettings

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


MattermostConfigEmailSettings = await client.configEmailSettings.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enableSignUpWithEmail** | **bool** |  | [optional] 
**enableSignInWithEmail** | **bool** |  | [optional] 
**enableSignInWithUsername** | **bool** |  | [optional] 
**sendEmailNotifications** | **bool** |  | [optional] 
**requireEmailVerification** | **bool** |  | [optional] 
**feedbackName** | **String** |  | [optional] 
**feedbackEmail** | **String** |  | [optional] 
**feedbackOrganization** | **String** |  | [optional] 
**sMTPUsername** | **String** |  | [optional] 
**sMTPPassword** | **String** |  | [optional] 
**sMTPServer** | **String** |  | [optional] 
**sMTPPort** | **String** |  | [optional] 
**connectionSecurity** | **String** |  | [optional] 
**inviteSalt** | **String** |  | [optional] 
**passwordResetSalt** | **String** |  | [optional] 
**sendPushNotifications** | **bool** |  | [optional] 
**pushNotificationServer** | **String** |  | [optional] 
**pushNotificationContents** | **String** |  | [optional] 
**enableEmailBatching** | **bool** |  | [optional] 
**emailBatchingBufferSize** | **int** |  | [optional] 
**emailBatchingInterval** | **int** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


