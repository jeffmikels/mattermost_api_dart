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

// tests for MmSearchPostsRequest
void main() {
  // final instance = MmSearchPostsRequest();

  group('test MmSearchPostsRequest', () {
    // The search terms as inputed by the user. To search for posts from a user include `from:someusername`, using a user's username. To search in a specific channel include `in:somechannel`, using the channel name (not the display name).
    // String terms
    test('to test the property `terms`', () async {
      // TODO
    });

    // Set to true if an Or search should be performed vs an And search.
    // bool isOrSearch
    test('to test the property `isOrSearch`', () async {
      // TODO
    });

    // Offset from UTC of user timezone for date searches.
    // int timeZoneOffset (default value: 0)
    test('to test the property `timeZoneOffset`', () async {
      // TODO
    });

    // Set to true if deleted channels should be included in the search. (archived channels)
    // bool includeDeletedChannels
    test('to test the property `includeDeletedChannels`', () async {
      // TODO
    });

    // The page to select. (Only works with Elasticsearch)
    // int page (default value: 0)
    test('to test the property `page`', () async {
      // TODO
    });

    // The number of posts per page. (Only works with Elasticsearch)
    // int perPage (default value: 60)
    test('to test the property `perPage`', () async {
      // TODO
    });


  });

}
