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


/// tests for OAuthApi
void main() {
  // final instance = OAuthApi();

  group('tests for OAuthApi', () {
    // Register OAuth app
    //
    // Register an OAuth 2.0 client application with Mattermost as the service provider. ##### Permissions Must have `manage_oauth` permission. 
    //
    //Future<OAuthApp> createOAuthApp(CreateOAuthAppRequest createOAuthAppRequest) async
    test('test createOAuthApp', () async {
      // TODO
    });

    // Delete an OAuth app
    //
    // Delete and unregister an OAuth 2.0 client application  ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required. 
    //
    //Future<StatusOK> deleteOAuthApp(String appId) async
    test('test deleteOAuthApp', () async {
      // TODO
    });

    // Get authorized OAuth apps
    //
    // Get a page of OAuth 2.0 client applications authorized to access a user's account. ##### Permissions Must be authenticated as the user or have `edit_other_users` permission. 
    //
    //Future<List<OAuthApp>> getAuthorizedOAuthAppsForUser(String userId, { int page, int perPage }) async
    test('test getAuthorizedOAuthAppsForUser', () async {
      // TODO
    });

    // Get an OAuth app
    //
    // Get an OAuth 2.0 client application registered with Mattermost. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required. 
    //
    //Future<OAuthApp> getOAuthApp(String appId) async
    test('test getOAuthApp', () async {
      // TODO
    });

    // Get info on an OAuth app
    //
    // Get public information about an OAuth 2.0 client application registered with Mattermost. The application's client secret will be blanked out. ##### Permissions Must be authenticated. 
    //
    //Future<OAuthApp> getOAuthAppInfo(String appId) async
    test('test getOAuthAppInfo', () async {
      // TODO
    });

    // Get OAuth apps
    //
    // Get a page of OAuth 2.0 client applications registered with Mattermost. ##### Permissions With `manage_oauth` permission, the apps registered by the logged in user are returned. With `manage_system_wide_oauth` permission, all apps regardless of creator are returned. 
    //
    //Future<List<OAuthApp>> getOAuthApps({ int page, int perPage }) async
    test('test getOAuthApps', () async {
      // TODO
    });

    // Regenerate OAuth app secret
    //
    // Regenerate the client secret for an OAuth 2.0 client application registered with Mattermost. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required. 
    //
    //Future<OAuthApp> regenerateOAuthAppSecret(String appId) async
    test('test regenerateOAuthAppSecret', () async {
      // TODO
    });

    // Update an OAuth app
    //
    // Update an OAuth 2.0 client application based on OAuth struct. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required. 
    //
    //Future<OAuthApp> updateOAuthApp(String appId, UpdateOAuthAppRequest updateOAuthAppRequest) async
    test('test updateOAuthApp', () async {
      // TODO
    });

  });
}
