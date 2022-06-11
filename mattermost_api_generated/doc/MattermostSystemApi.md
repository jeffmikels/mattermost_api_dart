# mattermost_api.api.MattermostSystemApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkIntegrity**](MattermostSystemApi.md#checkintegrity) | **POST** /integrity | Perform a database integrity check
[**clearServerBusy**](MattermostSystemApi.md#clearserverbusy) | **DELETE** /server_busy | Clears the server busy (high load) flag
[**databaseRecycle**](MattermostSystemApi.md#databaserecycle) | **POST** /database/recycle | Recycle database connections
[**generateSupportPacket**](MattermostSystemApi.md#generatesupportpacket) | **GET** /system/support_packet | Download a zip file which contains helpful and useful information for troubleshooting your mattermost instance.
[**getAnalyticsOld**](MattermostSystemApi.md#getanalyticsold) | **GET** /analytics/old | Get analytics
[**getAudits**](MattermostSystemApi.md#getaudits) | **GET** /audits | Get audits
[**getClientConfig**](MattermostSystemApi.md#getclientconfig) | **GET** /config/client | Get client configuration
[**getClientLicense**](MattermostSystemApi.md#getclientlicense) | **GET** /license/client | Get client license
[**getConfig**](MattermostSystemApi.md#getconfig) | **GET** /config | Get configuration
[**getEnvironmentConfig**](MattermostSystemApi.md#getenvironmentconfig) | **GET** /config/environment | Get configuration made through environment variables
[**getImageByUrl**](MattermostSystemApi.md#getimagebyurl) | **GET** /image | Get an image by url
[**getLogs**](MattermostSystemApi.md#getlogs) | **GET** /logs | Get logs
[**getNotices**](MattermostSystemApi.md#getnotices) | **GET** /system/notices/{teamId} | Get notices for logged in user in specified team
[**getPing**](MattermostSystemApi.md#getping) | **GET** /system/ping | Check system health
[**getRedirectLocation**](MattermostSystemApi.md#getredirectlocation) | **GET** /redirect_location | Get redirect location
[**getServerBusyExpires**](MattermostSystemApi.md#getserverbusyexpires) | **GET** /server_busy | Get server busy expiry time.
[**getSupportedTimezone**](MattermostSystemApi.md#getsupportedtimezone) | **GET** /system/timezones | Retrieve a list of supported timezones
[**getWarnMetricsStatus**](MattermostSystemApi.md#getwarnmetricsstatus) | **GET** /warn_metrics/status | Get the warn metrics status (enabled or disabled)
[**invalidateCaches**](MattermostSystemApi.md#invalidatecaches) | **POST** /caches/invalidate | Invalidate all the caches
[**markNoticesViewed**](MattermostSystemApi.md#marknoticesviewed) | **PUT** /system/notices/view | Update notices as 'viewed'
[**patchConfig**](MattermostSystemApi.md#patchconfig) | **PUT** /config/patch | Patch configuration
[**postLog**](MattermostSystemApi.md#postlog) | **POST** /logs | Add log message
[**reloadConfig**](MattermostSystemApi.md#reloadconfig) | **POST** /config/reload | Reload configuration
[**removeLicenseFile**](MattermostSystemApi.md#removelicensefile) | **DELETE** /license | Remove license file
[**requestLicenseRenewalLink**](MattermostSystemApi.md#requestlicenserenewallink) | **GET** /license/renewal | Request the license renewal link
[**requestTrialLicense**](MattermostSystemApi.md#requesttriallicense) | **POST** /trial-license | Request and install a trial license for your server
[**restartServer**](MattermostSystemApi.md#restartserver) | **POST** /restart | Restart the system after an upgrade from Team Edition to Enterprise Edition
[**sendTrialLicenseWarnMetricAck**](MattermostSystemApi.md#sendtriallicensewarnmetricack) | **POST** /warn_metrics/trial-license-ack/{warn_metric_id} | Request trial license and acknowledge a warning of a metric status
[**sendWarnMetricAck**](MattermostSystemApi.md#sendwarnmetricack) | **POST** /warn_metrics/ack/{warn_metric_id} | Acknowledge a warning of a metric status
[**setServerBusy**](MattermostSystemApi.md#setserverbusy) | **POST** /server_busy | Set the server busy (high load) flag
[**testEmail**](MattermostSystemApi.md#testemail) | **POST** /email/test | Send a test email
[**testS3Connection**](MattermostSystemApi.md#tests3connection) | **POST** /file/s3_test | Test AWS S3 connection
[**testSiteURL**](MattermostSystemApi.md#testsiteurl) | **POST** /site_url/test | Checks the validity of a Site URL
[**trialLicensePrevGet**](MattermostSystemApi.md#triallicenseprevget) | **GET** /trial-license/prev | Get last trial license used
[**updateConfig**](MattermostSystemApi.md#updateconfig) | **PUT** /config | Update configuration
[**updateMarketplaceVisitedByAdmin**](MattermostSystemApi.md#updatemarketplacevisitedbyadmin) | **POST** /plugins/marketplace/first_admin_visit | Stores that the Plugin Marketplace has been visited by at least an admin.
[**upgradeToEnterprise**](MattermostSystemApi.md#upgradetoenterprise) | **POST** /upgrade_to_enterprise | Executes an inplace upgrade from Team Edition to Enterprise Edition
[**upgradeToEnterpriseStatus**](MattermostSystemApi.md#upgradetoenterprisestatus) | **GET** /upgrade_to_enterprise/status | Get the current status for the inplace upgrade from Team Edition to Enterprise Edition
[**uploadLicenseFile**](MattermostSystemApi.md#uploadlicensefile) | **POST** /license | Upload license file


# **checkIntegrity**
> List<MattermostIntegrityCheckResult> checkIntegrity()

Perform a database integrity check

Performs a database integrity check.   __Note__: This check may temporarily harm system performance.   __Minimum server version__: 5.28.0   __Local mode only__: This endpoint is only available through [local mode](https://docs.mattermost.com/administration/mmctl-cli-tool.html#local-mode). 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();

try {
    final result = api_instance.checkIntegrity();
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->checkIntegrity: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<MattermostIntegrityCheckResult>**](MattermostIntegrityCheckResult.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clearServerBusy**
> MattermostStatusOK clearServerBusy()

Clears the server busy (high load) flag

Marks the server as not having high load which re-enables non-critical services such as search, statuses and typing notifications.  __Minimum server version__: 5.20  ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();

try {
    final result = api_instance.clearServerBusy();
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->clearServerBusy: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **databaseRecycle**
> MattermostStatusOK databaseRecycle()

Recycle database connections

Recycle database connections by closing and reconnecting all connections to master and read replica databases. ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();

try {
    final result = api_instance.databaseRecycle();
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->databaseRecycle: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateSupportPacket**
> generateSupportPacket()

Download a zip file which contains helpful and useful information for troubleshooting your mattermost instance.

Download a zip file which contains helpful and useful information for troubleshooting your mattermost instance. __Minimum server version: 5.32__ ##### Permissions Must have any of the system console read permissions. ##### License Requires either a E10 or E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();

try {
    api_instance.generateSupportPacket();
} catch (e) {
    print('Exception when calling MattermostSystemApi->generateSupportPacket: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAnalyticsOld**
> getAnalyticsOld(name, teamId)

Get analytics

Get some analytics data about the system. This endpoint uses the old format, the `/analytics` route is reserved for the new format when it gets implemented.  The returned JSON changes based on the `name` query parameter but is always key/value pairs.  __Minimum server version__: 4.0  ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();
final name = name_example; // String | Possible values are \"standard\", \"bot_post_counts_day\", \"post_counts_day\", \"user_counts_with_posts_day\" or \"extra_counts\"
final teamId = teamId_example; // String | The team ID to filter the data by

try {
    api_instance.getAnalyticsOld(name, teamId);
} catch (e) {
    print('Exception when calling MattermostSystemApi->getAnalyticsOld: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Possible values are \"standard\", \"bot_post_counts_day\", \"post_counts_day\", \"user_counts_with_posts_day\" or \"extra_counts\" | [optional] [default to 'standard']
 **teamId** | **String**| The team ID to filter the data by | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAudits**
> List<MattermostAudit> getAudits(page, perPage)

Get audits

Get a page of audits for all users on the system, selected with `page` and `per_page` query parameters. ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of audits per page.

try {
    final result = api_instance.getAudits(page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->getAudits: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of audits per page. | [optional] [default to 60]

### Return type

[**List<MattermostAudit>**](MattermostAudit.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClientConfig**
> getClientConfig(format)

Get client configuration

Get a subset of the server configuration needed by the client. ##### Permissions No permission required. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();
final format = format_example; // String | Must be `old`, other formats not implemented yet

try {
    api_instance.getClientConfig(format);
} catch (e) {
    print('Exception when calling MattermostSystemApi->getClientConfig: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Must be `old`, other formats not implemented yet | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClientLicense**
> getClientLicense(format)

Get client license

Get a subset of the server license needed by the client. ##### Permissions No permission required but having the `manage_system` permission returns more information. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();
final format = format_example; // String | Must be `old`, other formats not implemented yet

try {
    api_instance.getClientLicense(format);
} catch (e) {
    print('Exception when calling MattermostSystemApi->getClientLicense: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Must be `old`, other formats not implemented yet | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConfig**
> MattermostConfig getConfig()

Get configuration

Retrieve the current server configuration ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();

try {
    final result = api_instance.getConfig();
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->getConfig: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostConfig**](MattermostConfig.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEnvironmentConfig**
> MattermostEnvironmentConfig getEnvironmentConfig()

Get configuration made through environment variables

Retrieve a json object mirroring the server configuration where fields are set to true if the corresponding config setting is set through an environment variable. Settings that haven't been set through environment variables will be missing from the object.  __Minimum server version__: 4.10  ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();

try {
    final result = api_instance.getEnvironmentConfig();
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->getEnvironmentConfig: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostEnvironmentConfig**](MattermostEnvironmentConfig.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getImageByUrl**
> MultipartFile getImageByUrl()

Get an image by url

Fetches an image via Mattermost image proxy. __Minimum server version__: 3.10 ##### Permissions Must be logged in. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();

try {
    final result = api_instance.getImageByUrl();
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->getImageByUrl: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/_*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLogs**
> List<String> getLogs(page, logsPerPage)

Get logs

Get a page of server logs, selected with `page` and `logs_per_page` query parameters. ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();
final page = 56; // int | The page to select.
final logsPerPage = logsPerPage_example; // String | The number of logs per page. There is a maximum limit of 10000 logs per page.

try {
    final result = api_instance.getLogs(page, logsPerPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->getLogs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page to select. | [optional] [default to 0]
 **logsPerPage** | **String**| The number of logs per page. There is a maximum limit of 10000 logs per page. | [optional] [default to '10000']

### Return type

**List<String>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotices**
> List<MattermostNotice> getNotices(clientVersion, client, teamId, locale)

Get notices for logged in user in specified team

Will return appropriate product notices for current user in the team specified by teamId parameter. __Minimum server version__: 5.26 ##### Permissions Must be logged in. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();
final clientVersion = clientVersion_example; // String | Version of the client (desktop/mobile/web) that issues the request
final client = client_example; // String | Client type (web/mobile-ios/mobile-android/desktop)
final teamId = teamId_example; // String | ID of the team
final locale = locale_example; // String | Client locale

try {
    final result = api_instance.getNotices(clientVersion, client, teamId, locale);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->getNotices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientVersion** | **String**| Version of the client (desktop/mobile/web) that issues the request | 
 **client** | **String**| Client type (web/mobile-ios/mobile-android/desktop) | 
 **teamId** | **String**| ID of the team | 
 **locale** | **String**| Client locale | [optional] 

### Return type

[**List<MattermostNotice>**](MattermostNotice.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPing**
> MattermostSystemStatusResponse getPing(getServerStatus, deviceId)

Check system health

Check if the server is up and healthy based on the configuration setting `GoRoutineHealthThreshold`. If `GoRoutineHealthThreshold` and the number of goroutines on the server exceeds that threshold the server is considered unhealthy. If `GoRoutineHealthThreshold` is not set or the number of goroutines is below the threshold the server is considered healthy. __Minimum server version__: 3.10 If a \"device_id\" is passed in the query, it will test the Push Notification Proxy in order to discover whether the device is able to receive notifications. The response will have a \"CanReceiveNotifications\" property with one of the following values: - true: It can receive notifications - false: It cannot receive notifications - unknown: There has been an unknown error, and it is not certain whether it can   receive notifications.  __Minimum server version__: 6.5 ##### Permissions None. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();
final getServerStatus = true; // bool | Check the status of the database and file storage as well
final deviceId = deviceId_example; // String | Check whether this device id can receive push notifications

try {
    final result = api_instance.getPing(getServerStatus, deviceId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->getPing: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getServerStatus** | **bool**| Check the status of the database and file storage as well | [optional] 
 **deviceId** | **String**| Check whether this device id can receive push notifications | [optional] 

### Return type

[**MattermostSystemStatusResponse**](MattermostSystemStatusResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRedirectLocation**
> MattermostGetRedirectLocation200Response getRedirectLocation(url)

Get redirect location

__Minimum server version__: 3.10 ##### Permissions Must be logged in. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();
final url = url_example; // String | Url to check

try {
    final result = api_instance.getRedirectLocation(url);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->getRedirectLocation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| Url to check | 

### Return type

[**MattermostGetRedirectLocation200Response**](MattermostGetRedirectLocation200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/_*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServerBusyExpires**
> MattermostServerBusy getServerBusyExpires()

Get server busy expiry time.

Gets the timestamp corresponding to when the server busy flag will be automatically cleared.  __Minimum server version__: 5.20  ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();

try {
    final result = api_instance.getServerBusyExpires();
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->getServerBusyExpires: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostServerBusy**](MattermostServerBusy.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSupportedTimezone**
> List<String> getSupportedTimezone()

Retrieve a list of supported timezones

__Minimum server version__: 3.10 ##### Permissions Must be logged in. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();

try {
    final result = api_instance.getSupportedTimezone();
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->getSupportedTimezone: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List<String>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWarnMetricsStatus**
> MattermostStatusOK getWarnMetricsStatus()

Get the warn metrics status (enabled or disabled)

Get the status of a set of metrics (enabled or disabled) from the Systems table.  The returned JSON contains the metrics that we need to warn the admin on with regard to their status (we return the ones whose status is \"true\", which means that they are in a \"warnable\" state - e.g. a threshold has been crossed or some other condition has been fulfilled).  __Minimum server version__: 5.26  ##### Permissions  Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();

try {
    final result = api_instance.getWarnMetricsStatus();
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->getWarnMetricsStatus: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **invalidateCaches**
> MattermostStatusOK invalidateCaches()

Invalidate all the caches

Purge all the in-memory caches for the Mattermost server. This can have a temporary negative effect on performance while the caches are re-populated. ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();

try {
    final result = api_instance.invalidateCaches();
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->invalidateCaches: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **markNoticesViewed**
> MattermostStatusOK markNoticesViewed(requestBody)

Update notices as 'viewed'

Will mark the specified notices as 'viewed' by the logged in user. __Minimum server version__: 5.26 ##### Permissions Must be logged in. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();
final requestBody = [List<String>()]; // List<String> | Array of notice IDs

try {
    final result = api_instance.markNoticesViewed(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->markNoticesViewed: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)| Array of notice IDs | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchConfig**
> MattermostConfig patchConfig(mattermostConfig)

Patch configuration

Submit configuration to patch. As of server version 4.8, the `PluginSettings.EnableUploads` setting cannot be modified by this endpoint. ##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.20 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();
final mattermostConfig = MattermostConfig(); // MattermostConfig | Mattermost configuration

try {
    final result = api_instance.patchConfig(mattermostConfig);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->patchConfig: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostConfig** | [**MattermostConfig**](MattermostConfig.md)| Mattermost configuration | 

### Return type

[**MattermostConfig**](MattermostConfig.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postLog**
> List<String> postLog(mattermostPostLogRequest)

Add log message

Add log messages to the server logs. ##### Permissions Users with `manage_system` permission can log ERROR or DEBUG messages. Logged in users can log ERROR or DEBUG messages when `ServiceSettings.EnableDeveloper` is `true` or just DEBUG messages when `false`. Non-logged in users can log ERROR or DEBUG messages when `ServiceSettings.EnableDeveloper` is `true` and cannot log when `false`. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();
final mattermostPostLogRequest = MattermostPostLogRequest(); // MattermostPostLogRequest | 

try {
    final result = api_instance.postLog(mattermostPostLogRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->postLog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostPostLogRequest** | [**MattermostPostLogRequest**](MattermostPostLogRequest.md)|  | 

### Return type

**List<String>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reloadConfig**
> MattermostStatusOK reloadConfig()

Reload configuration

Reload the configuration file to pick up on any changes made to it. ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();

try {
    final result = api_instance.reloadConfig();
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->reloadConfig: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeLicenseFile**
> removeLicenseFile()

Remove license file

Remove the license file from the server. This will disable all enterprise features.  __Minimum server version__: 4.0  ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();

try {
    api_instance.removeLicenseFile();
} catch (e) {
    print('Exception when calling MattermostSystemApi->removeLicenseFile: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestLicenseRenewalLink**
> MattermostLicenseRenewalLink requestLicenseRenewalLink()

Request the license renewal link

Request the renewal link that would be used to start the license renewal process __Minimum server version__: 5.32 ##### Permissions Must have `sysconsole_write_about` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();

try {
    final result = api_instance.requestLicenseRenewalLink();
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->requestLicenseRenewalLink: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostLicenseRenewalLink**](MattermostLicenseRenewalLink.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestTrialLicense**
> requestTrialLicense(mattermostRequestTrialLicenseRequest)

Request and install a trial license for your server

Request and install a trial license for your server __Minimum server version__: 5.25 ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();
final mattermostRequestTrialLicenseRequest = MattermostRequestTrialLicenseRequest(); // MattermostRequestTrialLicenseRequest | License request

try {
    api_instance.requestTrialLicense(mattermostRequestTrialLicenseRequest);
} catch (e) {
    print('Exception when calling MattermostSystemApi->requestTrialLicense: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostRequestTrialLicenseRequest** | [**MattermostRequestTrialLicenseRequest**](MattermostRequestTrialLicenseRequest.md)| License request | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restartServer**
> MattermostStatusOK restartServer()

Restart the system after an upgrade from Team Edition to Enterprise Edition

It restarts the current running mattermost instance to execute the new Enterprise binary. __Minimum server version__: 5.27 ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();

try {
    final result = api_instance.restartServer();
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->restartServer: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendTrialLicenseWarnMetricAck**
> MattermostStatusOK sendTrialLicenseWarnMetricAck(warnMetricId)

Request trial license and acknowledge a warning of a metric status

Request a trial license and acknowledge a warning for the warn_metric_id metric crossing a threshold (or some similar condition being fulfilled) - sets the \"ack\" status for all the warn metrics in the system.  __Minimum server version__: 5.28  ##### Permissions  Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();
final warnMetricId = warnMetricId_example; // String | Warn Metric Id.

try {
    final result = api_instance.sendTrialLicenseWarnMetricAck(warnMetricId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->sendTrialLicenseWarnMetricAck: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warnMetricId** | **String**| Warn Metric Id. | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendWarnMetricAck**
> MattermostStatusOK sendWarnMetricAck(warnMetricId, mattermostSendWarnMetricAckRequest)

Acknowledge a warning of a metric status

Acknowledge a warning for the warn_metric_id metric crossing a threshold (or some similar condition being fulfilled) - attempts to send an ack email to acknowledge@mattermost.com and sets the \"ack\" status for all the warn metrics in the system.  __Minimum server version__: 5.26  ##### Permissions  Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();
final warnMetricId = warnMetricId_example; // String | Warn Metric Id.
final mattermostSendWarnMetricAckRequest = MattermostSendWarnMetricAckRequest(); // MattermostSendWarnMetricAckRequest | payload that contains the ack flag

try {
    final result = api_instance.sendWarnMetricAck(warnMetricId, mattermostSendWarnMetricAckRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->sendWarnMetricAck: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warnMetricId** | **String**| Warn Metric Id. | 
 **mattermostSendWarnMetricAckRequest** | [**MattermostSendWarnMetricAckRequest**](MattermostSendWarnMetricAckRequest.md)| payload that contains the ack flag | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setServerBusy**
> MattermostStatusOK setServerBusy(seconds)

Set the server busy (high load) flag

Marks the server as currently having high load which disables non-critical services such as search, statuses and typing notifications.  __Minimum server version__: 5.20  ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();
final seconds = seconds_example; // String | Number of seconds until server is automatically marked as not busy.

try {
    final result = api_instance.setServerBusy(seconds);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->setServerBusy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seconds** | **String**| Number of seconds until server is automatically marked as not busy. | [optional] [default to '3600']

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testEmail**
> MattermostStatusOK testEmail(mattermostConfig)

Send a test email

Send a test email to make sure you have your email settings configured correctly. Optionally provide a configuration in the request body to test. If no valid configuration is present in the request body the current server configuration will be tested. ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();
final mattermostConfig = MattermostConfig(); // MattermostConfig | Mattermost configuration

try {
    final result = api_instance.testEmail(mattermostConfig);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->testEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostConfig** | [**MattermostConfig**](MattermostConfig.md)| Mattermost configuration | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testS3Connection**
> MattermostStatusOK testS3Connection(mattermostConfig)

Test AWS S3 connection

Send a test to validate if can connect to AWS S3. Optionally provide a configuration in the request body to test. If no valid configuration is present in the request body the current server configuration will be tested. ##### Permissions Must have `manage_system` permission. __Minimum server version__: 4.8 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();
final mattermostConfig = MattermostConfig(); // MattermostConfig | Mattermost configuration

try {
    final result = api_instance.testS3Connection(mattermostConfig);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->testS3Connection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostConfig** | [**MattermostConfig**](MattermostConfig.md)| Mattermost configuration | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testSiteURL**
> MattermostStatusOK testSiteURL(mattermostTestSiteURLRequest)

Checks the validity of a Site URL

Sends a Ping request to the mattermost server using the specified Site URL.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.16 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();
final mattermostTestSiteURLRequest = MattermostTestSiteURLRequest(); // MattermostTestSiteURLRequest | 

try {
    final result = api_instance.testSiteURL(mattermostTestSiteURLRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->testSiteURL: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostTestSiteURLRequest** | [**MattermostTestSiteURLRequest**](MattermostTestSiteURLRequest.md)|  | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trialLicensePrevGet**
> trialLicensePrevGet()

Get last trial license used

Get the last trial license used on the sevrer __Minimum server version__: 5.36 ##### Permissions Must have `manage_systems` permissions. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();

try {
    api_instance.trialLicensePrevGet();
} catch (e) {
    print('Exception when calling MattermostSystemApi->trialLicensePrevGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateConfig**
> MattermostConfig updateConfig(mattermostConfig)

Update configuration

Submit a new configuration for the server to use. As of server version 4.8, the `PluginSettings.EnableUploads` setting cannot be modified by this endpoint. Note that the parameters that aren't set in the configuration that you provide will be reset to default values. Therefore, if you want to change a configuration parameter and leave the other ones unchanged, you need to get the existing configuration first, change the field that you want, then put that new configuration. ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();
final mattermostConfig = MattermostConfig(); // MattermostConfig | Mattermost configuration

try {
    final result = api_instance.updateConfig(mattermostConfig);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->updateConfig: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostConfig** | [**MattermostConfig**](MattermostConfig.md)| Mattermost configuration | 

### Return type

[**MattermostConfig**](MattermostConfig.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMarketplaceVisitedByAdmin**
> MattermostStatusOK updateMarketplaceVisitedByAdmin(mattermostSystem)

Stores that the Plugin Marketplace has been visited by at least an admin.

Stores the system-level status that specifies that at least an admin has visited the in-product Plugin Marketplace. __Minimum server version: 5.33__ ##### Permissions Must have `manage_system` permissions. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();
final mattermostSystem = MattermostSystem(); // MattermostSystem | 

try {
    final result = api_instance.updateMarketplaceVisitedByAdmin(mattermostSystem);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->updateMarketplaceVisitedByAdmin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostSystem** | [**MattermostSystem**](MattermostSystem.md)|  | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upgradeToEnterprise**
> MattermostPushNotification upgradeToEnterprise()

Executes an inplace upgrade from Team Edition to Enterprise Edition

It downloads the Mattermost Enterprise Edition of your current version and replace your current version with it. After the upgrade you need to restart the Mattermost server. __Minimum server version__: 5.27 ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();

try {
    final result = api_instance.upgradeToEnterprise();
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->upgradeToEnterprise: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostPushNotification**](MattermostPushNotification.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upgradeToEnterpriseStatus**
> MattermostUpgradeToEnterpriseStatus200Response upgradeToEnterpriseStatus()

Get the current status for the inplace upgrade from Team Edition to Enterprise Edition

It returns the percentage of completion of the current upgrade or the error if there is any. __Minimum server version__: 5.27 ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();

try {
    final result = api_instance.upgradeToEnterpriseStatus();
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->upgradeToEnterpriseStatus: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostUpgradeToEnterpriseStatus200Response**](MattermostUpgradeToEnterpriseStatus200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadLicenseFile**
> MattermostStatusOK uploadLicenseFile(license)

Upload license file

Upload a license to enable enterprise features.  __Minimum server version__: 4.0  ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostSystemApi();
final license = BINARY_DATA_HERE; // MultipartFile | The license to be uploaded

try {
    final result = api_instance.uploadLicenseFile(license);
    print(result);
} catch (e) {
    print('Exception when calling MattermostSystemApi->uploadLicenseFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **license** | **MultipartFile**| The license to be uploaded | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

