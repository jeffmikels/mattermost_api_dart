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


/// tests for SchemesApi
void main() {
  // final instance = SchemesApi();

  group('tests for SchemesApi', () {
    // Create a scheme
    //
    // Create a new scheme.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 
    //
    //Future<Scheme> createScheme(CreateSchemeRequest createSchemeRequest) async
    test('test createScheme', () async {
      // TODO
    });

    // Delete a scheme
    //
    // Soft deletes a scheme, by marking the scheme as deleted in the database.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 
    //
    //Future<StatusOK> deleteScheme(String schemeId) async
    test('test deleteScheme', () async {
      // TODO
    });

    // Get a page of channels which use this scheme.
    //
    // Get a page of channels which use this scheme. The provided Scheme ID should be for a Channel-scoped Scheme. Use the query parameters to modify the behaviour of this endpoint.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 5.0 
    //
    //Future<List<Channel>> getChannelsForScheme(String schemeId, { int page, int perPage }) async
    test('test getChannelsForScheme', () async {
      // TODO
    });

    // Get a scheme
    //
    // Get a scheme from the provided scheme id.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 
    //
    //Future<Scheme> getScheme(String schemeId) async
    test('test getScheme', () async {
      // TODO
    });

    // Get the schemes.
    //
    // Get a page of schemes. Use the query parameters to modify the behaviour of this endpoint.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 
    //
    //Future<List<Scheme>> getSchemes({ String scope, int page, int perPage }) async
    test('test getSchemes', () async {
      // TODO
    });

    // Get a page of teams which use this scheme.
    //
    // Get a page of teams which use this scheme. The provided Scheme ID should be for a Team-scoped Scheme. Use the query parameters to modify the behaviour of this endpoint.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 5.0 
    //
    //Future<List<Team>> getTeamsForScheme(String schemeId, { int page, int perPage }) async
    test('test getTeamsForScheme', () async {
      // TODO
    });

    // Patch a scheme
    //
    // Partially update a scheme by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 5.0 
    //
    //Future<Scheme> patchScheme(String schemeId, PatchSchemeRequest patchSchemeRequest) async
    test('test patchScheme', () async {
      // TODO
    });

  });
}
