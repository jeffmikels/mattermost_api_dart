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

// tests for MmSearchTeamsRequest
void main() {
  // final instance = MmSearchTeamsRequest();

  group('test MmSearchTeamsRequest', () {
    // The search term to match against the name or display name of teams
    // String term
    test('to test the property `term`', () async {
      // TODO
    });

    // The page number to return, if paginated. If this parameter is not present with the `per_page` parameter then the results will be returned un-paged.
    // String page
    test('to test the property `page`', () async {
      // TODO
    });

    // The number of entries to return per page, if paginated. If this parameter is not present with the `page` parameter then the results will be returned un-paged.
    // String perPage
    test('to test the property `perPage`', () async {
      // TODO
    });

    // Filters results to teams where `allow_open_invite` is set to true or false, excludes group constrained channels if this filter option is passed. If this filter option is not passed then the query will remain unchanged. __Minimum server version__: 5.28 
    // bool allowOpenInvite
    test('to test the property `allowOpenInvite`', () async {
      // TODO
    });

    // Filters results to teams where `group_constrained` is set to true or false, returns the union of results when used with `allow_open_invite` If the filter option is not passed then the query will remain unchanged. __Minimum server version__: 5.28 
    // bool groupConstrained
    test('to test the property `groupConstrained`', () async {
      // TODO
    });

    // If set to true, only teams which do not have a granular retention policy assigned to them will be returned. The `sysconsole_read_compliance_data_retention` permission is required to use this parameter. __Minimum server version__: 5.35 
    // bool excludePolicyConstrained (default value: false)
    test('to test the property `excludePolicyConstrained`', () async {
      // TODO
    });


  });

}
