# mattermost_api.model.MMConfig

## Load the package and get an instance of this class.
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//

// example client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


MMConfig example = await client.config.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceSettings** | [**MMConfigServiceSettings**](MMConfigServiceSettings.md) |  | [optional] 
**teamSettings** | [**MMConfigTeamSettings**](MMConfigTeamSettings.md) |  | [optional] 
**sqlSettings** | [**MMConfigSqlSettings**](MMConfigSqlSettings.md) |  | [optional] 
**logSettings** | [**MMConfigLogSettings**](MMConfigLogSettings.md) |  | [optional] 
**passwordSettings** | [**MMConfigPasswordSettings**](MMConfigPasswordSettings.md) |  | [optional] 
**fileSettings** | [**MMConfigFileSettings**](MMConfigFileSettings.md) |  | [optional] 
**emailSettings** | [**MMConfigEmailSettings**](MMConfigEmailSettings.md) |  | [optional] 
**rateLimitSettings** | [**MMConfigRateLimitSettings**](MMConfigRateLimitSettings.md) |  | [optional] 
**privacySettings** | [**MMConfigPrivacySettings**](MMConfigPrivacySettings.md) |  | [optional] 
**supportSettings** | [**MMConfigSupportSettings**](MMConfigSupportSettings.md) |  | [optional] 
**gitLabSettings** | [**MMConfigGitLabSettings**](MMConfigGitLabSettings.md) |  | [optional] 
**googleSettings** | [**MMConfigGitLabSettings**](MMConfigGitLabSettings.md) |  | [optional] 
**office365Settings** | [**MMConfigGitLabSettings**](MMConfigGitLabSettings.md) |  | [optional] 
**ldapSettings** | [**MMConfigLdapSettings**](MMConfigLdapSettings.md) |  | [optional] 
**complianceSettings** | [**MMConfigComplianceSettings**](MMConfigComplianceSettings.md) |  | [optional] 
**localizationSettings** | [**MMConfigLocalizationSettings**](MMConfigLocalizationSettings.md) |  | [optional] 
**samlSettings** | [**MMConfigSamlSettings**](MMConfigSamlSettings.md) |  | [optional] 
**nativeAppSettings** | [**MMConfigNativeAppSettings**](MMConfigNativeAppSettings.md) |  | [optional] 
**clusterSettings** | [**MMConfigClusterSettings**](MMConfigClusterSettings.md) |  | [optional] 
**metricsSettings** | [**MMConfigMetricsSettings**](MMConfigMetricsSettings.md) |  | [optional] 
**analyticsSettings** | [**MMConfigAnalyticsSettings**](MMConfigAnalyticsSettings.md) |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


