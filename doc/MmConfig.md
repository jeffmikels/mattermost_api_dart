# mattermost_api.model.MmConfig

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


MmConfig example = await client.config.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceSettings** | [**MmConfigServiceSettings**](MmConfigServiceSettings.md) |  | [optional] 
**teamSettings** | [**MmConfigTeamSettings**](MmConfigTeamSettings.md) |  | [optional] 
**sqlSettings** | [**MmConfigSqlSettings**](MmConfigSqlSettings.md) |  | [optional] 
**logSettings** | [**MmConfigLogSettings**](MmConfigLogSettings.md) |  | [optional] 
**passwordSettings** | [**MmConfigPasswordSettings**](MmConfigPasswordSettings.md) |  | [optional] 
**fileSettings** | [**MmConfigFileSettings**](MmConfigFileSettings.md) |  | [optional] 
**emailSettings** | [**MmConfigEmailSettings**](MmConfigEmailSettings.md) |  | [optional] 
**rateLimitSettings** | [**MmConfigRateLimitSettings**](MmConfigRateLimitSettings.md) |  | [optional] 
**privacySettings** | [**MmConfigPrivacySettings**](MmConfigPrivacySettings.md) |  | [optional] 
**supportSettings** | [**MmConfigSupportSettings**](MmConfigSupportSettings.md) |  | [optional] 
**gitLabSettings** | [**MmConfigGitLabSettings**](MmConfigGitLabSettings.md) |  | [optional] 
**googleSettings** | [**MmConfigGitLabSettings**](MmConfigGitLabSettings.md) |  | [optional] 
**office365Settings** | [**MmConfigGitLabSettings**](MmConfigGitLabSettings.md) |  | [optional] 
**ldapSettings** | [**MmConfigLdapSettings**](MmConfigLdapSettings.md) |  | [optional] 
**complianceSettings** | [**MmConfigComplianceSettings**](MmConfigComplianceSettings.md) |  | [optional] 
**localizationSettings** | [**MmConfigLocalizationSettings**](MmConfigLocalizationSettings.md) |  | [optional] 
**samlSettings** | [**MmConfigSamlSettings**](MmConfigSamlSettings.md) |  | [optional] 
**nativeAppSettings** | [**MmConfigNativeAppSettings**](MmConfigNativeAppSettings.md) |  | [optional] 
**clusterSettings** | [**MmConfigClusterSettings**](MmConfigClusterSettings.md) |  | [optional] 
**metricsSettings** | [**MmConfigMetricsSettings**](MmConfigMetricsSettings.md) |  | [optional] 
**analyticsSettings** | [**MmConfigAnalyticsSettings**](MmConfigAnalyticsSettings.md) |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


