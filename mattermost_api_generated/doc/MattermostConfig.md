# mattermost_api.model.MattermostConfig

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


MattermostConfig = await client.config.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceSettings** | [**MattermostConfigServiceSettings**](MattermostConfigServiceSettings.md) |  | [optional] 
**teamSettings** | [**MattermostConfigTeamSettings**](MattermostConfigTeamSettings.md) |  | [optional] 
**sqlSettings** | [**MattermostConfigSqlSettings**](MattermostConfigSqlSettings.md) |  | [optional] 
**logSettings** | [**MattermostConfigLogSettings**](MattermostConfigLogSettings.md) |  | [optional] 
**passwordSettings** | [**MattermostConfigPasswordSettings**](MattermostConfigPasswordSettings.md) |  | [optional] 
**fileSettings** | [**MattermostConfigFileSettings**](MattermostConfigFileSettings.md) |  | [optional] 
**emailSettings** | [**MattermostConfigEmailSettings**](MattermostConfigEmailSettings.md) |  | [optional] 
**rateLimitSettings** | [**MattermostConfigRateLimitSettings**](MattermostConfigRateLimitSettings.md) |  | [optional] 
**privacySettings** | [**MattermostConfigPrivacySettings**](MattermostConfigPrivacySettings.md) |  | [optional] 
**supportSettings** | [**MattermostConfigSupportSettings**](MattermostConfigSupportSettings.md) |  | [optional] 
**gitLabSettings** | [**MattermostConfigGitLabSettings**](MattermostConfigGitLabSettings.md) |  | [optional] 
**googleSettings** | [**MattermostConfigGitLabSettings**](MattermostConfigGitLabSettings.md) |  | [optional] 
**office365Settings** | [**MattermostConfigGitLabSettings**](MattermostConfigGitLabSettings.md) |  | [optional] 
**ldapSettings** | [**MattermostConfigLdapSettings**](MattermostConfigLdapSettings.md) |  | [optional] 
**complianceSettings** | [**MattermostConfigComplianceSettings**](MattermostConfigComplianceSettings.md) |  | [optional] 
**localizationSettings** | [**MattermostConfigLocalizationSettings**](MattermostConfigLocalizationSettings.md) |  | [optional] 
**samlSettings** | [**MattermostConfigSamlSettings**](MattermostConfigSamlSettings.md) |  | [optional] 
**nativeAppSettings** | [**MattermostConfigNativeAppSettings**](MattermostConfigNativeAppSettings.md) |  | [optional] 
**clusterSettings** | [**MattermostConfigClusterSettings**](MattermostConfigClusterSettings.md) |  | [optional] 
**metricsSettings** | [**MattermostConfigMetricsSettings**](MattermostConfigMetricsSettings.md) |  | [optional] 
**analyticsSettings** | [**MattermostConfigAnalyticsSettings**](MattermostConfigAnalyticsSettings.md) |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


