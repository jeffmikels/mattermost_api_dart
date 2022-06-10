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


/// tests for RolesApi
void main() {
  // final instance = RolesApi();

  group('tests for RolesApi', () {
    // Get a list of all the roles
    //
    // ##### Permissions  `manage_system` permission is required.  __Minimum server version__: 5.33 
    //
    //Future<List<Role>> getAllRoles() async
    test('test getAllRoles', () async {
      // TODO
    });

    // Get a role
    //
    // Get a role from the provided role id.  ##### Permissions Requires an active session but no other permissions.  __Minimum server version__: 4.9 
    //
    //Future<Role> getRole(String roleId) async
    test('test getRole', () async {
      // TODO
    });

    // Get a role
    //
    // Get a role from the provided role name.  ##### Permissions Requires an active session but no other permissions.  __Minimum server version__: 4.9 
    //
    //Future<Role> getRoleByName(String roleName) async
    test('test getRoleByName', () async {
      // TODO
    });

    // Get a list of roles by name
    //
    // Get a list of roles from their names.  ##### Permissions Requires an active session but no other permissions.  __Minimum server version__: 4.9 
    //
    //Future<List<Role>> getRolesByNames(List<String> requestBody) async
    test('test getRolesByNames', () async {
      // TODO
    });

    // Patch a role
    //
    // Partially update a role by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 4.9 
    //
    //Future<Role> patchRole(String roleId, PatchRoleRequest patchRoleRequest) async
    test('test patchRole', () async {
      // TODO
    });

  });
}
