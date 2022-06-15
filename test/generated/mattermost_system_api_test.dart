//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:mattermost_api/api.dart';
import 'package:test/test.dart';


/// tests for MattermostSystemApi
void main() {
  // final instance = MattermostSystemApi();

  group('tests for MattermostSystemApi', () {
    // Perform a database integrity check
    //
    // Performs a database integrity check.   __Note__: This check may temporarily harm system performance.   __Minimum server version__: 5.28.0   __Local mode only__: This endpoint is only available through [local mode](https://docs.mattermost.com/administration/mmctl-cli-tool.html#local-mode). 
    //
    //Future<List<MmIntegrityCheckResult>> checkIntegrity() async
    test('test checkIntegrity', () async {
      // TODO
    });

    // Clears the server busy (high load) flag
    //
    // Marks the server as not having high load which re-enables non-critical services such as search, statuses and typing notifications.  __Minimum server version__: 5.20  ##### Permissions Must have `manage_system` permission. 
    //
    //Future<MmStatusOK> clearServerBusy() async
    test('test clearServerBusy', () async {
      // TODO
    });

    // Recycle database connections
    //
    // Recycle database connections by closing and reconnecting all connections to master and read replica databases. ##### Permissions Must have `manage_system` permission. 
    //
    //Future<MmStatusOK> databaseRecycle() async
    test('test databaseRecycle', () async {
      // TODO
    });

    // Download a zip file which contains helpful and useful information for troubleshooting your mattermost instance.
    //
    // Download a zip file which contains helpful and useful information for troubleshooting your mattermost instance. __Minimum server version: 5.32__ ##### Permissions Must have any of the system console read permissions. ##### License Requires either a E10 or E20 license. 
    //
    //Future generateSupportPacket() async
    test('test generateSupportPacket', () async {
      // TODO
    });

    // Get analytics
    //
    // Get some analytics data about the system. This endpoint uses the old format, the `/analytics` route is reserved for the new format when it gets implemented.  The returned JSON changes based on the `name` query parameter but is always key/value pairs.  __Minimum server version__: 4.0  ##### Permissions Must have `manage_system` permission. 
    //
    //Future getAnalyticsOld({ String name, String teamId }) async
    test('test getAnalyticsOld', () async {
      // TODO
    });

    // Get audits
    //
    // Get a page of audits for all users on the system, selected with `page` and `per_page` query parameters. ##### Permissions Must have `manage_system` permission. 
    //
    //Future<List<MmAudit>> getAudits({ int page, int perPage }) async
    test('test getAudits', () async {
      // TODO
    });

    // Get client configuration
    //
    // Get a subset of the server configuration needed by the client. ##### Permissions No permission required. 
    //
    //Future getClientConfig(String format) async
    test('test getClientConfig', () async {
      // TODO
    });

    // Get client license
    //
    // Get a subset of the server license needed by the client. ##### Permissions No permission required but having the `manage_system` permission returns more information. 
    //
    //Future getClientLicense(String format) async
    test('test getClientLicense', () async {
      // TODO
    });

    // Get configuration
    //
    // Retrieve the current server configuration ##### Permissions Must have `manage_system` permission. 
    //
    //Future<MmConfig> getConfig() async
    test('test getConfig', () async {
      // TODO
    });

    // Get configuration made through environment variables
    //
    // Retrieve a json object mirroring the server configuration where fields are set to true if the corresponding config setting is set through an environment variable. Settings that haven't been set through environment variables will be missing from the object.  __Minimum server version__: 4.10  ##### Permissions Must have `manage_system` permission. 
    //
    //Future<MmEnvironmentConfig> getEnvironmentConfig() async
    test('test getEnvironmentConfig', () async {
      // TODO
    });

    // Get an image by url
    //
    // Fetches an image via Mattermost image proxy. __Minimum server version__: 3.10 ##### Permissions Must be logged in. 
    //
    //Future<MultipartFile> getImageByUrl() async
    test('test getImageByUrl', () async {
      // TODO
    });

    // Get logs
    //
    // Get a page of server logs, selected with `page` and `logs_per_page` query parameters. ##### Permissions Must have `manage_system` permission. 
    //
    //Future<List<String>> getLogs({ int page, String logsPerPage }) async
    test('test getLogs', () async {
      // TODO
    });

    // Get notices for logged in user in specified team
    //
    // Will return appropriate product notices for current user in the team specified by teamId parameter. __Minimum server version__: 5.26 ##### Permissions Must be logged in. 
    //
    //Future<List<MmNotice>> getNotices(String clientVersion, String client, String teamId, { String locale }) async
    test('test getNotices', () async {
      // TODO
    });

    // Check system health
    //
    // Check if the server is up and healthy based on the configuration setting `GoRoutineHealthThreshold`. If `GoRoutineHealthThreshold` and the number of goroutines on the server exceeds that threshold the server is considered unhealthy. If `GoRoutineHealthThreshold` is not set or the number of goroutines is below the threshold the server is considered healthy. __Minimum server version__: 3.10 If a \"device_id\" is passed in the query, it will test the Push Notification Proxy in order to discover whether the device is able to receive notifications. The response will have a \"CanReceiveNotifications\" property with one of the following values: - true: It can receive notifications - false: It cannot receive notifications - unknown: There has been an unknown error, and it is not certain whether it can   receive notifications.  __Minimum server version__: 6.5 ##### Permissions None. 
    //
    //Future<MmSystemStatusResponse> getPing({ bool getServerStatus, String deviceId }) async
    test('test getPing', () async {
      // TODO
    });

    // Get redirect location
    //
    // __Minimum server version__: 3.10 ##### Permissions Must be logged in. 
    //
    //Future<MmGetRedirectLocation200Response> getRedirectLocation(String url) async
    test('test getRedirectLocation', () async {
      // TODO
    });

    // Get server busy expiry time.
    //
    // Gets the timestamp corresponding to when the server busy flag will be automatically cleared.  __Minimum server version__: 5.20  ##### Permissions Must have `manage_system` permission. 
    //
    //Future<MmServerBusy> getServerBusyExpires() async
    test('test getServerBusyExpires', () async {
      // TODO
    });

    // Retrieve a list of supported timezones
    //
    // __Minimum server version__: 3.10 ##### Permissions Must be logged in. 
    //
    //Future<List<String>> getSupportedTimezone() async
    test('test getSupportedTimezone', () async {
      // TODO
    });

    // Get the warn metrics status (enabled or disabled)
    //
    // Get the status of a set of metrics (enabled or disabled) from the Systems table.  The returned JSON contains the metrics that we need to warn the admin on with regard to their status (we return the ones whose status is \"true\", which means that they are in a \"warnable\" state - e.g. a threshold has been crossed or some other condition has been fulfilled).  __Minimum server version__: 5.26  ##### Permissions  Must have `manage_system` permission. 
    //
    //Future<MmStatusOK> getWarnMetricsStatus() async
    test('test getWarnMetricsStatus', () async {
      // TODO
    });

    // Invalidate all the caches
    //
    // Purge all the in-memory caches for the Mattermost server. This can have a temporary negative effect on performance while the caches are re-populated. ##### Permissions Must have `manage_system` permission. 
    //
    //Future<MmStatusOK> invalidateCaches() async
    test('test invalidateCaches', () async {
      // TODO
    });

    // Update notices as 'viewed'
    //
    // Will mark the specified notices as 'viewed' by the logged in user. __Minimum server version__: 5.26 ##### Permissions Must be logged in. 
    //
    //Future<MmStatusOK> markNoticesViewed(List<String> requestBody) async
    test('test markNoticesViewed', () async {
      // TODO
    });

    // Patch configuration
    //
    // Submit configuration to patch. As of server version 4.8, the `PluginSettings.EnableUploads` setting cannot be modified by this endpoint. ##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.20 
    //
    //Future<MmConfig> patchConfig(MmConfig mmConfig) async
    test('test patchConfig', () async {
      // TODO
    });

    // Add log message
    //
    // Add log messages to the server logs. ##### Permissions Users with `manage_system` permission can log ERROR or DEBUG messages. Logged in users can log ERROR or DEBUG messages when `ServiceSettings.EnableDeveloper` is `true` or just DEBUG messages when `false`. Non-logged in users can log ERROR or DEBUG messages when `ServiceSettings.EnableDeveloper` is `true` and cannot log when `false`. 
    //
    //Future<List<String>> postLog(MmPostLogRequest mmPostLogRequest) async
    test('test postLog', () async {
      // TODO
    });

    // Reload configuration
    //
    // Reload the configuration file to pick up on any changes made to it. ##### Permissions Must have `manage_system` permission. 
    //
    //Future<MmStatusOK> reloadConfig() async
    test('test reloadConfig', () async {
      // TODO
    });

    // Remove license file
    //
    // Remove the license file from the server. This will disable all enterprise features.  __Minimum server version__: 4.0  ##### Permissions Must have `manage_system` permission. 
    //
    //Future removeLicenseFile() async
    test('test removeLicenseFile', () async {
      // TODO
    });

    // Request the license renewal link
    //
    // Request the renewal link that would be used to start the license renewal process __Minimum server version__: 5.32 ##### Permissions Must have `sysconsole_write_about` permission. 
    //
    //Future<MmLicenseRenewalLink> requestLicenseRenewalLink() async
    test('test requestLicenseRenewalLink', () async {
      // TODO
    });

    // Request and install a trial license for your server
    //
    // Request and install a trial license for your server __Minimum server version__: 5.25 ##### Permissions Must have `manage_system` permission. 
    //
    //Future requestTrialLicense(MmRequestTrialLicenseRequest mmRequestTrialLicenseRequest) async
    test('test requestTrialLicense', () async {
      // TODO
    });

    // Restart the system after an upgrade from Team Edition to Enterprise Edition
    //
    // It restarts the current running mattermost instance to execute the new Enterprise binary. __Minimum server version__: 5.27 ##### Permissions Must have `manage_system` permission. 
    //
    //Future<MmStatusOK> restartServer() async
    test('test restartServer', () async {
      // TODO
    });

    // Request trial license and acknowledge a warning of a metric status
    //
    // Request a trial license and acknowledge a warning for the warn_metric_id metric crossing a threshold (or some similar condition being fulfilled) - sets the \"ack\" status for all the warn metrics in the system.  __Minimum server version__: 5.28  ##### Permissions  Must have `manage_system` permission. 
    //
    //Future<MmStatusOK> sendTrialLicenseWarnMetricAck(String warnMetricId) async
    test('test sendTrialLicenseWarnMetricAck', () async {
      // TODO
    });

    // Acknowledge a warning of a metric status
    //
    // Acknowledge a warning for the warn_metric_id metric crossing a threshold (or some similar condition being fulfilled) - attempts to send an ack email to acknowledge@mattermost.com and sets the \"ack\" status for all the warn metrics in the system.  __Minimum server version__: 5.26  ##### Permissions  Must have `manage_system` permission. 
    //
    //Future<MmStatusOK> sendWarnMetricAck(String warnMetricId, MmSendWarnMetricAckRequest mmSendWarnMetricAckRequest) async
    test('test sendWarnMetricAck', () async {
      // TODO
    });

    // Set the server busy (high load) flag
    //
    // Marks the server as currently having high load which disables non-critical services such as search, statuses and typing notifications.  __Minimum server version__: 5.20  ##### Permissions Must have `manage_system` permission. 
    //
    //Future<MmStatusOK> setServerBusy({ String seconds }) async
    test('test setServerBusy', () async {
      // TODO
    });

    // Send a test email
    //
    // Send a test email to make sure you have your email settings configured correctly. Optionally provide a configuration in the request body to test. If no valid configuration is present in the request body the current server configuration will be tested. ##### Permissions Must have `manage_system` permission. 
    //
    //Future<MmStatusOK> testEmail(MmConfig mmConfig) async
    test('test testEmail', () async {
      // TODO
    });

    // Test AWS S3 connection
    //
    // Send a test to validate if can connect to AWS S3. Optionally provide a configuration in the request body to test. If no valid configuration is present in the request body the current server configuration will be tested. ##### Permissions Must have `manage_system` permission. __Minimum server version__: 4.8 
    //
    //Future<MmStatusOK> testS3Connection(MmConfig mmConfig) async
    test('test testS3Connection', () async {
      // TODO
    });

    // Checks the validity of a Site URL
    //
    // Sends a Ping request to the mattermost server using the specified Site URL.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.16 
    //
    //Future<MmStatusOK> testSiteURL(MmTestSiteURLRequest mmTestSiteURLRequest) async
    test('test testSiteURL', () async {
      // TODO
    });

    // Get last trial license used
    //
    // Get the last trial license used on the sevrer __Minimum server version__: 5.36 ##### Permissions Must have `manage_systems` permissions. 
    //
    //Future trialLicensePrevGet() async
    test('test trialLicensePrevGet', () async {
      // TODO
    });

    // Update configuration
    //
    // Submit a new configuration for the server to use. As of server version 4.8, the `PluginSettings.EnableUploads` setting cannot be modified by this endpoint. Note that the parameters that aren't set in the configuration that you provide will be reset to default values. Therefore, if you want to change a configuration parameter and leave the other ones unchanged, you need to get the existing configuration first, change the field that you want, then put that new configuration. ##### Permissions Must have `manage_system` permission. 
    //
    //Future<MmConfig> updateConfig(MmConfig mmConfig) async
    test('test updateConfig', () async {
      // TODO
    });

    // Stores that the Plugin Marketplace has been visited by at least an admin.
    //
    // Stores the system-level status that specifies that at least an admin has visited the in-product Plugin Marketplace. __Minimum server version: 5.33__ ##### Permissions Must have `manage_system` permissions. 
    //
    //Future<MmStatusOK> updateMarketplaceVisitedByAdmin(MmSystem mmSystem) async
    test('test updateMarketplaceVisitedByAdmin', () async {
      // TODO
    });

    // Executes an inplace upgrade from Team Edition to Enterprise Edition
    //
    // It downloads the Mattermost Enterprise Edition of your current version and replace your current version with it. After the upgrade you need to restart the Mattermost server. __Minimum server version__: 5.27 ##### Permissions Must have `manage_system` permission. 
    //
    //Future<MmPushNotification> upgradeToEnterprise() async
    test('test upgradeToEnterprise', () async {
      // TODO
    });

    // Get the current status for the inplace upgrade from Team Edition to Enterprise Edition
    //
    // It returns the percentage of completion of the current upgrade or the error if there is any. __Minimum server version__: 5.27 ##### Permissions Must have `manage_system` permission. 
    //
    //Future<MmUpgradeToEnterpriseStatus200Response> upgradeToEnterpriseStatus() async
    test('test upgradeToEnterpriseStatus', () async {
      // TODO
    });

    // Upload license file
    //
    // Upload a license to enable enterprise features.  __Minimum server version__: 4.0  ##### Permissions Must have `manage_system` permission. 
    //
    //Future<MmStatusOK> uploadLicenseFile(MultipartFile license) async
    test('test uploadLicenseFile', () async {
      // TODO
    });

  });
}
