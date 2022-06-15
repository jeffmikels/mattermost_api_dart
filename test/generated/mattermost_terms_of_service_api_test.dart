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


/// tests for MattermostTermsOfServiceApi
void main() {
  // final instance = MattermostTermsOfServiceApi();

  group('tests for MattermostTermsOfServiceApi', () {
    // Creates a new terms of service
    //
    // Creates new terms of service  __Minimum server version__: 5.4 ##### Permissions Must have `manage_system` permission. 
    //
    //Future<MmTermsOfService> createTermsOfService() async
    test('test createTermsOfService', () async {
      // TODO
    });

    // Get latest terms of service
    //
    // Get latest terms of service from the server  __Minimum server version__: 5.4 ##### Permissions Must be authenticated. 
    //
    //Future<MmTermsOfService> getTermsOfService() async
    test('test getTermsOfService', () async {
      // TODO
    });

    // Fetches user's latest terms of service action if the latest action was for acceptance.
    //
    // Will be deprecated in v6.0 Fetches user's latest terms of service action if the latest action was for acceptance.  __Minimum server version__: 5.6 ##### Permissions Must be logged in as the user being acted on. 
    //
    //Future<MmUserTermsOfService> getUserTermsOfService(String userId) async
    test('test getUserTermsOfService', () async {
      // TODO
    });

    // Records user action when they accept or decline custom terms of service
    //
    // Records user action when they accept or decline custom terms of service. Records the action in audit table. Updates user's last accepted terms of service ID if they accepted it.  __Minimum server version__: 5.4 ##### Permissions Must be logged in as the user being acted on. 
    //
    //Future<MmStatusOK> registerTermsOfServiceAction(String userId, MmRegisterTermsOfServiceActionRequest mmRegisterTermsOfServiceActionRequest) async
    test('test registerTermsOfServiceAction', () async {
      // TODO
    });

  });
}
