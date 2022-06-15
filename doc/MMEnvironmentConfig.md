# mattermost_api.model.MmEnvironmentConfig

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


MmEnvironmentConfig example = await client.environmentConfig.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceSettings** | [**MmEnvironmentConfigServiceSettings**](MmEnvironmentConfigServiceSettings.md) |  | [optional] 
**teamSettings** | [**MmEnvironmentConfigTeamSettings**](MmEnvironmentConfigTeamSettings.md) |  | [optional] 
**sqlSettings** | [**MmEnvironmentConfigSqlSettings**](MmEnvironmentConfigSqlSettings.md) |  | [optional] 
**logSettings** | [**MmEnvironmentConfigLogSettings**](MmEnvironmentConfigLogSettings.md) |  | [optional] 
**passwordSettings** | [**MmEnvironmentConfigPasswordSettings**](MmEnvironmentConfigPasswordSettings.md) |  | [optional] 
**fileSettings** | [**MmEnvironmentConfigFileSettings**](MmEnvironmentConfigFileSettings.md) |  | [optional] 
**emailSettings** | [**MmEnvironmentConfigEmailSettings**](MmEnvironmentConfigEmailSettings.md) |  | [optional] 
**rateLimitSettings** | [**MmEnvironmentConfigRateLimitSettings**](MmEnvironmentConfigRateLimitSettings.md) |  | [optional] 
**privacySettings** | [**MmConfigPrivacySettings**](MmConfigPrivacySettings.md) |  | [optional] 
**supportSettings** | [**MmEnvironmentConfigSupportSettings**](MmEnvironmentConfigSupportSettings.md) |  | [optional] 
**gitLabSettings** | [**MmEnvironmentConfigGitLabSettings**](MmEnvironmentConfigGitLabSettings.md) |  | [optional] 
**googleSettings** | [**MmEnvironmentConfigGitLabSettings**](MmEnvironmentConfigGitLabSettings.md) |  | [optional] 
**office365Settings** | [**MmEnvironmentConfigGitLabSettings**](MmEnvironmentConfigGitLabSettings.md) |  | [optional] 
**ldapSettings** | [**MmEnvironmentConfigLdapSettings**](MmEnvironmentConfigLdapSettings.md) |  | [optional] 
**complianceSettings** | [**MmEnvironmentConfigComplianceSettings**](MmEnvironmentConfigComplianceSettings.md) |  | [optional] 
**localizationSettings** | [**MmEnvironmentConfigLocalizationSettings**](MmEnvironmentConfigLocalizationSettings.md) |  | [optional] 
**samlSettings** | [**MmEnvironmentConfigSamlSettings**](MmEnvironmentConfigSamlSettings.md) |  | [optional] 
**nativeAppSettings** | [**MmEnvironmentConfigNativeAppSettings**](MmEnvironmentConfigNativeAppSettings.md) |  | [optional] 
**clusterSettings** | [**MmEnvironmentConfigClusterSettings**](MmEnvironmentConfigClusterSettings.md) |  | [optional] 
**metricsSettings** | [**MmEnvironmentConfigMetricsSettings**](MmEnvironmentConfigMetricsSettings.md) |  | [optional] 
**analyticsSettings** | [**MmEnvironmentConfigAnalyticsSettings**](MmEnvironmentConfigAnalyticsSettings.md) |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


