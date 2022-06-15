# mattermost_api.model.MattermostEnvironmentConfig

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


MattermostEnvironmentConfig = await client.environmentConfig.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceSettings** | [**MattermostEnvironmentConfigServiceSettings**](MattermostEnvironmentConfigServiceSettings.md) |  | [optional] 
**teamSettings** | [**MattermostEnvironmentConfigTeamSettings**](MattermostEnvironmentConfigTeamSettings.md) |  | [optional] 
**sqlSettings** | [**MattermostEnvironmentConfigSqlSettings**](MattermostEnvironmentConfigSqlSettings.md) |  | [optional] 
**logSettings** | [**MattermostEnvironmentConfigLogSettings**](MattermostEnvironmentConfigLogSettings.md) |  | [optional] 
**passwordSettings** | [**MattermostEnvironmentConfigPasswordSettings**](MattermostEnvironmentConfigPasswordSettings.md) |  | [optional] 
**fileSettings** | [**MattermostEnvironmentConfigFileSettings**](MattermostEnvironmentConfigFileSettings.md) |  | [optional] 
**emailSettings** | [**MattermostEnvironmentConfigEmailSettings**](MattermostEnvironmentConfigEmailSettings.md) |  | [optional] 
**rateLimitSettings** | [**MattermostEnvironmentConfigRateLimitSettings**](MattermostEnvironmentConfigRateLimitSettings.md) |  | [optional] 
**privacySettings** | [**MattermostConfigPrivacySettings**](MattermostConfigPrivacySettings.md) |  | [optional] 
**supportSettings** | [**MattermostEnvironmentConfigSupportSettings**](MattermostEnvironmentConfigSupportSettings.md) |  | [optional] 
**gitLabSettings** | [**MattermostEnvironmentConfigGitLabSettings**](MattermostEnvironmentConfigGitLabSettings.md) |  | [optional] 
**googleSettings** | [**MattermostEnvironmentConfigGitLabSettings**](MattermostEnvironmentConfigGitLabSettings.md) |  | [optional] 
**office365Settings** | [**MattermostEnvironmentConfigGitLabSettings**](MattermostEnvironmentConfigGitLabSettings.md) |  | [optional] 
**ldapSettings** | [**MattermostEnvironmentConfigLdapSettings**](MattermostEnvironmentConfigLdapSettings.md) |  | [optional] 
**complianceSettings** | [**MattermostEnvironmentConfigComplianceSettings**](MattermostEnvironmentConfigComplianceSettings.md) |  | [optional] 
**localizationSettings** | [**MattermostEnvironmentConfigLocalizationSettings**](MattermostEnvironmentConfigLocalizationSettings.md) |  | [optional] 
**samlSettings** | [**MattermostEnvironmentConfigSamlSettings**](MattermostEnvironmentConfigSamlSettings.md) |  | [optional] 
**nativeAppSettings** | [**MattermostEnvironmentConfigNativeAppSettings**](MattermostEnvironmentConfigNativeAppSettings.md) |  | [optional] 
**clusterSettings** | [**MattermostEnvironmentConfigClusterSettings**](MattermostEnvironmentConfigClusterSettings.md) |  | [optional] 
**metricsSettings** | [**MattermostEnvironmentConfigMetricsSettings**](MattermostEnvironmentConfigMetricsSettings.md) |  | [optional] 
**analyticsSettings** | [**MattermostEnvironmentConfigAnalyticsSettings**](MattermostEnvironmentConfigAnalyticsSettings.md) |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


