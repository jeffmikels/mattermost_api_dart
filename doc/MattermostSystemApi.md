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
> List<MMIntegrityCheckResult> checkIntegrity()

Perform a database integrity check

Performs a database integrity check.   __Note__: This check may temporarily harm system performance.   __Minimum server version__: 5.28.0   __Local mode only__: This endpoint is only available through [local mode](https://docs.mattermost.com/administration/mmctl-cli-tool.html#local-mode). 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final List&lt;MMIntegrityCheckResult&gt; result = await client.system.checkIntegrity(); // returns List&lt;MMIntegrityCheckResult&gt; instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostSystemApi->checkIntegrity: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<MMIntegrityCheckResult>**](MMIntegrityCheckResult.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **clearServerBusy**
> MMStatusOK clearServerBusy()

Clears the server busy (high load) flag

Marks the server as not having high load which re-enables non-critical services such as search, statuses and typing notifications.  __Minimum server version__: 5.20  ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MMStatusOK result = await client.system.clearServerBusy(); // returns MMStatusOK instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostSystemApi->clearServerBusy: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **databaseRecycle**
> MMStatusOK databaseRecycle()

Recycle database connections

Recycle database connections by closing and reconnecting all connections to master and read replica databases. ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MMStatusOK result = await client.system.databaseRecycle(); // returns MMStatusOK instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostSystemApi->databaseRecycle: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **generateSupportPacket**
> generateSupportPacket()

Download a zip file which contains helpful and useful information for troubleshooting your mattermost instance.

Download a zip file which contains helpful and useful information for troubleshooting your mattermost instance. __Minimum server version: 5.32__ ##### Permissions Must have any of the system console read permissions. ##### License Requires either a E10 or E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  await client.system.generateSupportPacket(); 
} catch (e) {
  print('Exception when calling MattermostSystemApi->generateSupportPacket: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getAnalyticsOld**
> getAnalyticsOld(name, teamId)

Get analytics

Get some analytics data about the system. This endpoint uses the old format, the `/analytics` route is reserved for the new format when it gets implemented.  The returned JSON changes based on the `name` query parameter but is always key/value pairs.  __Minimum server version__: 4.0  ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String name = 'name_example'; // String | Possible values are \"standard\", \"bot_post_counts_day\", \"post_counts_day\", \"user_counts_with_posts_day\" or \"extra_counts\"
final String teamId = 'teamId_example'; // String | The team ID to filter the data by

try {
  await client.system.getAnalyticsOld(name, teamId); 
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

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getAudits**
> List<MMAudit> getAudits(page, perPage)

Get audits

Get a page of audits for all users on the system, selected with `page` and `per_page` query parameters. ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of audits per page.

try {
  final List&lt;MMAudit&gt; result = await client.system.getAudits(page, perPage); // returns List&lt;MMAudit&gt; instance
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

[**List<MMAudit>**](MMAudit.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getClientConfig**
> getClientConfig(format)

Get client configuration

Get a subset of the server configuration needed by the client. ##### Permissions No permission required. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String format = 'format_example'; // String | Must be `old`, other formats not implemented yet

try {
  await client.system.getClientConfig(format); 
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

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getClientLicense**
> getClientLicense(format)

Get client license

Get a subset of the server license needed by the client. ##### Permissions No permission required but having the `manage_system` permission returns more information. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String format = 'format_example'; // String | Must be `old`, other formats not implemented yet

try {
  await client.system.getClientLicense(format); 
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

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getConfig**
> MMConfig getConfig()

Get configuration

Retrieve the current server configuration ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MMConfig result = await client.system.getConfig(); // returns MMConfig instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostSystemApi->getConfig: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MMConfig**](MMConfig.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getEnvironmentConfig**
> MMEnvironmentConfig getEnvironmentConfig()

Get configuration made through environment variables

Retrieve a json object mirroring the server configuration where fields are set to true if the corresponding config setting is set through an environment variable. Settings that haven't been set through environment variables will be missing from the object.  __Minimum server version__: 4.10  ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MMEnvironmentConfig result = await client.system.getEnvironmentConfig(); // returns MMEnvironmentConfig instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostSystemApi->getEnvironmentConfig: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MMEnvironmentConfig**](MMEnvironmentConfig.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getImageByUrl**
> MultipartFile getImageByUrl()

Get an image by url

Fetches an image via Mattermost image proxy. __Minimum server version__: 3.10 ##### Permissions Must be logged in. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MultipartFile result = await client.system.getImageByUrl(); // returns MultipartFile instance
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

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/_*, application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getLogs**
> List<String> getLogs(page, logsPerPage)

Get logs

Get a page of server logs, selected with `page` and `logs_per_page` query parameters. ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final int page = 56; // int | The page to select.
final String logsPerPage = 'logsPerPage_example'; // String | The number of logs per page. There is a maximum limit of 10000 logs per page.

try {
  final List&lt;String&gt; result = await client.system.getLogs(page, logsPerPage); // returns List&lt;String&gt; instance
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

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getNotices**
> List<MMNotice> getNotices(clientVersion, client, teamId, locale)

Get notices for logged in user in specified team

Will return appropriate product notices for current user in the team specified by teamId parameter. __Minimum server version__: 5.26 ##### Permissions Must be logged in. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String clientVersion = 'clientVersion_example'; // String | Version of the client (desktop/mobile/web) that issues the request
final String client = 'client_example'; // String | Client type (web/mobile-ios/mobile-android/desktop)
final String teamId = 'teamId_example'; // String | ID of the team
final String locale = 'locale_example'; // String | Client locale

try {
  final List&lt;MMNotice&gt; result = await client.system.getNotices(clientVersion, client, teamId, locale); // returns List&lt;MMNotice&gt; instance
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

[**List<MMNotice>**](MMNotice.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getPing**
> MMSystemStatusResponse getPing(getServerStatus, deviceId)

Check system health

Check if the server is up and healthy based on the configuration setting `GoRoutineHealthThreshold`. If `GoRoutineHealthThreshold` and the number of goroutines on the server exceeds that threshold the server is considered unhealthy. If `GoRoutineHealthThreshold` is not set or the number of goroutines is below the threshold the server is considered healthy. __Minimum server version__: 3.10 If a \"device_id\" is passed in the query, it will test the Push Notification Proxy in order to discover whether the device is able to receive notifications. The response will have a \"CanReceiveNotifications\" property with one of the following values: - true: It can receive notifications - false: It cannot receive notifications - unknown: There has been an unknown error, and it is not certain whether it can   receive notifications.  __Minimum server version__: 6.5 ##### Permissions None. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final bool getServerStatus = true; // bool | Check the status of the database and file storage as well
final String deviceId = 'deviceId_example'; // String | Check whether this device id can receive push notifications

try {
  final MMSystemStatusResponse result = await client.system.getPing(getServerStatus, deviceId); // returns MMSystemStatusResponse instance
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

[**MMSystemStatusResponse**](MMSystemStatusResponse.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getRedirectLocation**
> MMGetRedirectLocation200Response getRedirectLocation(url)

Get redirect location

__Minimum server version__: 3.10 ##### Permissions Must be logged in. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String url = 'url_example'; // String | Url to check

try {
  final MMGetRedirectLocation200Response result = await client.system.getRedirectLocation(url); // returns MMGetRedirectLocation200Response instance
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

[**MMGetRedirectLocation200Response**](MMGetRedirectLocation200Response.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/_*, application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getServerBusyExpires**
> MMServerBusy getServerBusyExpires()

Get server busy expiry time.

Gets the timestamp corresponding to when the server busy flag will be automatically cleared.  __Minimum server version__: 5.20  ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MMServerBusy result = await client.system.getServerBusyExpires(); // returns MMServerBusy instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostSystemApi->getServerBusyExpires: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MMServerBusy**](MMServerBusy.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getSupportedTimezone**
> List<String> getSupportedTimezone()

Retrieve a list of supported timezones

__Minimum server version__: 3.10 ##### Permissions Must be logged in. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final List&lt;String&gt; result = await client.system.getSupportedTimezone(); // returns List&lt;String&gt; instance
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

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getWarnMetricsStatus**
> MMStatusOK getWarnMetricsStatus()

Get the warn metrics status (enabled or disabled)

Get the status of a set of metrics (enabled or disabled) from the Systems table.  The returned JSON contains the metrics that we need to warn the admin on with regard to their status (we return the ones whose status is \"true\", which means that they are in a \"warnable\" state - e.g. a threshold has been crossed or some other condition has been fulfilled).  __Minimum server version__: 5.26  ##### Permissions  Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MMStatusOK result = await client.system.getWarnMetricsStatus(); // returns MMStatusOK instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostSystemApi->getWarnMetricsStatus: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **invalidateCaches**
> MMStatusOK invalidateCaches()

Invalidate all the caches

Purge all the in-memory caches for the Mattermost server. This can have a temporary negative effect on performance while the caches are re-populated. ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MMStatusOK result = await client.system.invalidateCaches(); // returns MMStatusOK instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostSystemApi->invalidateCaches: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **markNoticesViewed**
> MMStatusOK markNoticesViewed(requestBody)

Update notices as 'viewed'

Will mark the specified notices as 'viewed' by the logged in user. __Minimum server version__: 5.26 ##### Permissions Must be logged in. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final List&lt;String&gt; requestBody = [List<String>()]; // List<String> | Array of notice IDs

try {
  final MMStatusOK result = await client.system.markNoticesViewed(requestBody); // returns MMStatusOK instance
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

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **patchConfig**
> MMConfig patchConfig(mMConfig)

Patch configuration

Submit configuration to patch. As of server version 4.8, the `PluginSettings.EnableUploads` setting cannot be modified by this endpoint. ##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.20 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final MMConfig mMConfig = MMConfig(); // MMConfig | Mattermost configuration

try {
  final MMConfig result = await client.system.patchConfig(mMConfig); // returns MMConfig instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostSystemApi->patchConfig: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mMConfig** | [**MMConfig**](MMConfig.md)| Mattermost configuration | 

### Return type

[**MMConfig**](MMConfig.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **postLog**
> List<String> postLog(mMPostLogRequest)

Add log message

Add log messages to the server logs. ##### Permissions Users with `manage_system` permission can log ERROR or DEBUG messages. Logged in users can log ERROR or DEBUG messages when `ServiceSettings.EnableDeveloper` is `true` or just DEBUG messages when `false`. Non-logged in users can log ERROR or DEBUG messages when `ServiceSettings.EnableDeveloper` is `true` and cannot log when `false`. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final MMPostLogRequest mMPostLogRequest = MMPostLogRequest(); // MMPostLogRequest | 

try {
  final List&lt;String&gt; result = await client.system.postLog(mMPostLogRequest); // returns List&lt;String&gt; instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostSystemApi->postLog: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mMPostLogRequest** | [**MMPostLogRequest**](MMPostLogRequest.md)|  | 

### Return type

**List<String>**

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **reloadConfig**
> MMStatusOK reloadConfig()

Reload configuration

Reload the configuration file to pick up on any changes made to it. ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MMStatusOK result = await client.system.reloadConfig(); // returns MMStatusOK instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostSystemApi->reloadConfig: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **removeLicenseFile**
> removeLicenseFile()

Remove license file

Remove the license file from the server. This will disable all enterprise features.  __Minimum server version__: 4.0  ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  await client.system.removeLicenseFile(); 
} catch (e) {
  print('Exception when calling MattermostSystemApi->removeLicenseFile: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **requestLicenseRenewalLink**
> MMLicenseRenewalLink requestLicenseRenewalLink()

Request the license renewal link

Request the renewal link that would be used to start the license renewal process __Minimum server version__: 5.32 ##### Permissions Must have `sysconsole_write_about` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MMLicenseRenewalLink result = await client.system.requestLicenseRenewalLink(); // returns MMLicenseRenewalLink instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostSystemApi->requestLicenseRenewalLink: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MMLicenseRenewalLink**](MMLicenseRenewalLink.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **requestTrialLicense**
> requestTrialLicense(mMRequestTrialLicenseRequest)

Request and install a trial license for your server

Request and install a trial license for your server __Minimum server version__: 5.25 ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final MMRequestTrialLicenseRequest mMRequestTrialLicenseRequest = MMRequestTrialLicenseRequest(); // MMRequestTrialLicenseRequest | License request

try {
  await client.system.requestTrialLicense(mMRequestTrialLicenseRequest); 
} catch (e) {
  print('Exception when calling MattermostSystemApi->requestTrialLicense: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mMRequestTrialLicenseRequest** | [**MMRequestTrialLicenseRequest**](MMRequestTrialLicenseRequest.md)| License request | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **restartServer**
> MMStatusOK restartServer()

Restart the system after an upgrade from Team Edition to Enterprise Edition

It restarts the current running mattermost instance to execute the new Enterprise binary. __Minimum server version__: 5.27 ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MMStatusOK result = await client.system.restartServer(); // returns MMStatusOK instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostSystemApi->restartServer: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **sendTrialLicenseWarnMetricAck**
> MMStatusOK sendTrialLicenseWarnMetricAck(warnMetricId)

Request trial license and acknowledge a warning of a metric status

Request a trial license and acknowledge a warning for the warn_metric_id metric crossing a threshold (or some similar condition being fulfilled) - sets the \"ack\" status for all the warn metrics in the system.  __Minimum server version__: 5.28  ##### Permissions  Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String warnMetricId = 'warnMetricId_example'; // String | Warn Metric Id.

try {
  final MMStatusOK result = await client.system.sendTrialLicenseWarnMetricAck(warnMetricId); // returns MMStatusOK instance
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

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **sendWarnMetricAck**
> MMStatusOK sendWarnMetricAck(warnMetricId, mMSendWarnMetricAckRequest)

Acknowledge a warning of a metric status

Acknowledge a warning for the warn_metric_id metric crossing a threshold (or some similar condition being fulfilled) - attempts to send an ack email to acknowledge@mattermost.com and sets the \"ack\" status for all the warn metrics in the system.  __Minimum server version__: 5.26  ##### Permissions  Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String warnMetricId = 'warnMetricId_example'; // String | Warn Metric Id.
final MMSendWarnMetricAckRequest mMSendWarnMetricAckRequest = MMSendWarnMetricAckRequest(); // MMSendWarnMetricAckRequest | payload that contains the ack flag

try {
  final MMStatusOK result = await client.system.sendWarnMetricAck(warnMetricId, mMSendWarnMetricAckRequest); // returns MMStatusOK instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostSystemApi->sendWarnMetricAck: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warnMetricId** | **String**| Warn Metric Id. | 
 **mMSendWarnMetricAckRequest** | [**MMSendWarnMetricAckRequest**](MMSendWarnMetricAckRequest.md)| payload that contains the ack flag | 

### Return type

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **setServerBusy**
> MMStatusOK setServerBusy(seconds)

Set the server busy (high load) flag

Marks the server as currently having high load which disables non-critical services such as search, statuses and typing notifications.  __Minimum server version__: 5.20  ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String seconds = 'seconds_example'; // String | Number of seconds until server is automatically marked as not busy.

try {
  final MMStatusOK result = await client.system.setServerBusy(seconds); // returns MMStatusOK instance
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

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **testEmail**
> MMStatusOK testEmail(mMConfig)

Send a test email

Send a test email to make sure you have your email settings configured correctly. Optionally provide a configuration in the request body to test. If no valid configuration is present in the request body the current server configuration will be tested. ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final MMConfig mMConfig = MMConfig(); // MMConfig | Mattermost configuration

try {
  final MMStatusOK result = await client.system.testEmail(mMConfig); // returns MMStatusOK instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostSystemApi->testEmail: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mMConfig** | [**MMConfig**](MMConfig.md)| Mattermost configuration | 

### Return type

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **testS3Connection**
> MMStatusOK testS3Connection(mMConfig)

Test AWS S3 connection

Send a test to validate if can connect to AWS S3. Optionally provide a configuration in the request body to test. If no valid configuration is present in the request body the current server configuration will be tested. ##### Permissions Must have `manage_system` permission. __Minimum server version__: 4.8 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final MMConfig mMConfig = MMConfig(); // MMConfig | Mattermost configuration

try {
  final MMStatusOK result = await client.system.testS3Connection(mMConfig); // returns MMStatusOK instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostSystemApi->testS3Connection: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mMConfig** | [**MMConfig**](MMConfig.md)| Mattermost configuration | 

### Return type

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **testSiteURL**
> MMStatusOK testSiteURL(mMTestSiteURLRequest)

Checks the validity of a Site URL

Sends a Ping request to the mattermost server using the specified Site URL.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.16 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final MMTestSiteURLRequest mMTestSiteURLRequest = MMTestSiteURLRequest(); // MMTestSiteURLRequest | 

try {
  final MMStatusOK result = await client.system.testSiteURL(mMTestSiteURLRequest); // returns MMStatusOK instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostSystemApi->testSiteURL: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mMTestSiteURLRequest** | [**MMTestSiteURLRequest**](MMTestSiteURLRequest.md)|  | 

### Return type

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **trialLicensePrevGet**
> trialLicensePrevGet()

Get last trial license used

Get the last trial license used on the sevrer __Minimum server version__: 5.36 ##### Permissions Must have `manage_systems` permissions. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  await client.system.trialLicensePrevGet(); 
} catch (e) {
  print('Exception when calling MattermostSystemApi->trialLicensePrevGet: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateConfig**
> MMConfig updateConfig(mMConfig)

Update configuration

Submit a new configuration for the server to use. As of server version 4.8, the `PluginSettings.EnableUploads` setting cannot be modified by this endpoint. Note that the parameters that aren't set in the configuration that you provide will be reset to default values. Therefore, if you want to change a configuration parameter and leave the other ones unchanged, you need to get the existing configuration first, change the field that you want, then put that new configuration. ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final MMConfig mMConfig = MMConfig(); // MMConfig | Mattermost configuration

try {
  final MMConfig result = await client.system.updateConfig(mMConfig); // returns MMConfig instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostSystemApi->updateConfig: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mMConfig** | [**MMConfig**](MMConfig.md)| Mattermost configuration | 

### Return type

[**MMConfig**](MMConfig.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateMarketplaceVisitedByAdmin**
> MMStatusOK updateMarketplaceVisitedByAdmin(mMSystem)

Stores that the Plugin Marketplace has been visited by at least an admin.

Stores the system-level status that specifies that at least an admin has visited the in-product Plugin Marketplace. __Minimum server version: 5.33__ ##### Permissions Must have `manage_system` permissions. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final MMSystem mMSystem = MMSystem(); // MMSystem | 

try {
  final MMStatusOK result = await client.system.updateMarketplaceVisitedByAdmin(mMSystem); // returns MMStatusOK instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostSystemApi->updateMarketplaceVisitedByAdmin: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mMSystem** | [**MMSystem**](MMSystem.md)|  | 

### Return type

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **upgradeToEnterprise**
> MMPushNotification upgradeToEnterprise()

Executes an inplace upgrade from Team Edition to Enterprise Edition

It downloads the Mattermost Enterprise Edition of your current version and replace your current version with it. After the upgrade you need to restart the Mattermost server. __Minimum server version__: 5.27 ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MMPushNotification result = await client.system.upgradeToEnterprise(); // returns MMPushNotification instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostSystemApi->upgradeToEnterprise: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MMPushNotification**](MMPushNotification.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **upgradeToEnterpriseStatus**
> MMUpgradeToEnterpriseStatus200Response upgradeToEnterpriseStatus()

Get the current status for the inplace upgrade from Team Edition to Enterprise Edition

It returns the percentage of completion of the current upgrade or the error if there is any. __Minimum server version__: 5.27 ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MMUpgradeToEnterpriseStatus200Response result = await client.system.upgradeToEnterpriseStatus(); // returns MMUpgradeToEnterpriseStatus200Response instance
  print(result);
} catch (e) {
  print('Exception when calling MattermostSystemApi->upgradeToEnterpriseStatus: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MMUpgradeToEnterpriseStatus200Response**](MMUpgradeToEnterpriseStatus200Response.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **uploadLicenseFile**
> MMStatusOK uploadLicenseFile(license)

Upload license file

Upload a license to enable enterprise features.  __Minimum server version__: 4.0  ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final MultipartFile license = BINARY_DATA_HERE; // MultipartFile | The license to be uploaded

try {
  final MMStatusOK result = await client.system.uploadLicenseFile(license); // returns MMStatusOK instance
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

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

