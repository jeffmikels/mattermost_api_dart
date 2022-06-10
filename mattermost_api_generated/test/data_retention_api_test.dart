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


/// tests for DataRetentionApi
void main() {
  // final instance = DataRetentionApi();

  group('tests for DataRetentionApi', () {
    // Add channels to a granular data retention policy
    //
    // Adds channels to a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 
    //
    //Future<StatusOK> addChannelsToRetentionPolicy(String policyId, List<String> requestBody) async
    test('test addChannelsToRetentionPolicy', () async {
      // TODO
    });

    // Add teams to a granular data retention policy
    //
    // Adds teams to a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 
    //
    //Future<StatusOK> addTeamsToRetentionPolicy(String policyId, List<String> requestBody) async
    test('test addTeamsToRetentionPolicy', () async {
      // TODO
    });

    // Create a new granular data retention policy
    //
    // Creates a new granular data retention policy with the specified display name and post duration.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 
    //
    //Future<DataRetentionPolicyWithTeamAndChannelCounts> createDataRetentionPolicy(DataRetentionPolicyCreate dataRetentionPolicyCreate) async
    test('test createDataRetentionPolicy', () async {
      // TODO
    });

    // Delete a granular data retention policy
    //
    // Deletes a granular data retention policy.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 
    //
    //Future<StatusOK> deleteDataRetentionPolicy(String policyId) async
    test('test deleteDataRetentionPolicy', () async {
      // TODO
    });

    // Get the policies which are applied to a user's channels
    //
    // Gets the policies which are applied to the all of the channels to which a user belongs.  __Minimum server version__: 5.35  ##### Permissions Must be logged in as the user or have the `manage_system` permission.  ##### License Requires an E20 license. 
    //
    //Future<RetentionPolicyForChannelList> getChannelPoliciesForUser(String userId, { int page, int perPage }) async
    test('test getChannelPoliciesForUser', () async {
      // TODO
    });

    // Get the channels for a granular data retention policy
    //
    // Gets the channels to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 
    //
    //Future<List<ChannelWithTeamData>> getChannelsForRetentionPolicy(String policyId, { int page, int perPage }) async
    test('test getChannelsForRetentionPolicy', () async {
      // TODO
    });

    // Get the granular data retention policies
    //
    // Gets details about the granular (i.e. team or channel-specific) data retention policies from the server.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 
    //
    //Future<List<DataRetentionPolicyWithTeamAndChannelCounts>> getDataRetentionPolicies({ int page, int perPage }) async
    test('test getDataRetentionPolicies', () async {
      // TODO
    });

    // Get the number of granular data retention policies
    //
    // Gets the number of granular (i.e. team or channel-specific) data retention policies from the server.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 
    //
    //Future<GetDataRetentionPoliciesCount200Response> getDataRetentionPoliciesCount() async
    test('test getDataRetentionPoliciesCount', () async {
      // TODO
    });

    // Get the global data retention policy
    //
    // Gets the current global data retention policy details from the server, including what data should be purged and the cutoff times for each data type that should be purged.  __Minimum server version__: 4.3  ##### Permissions Requires an active session but no other permissions.  ##### License Requires an E20 license. 
    //
    //Future<GlobalDataRetentionPolicy> getDataRetentionPolicy() async
    test('test getDataRetentionPolicy', () async {
      // TODO
    });

    // Get a granular data retention policy
    //
    // Gets details about a granular data retention policies by ID.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 
    //
    //Future<DataRetentionPolicyWithTeamAndChannelCounts> getDataRetentionPolicyByID(String policyId) async
    test('test getDataRetentionPolicyByID', () async {
      // TODO
    });

    // Get the policies which are applied to a user's teams
    //
    // Gets the policies which are applied to the all of the teams to which a user belongs.  __Minimum server version__: 5.35  ##### Permissions Must be logged in as the user or have the `manage_system` permission.  ##### License Requires an E20 license. 
    //
    //Future<RetentionPolicyForTeamList> getTeamPoliciesForUser(String userId, { int page, int perPage }) async
    test('test getTeamPoliciesForUser', () async {
      // TODO
    });

    // Get the teams for a granular data retention policy
    //
    // Gets the teams to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 
    //
    //Future<List<Team>> getTeamsForRetentionPolicy(String policyId, { int page, int perPage }) async
    test('test getTeamsForRetentionPolicy', () async {
      // TODO
    });

    // Patch a granular data retention policy
    //
    // Patches (i.e. replaces the fields of) a granular data retention policy. If any fields are omitted, they will not be changed.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 
    //
    //Future<DataRetentionPolicyWithTeamAndChannelCounts> patchDataRetentionPolicy(String policyId, DataRetentionPolicyWithTeamAndChannelIds dataRetentionPolicyWithTeamAndChannelIds) async
    test('test patchDataRetentionPolicy', () async {
      // TODO
    });

    // Delete channels from a granular data retention policy
    //
    // Delete channels from a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 
    //
    //Future<StatusOK> removeChannelsFromRetentionPolicy(String policyId, List<String> requestBody) async
    test('test removeChannelsFromRetentionPolicy', () async {
      // TODO
    });

    // Delete teams from a granular data retention policy
    //
    // Delete teams from a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 
    //
    //Future<StatusOK> removeTeamsFromRetentionPolicy(String policyId, List<String> requestBody) async
    test('test removeTeamsFromRetentionPolicy', () async {
      // TODO
    });

    // Search for the channels in a granular data retention policy
    //
    // Searches for the channels to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 
    //
    //Future<List<ChannelWithTeamData>> searchChannelsForRetentionPolicy(String policyId, SearchChannelsForRetentionPolicyRequest searchChannelsForRetentionPolicyRequest) async
    test('test searchChannelsForRetentionPolicy', () async {
      // TODO
    });

    // Search for the teams in a granular data retention policy
    //
    // Searches for the teams to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 
    //
    //Future<List<Team>> searchTeamsForRetentionPolicy(String policyId, SearchTeamsForRetentionPolicyRequest searchTeamsForRetentionPolicyRequest) async
    test('test searchTeamsForRetentionPolicy', () async {
      // TODO
    });

  });
}
