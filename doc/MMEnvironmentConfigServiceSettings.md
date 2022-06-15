# mattermost_api.model.MMEnvironmentConfigServiceSettings

## Load the package and get an instance of this class.
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
late MattermostApiClient client;

// example client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


MMEnvironmentConfigServiceSettings example = await client.environmentConfigServiceSettings.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**siteURL** | **bool** |  | [optional] 
**listenAddress** | **bool** |  | [optional] 
**connectionSecurity** | **bool** |  | [optional] 
**tLSCertFile** | **bool** |  | [optional] 
**tLSKeyFile** | **bool** |  | [optional] 
**useLetsEncrypt** | **bool** |  | [optional] 
**letsEncryptCertificateCacheFile** | **bool** |  | [optional] 
**forward80To443** | **bool** |  | [optional] 
**readTimeout** | **bool** |  | [optional] 
**writeTimeout** | **bool** |  | [optional] 
**maximumLoginAttempts** | **bool** |  | [optional] 
**segmentDeveloperKey** | **bool** |  | [optional] 
**googleDeveloperKey** | **bool** |  | [optional] 
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
**allowCorsFrom** | **bool** |  | [optional] 
**sessionLengthWebInDays** | **bool** |  | [optional] 
**sessionLengthMobileInDays** | **bool** |  | [optional] 
**sessionLengthSSOInDays** | **bool** |  | [optional] 
**sessionCacheInMinutes** | **bool** |  | [optional] 
**websocketSecurePort** | **bool** |  | [optional] 
**websocketPort** | **bool** |  | [optional] 
**webserverMode** | **bool** |  | [optional] 
**enableCustomEmoji** | **bool** |  | [optional] 
**restrictCustomEmojiCreation** | **bool** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


