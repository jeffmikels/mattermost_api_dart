# mattermost_api.model.MMEnvironmentConfig

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


MMEnvironmentConfig example = await client.environmentConfig.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceSettings** | [**MMEnvironmentConfigServiceSettings**](MMEnvironmentConfigServiceSettings.md) |  | [optional] 
**teamSettings** | [**MMEnvironmentConfigTeamSettings**](MMEnvironmentConfigTeamSettings.md) |  | [optional] 
**sqlSettings** | [**MMEnvironmentConfigSqlSettings**](MMEnvironmentConfigSqlSettings.md) |  | [optional] 
**logSettings** | [**MMEnvironmentConfigLogSettings**](MMEnvironmentConfigLogSettings.md) |  | [optional] 
**passwordSettings** | [**MMEnvironmentConfigPasswordSettings**](MMEnvironmentConfigPasswordSettings.md) |  | [optional] 
**fileSettings** | [**MMEnvironmentConfigFileSettings**](MMEnvironmentConfigFileSettings.md) |  | [optional] 
**emailSettings** | [**MMEnvironmentConfigEmailSettings**](MMEnvironmentConfigEmailSettings.md) |  | [optional] 
**rateLimitSettings** | [**MMEnvironmentConfigRateLimitSettings**](MMEnvironmentConfigRateLimitSettings.md) |  | [optional] 
**privacySettings** | [**MMConfigPrivacySettings**](MMConfigPrivacySettings.md) |  | [optional] 
**supportSettings** | [**MMEnvironmentConfigSupportSettings**](MMEnvironmentConfigSupportSettings.md) |  | [optional] 
**gitLabSettings** | [**MMEnvironmentConfigGitLabSettings**](MMEnvironmentConfigGitLabSettings.md) |  | [optional] 
**googleSettings** | [**MMEnvironmentConfigGitLabSettings**](MMEnvironmentConfigGitLabSettings.md) |  | [optional] 
**office365Settings** | [**MMEnvironmentConfigGitLabSettings**](MMEnvironmentConfigGitLabSettings.md) |  | [optional] 
**ldapSettings** | [**MMEnvironmentConfigLdapSettings**](MMEnvironmentConfigLdapSettings.md) |  | [optional] 
**complianceSettings** | [**MMEnvironmentConfigComplianceSettings**](MMEnvironmentConfigComplianceSettings.md) |  | [optional] 
**localizationSettings** | [**MMEnvironmentConfigLocalizationSettings**](MMEnvironmentConfigLocalizationSettings.md) |  | [optional] 
**samlSettings** | [**MMEnvironmentConfigSamlSettings**](MMEnvironmentConfigSamlSettings.md) |  | [optional] 
**nativeAppSettings** | [**MMEnvironmentConfigNativeAppSettings**](MMEnvironmentConfigNativeAppSettings.md) |  | [optional] 
**clusterSettings** | [**MMEnvironmentConfigClusterSettings**](MMEnvironmentConfigClusterSettings.md) |  | [optional] 
**metricsSettings** | [**MMEnvironmentConfigMetricsSettings**](MMEnvironmentConfigMetricsSettings.md) |  | [optional] 
**analyticsSettings** | [**MMEnvironmentConfigAnalyticsSettings**](MMEnvironmentConfigAnalyticsSettings.md) |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


