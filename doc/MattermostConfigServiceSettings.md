# mattermost_api.model.MattermostConfigServiceSettings

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


MattermostConfigServiceSettings = await client.configServiceSettings.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**siteURL** | **String** |  | [optional] 
**listenAddress** | **String** |  | [optional] 
**connectionSecurity** | **String** |  | [optional] 
**tLSCertFile** | **String** |  | [optional] 
**tLSKeyFile** | **String** |  | [optional] 
**useLetsEncrypt** | **bool** |  | [optional] 
**letsEncryptCertificateCacheFile** | **String** |  | [optional] 
**forward80To443** | **bool** |  | [optional] 
**readTimeout** | **int** |  | [optional] 
**writeTimeout** | **int** |  | [optional] 
**maximumLoginAttempts** | **int** |  | [optional] 
**segmentDeveloperKey** | **String** |  | [optional] 
**googleDeveloperKey** | **String** |  | [optional] 
**enableOAuthServiceProvider** | **bool** |  | [optional] 
**enableIncomingWebhooks** | **bool** |  | [optional] 
**enableOutgoingWebhooks** | **bool** |  | [optional] 
**enableCommands** | **bool** |  | [optional] 
**enableOnlyAdminIntegrations** | **bool** |  | [optional] 
**enablePostUsernameOverride** | **bool** |  | [optional] 
**enablePostIconOverride** | **bool** |  | [optional] 
**enableTesting** | **bool** |  | [optional] 
**enableDeveloper** | **bool** |  | [optional] 
**enableSecurityFixAlert** | **bool** |  | [optional] 
**enableInsecureOutgoingConnections** | **bool** |  | [optional] 
**enableMultifactorAuthentication** | **bool** |  | [optional] 
**enforceMultifactorAuthentication** | **bool** |  | [optional] 
**allowCorsFrom** | **String** |  | [optional] 
**sessionLengthWebInDays** | **int** |  | [optional] 
**sessionLengthMobileInDays** | **int** |  | [optional] 
**sessionLengthSSOInDays** | **int** |  | [optional] 
**sessionCacheInMinutes** | **int** |  | [optional] 
**websocketSecurePort** | **int** |  | [optional] 
**websocketPort** | **int** |  | [optional] 
**webserverMode** | **String** |  | [optional] 
**enableCustomEmoji** | **bool** |  | [optional] 
**restrictCustomEmojiCreation** | **String** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


