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


/// tests for MattermostElasticsearchApi
void main() {
  // final instance = MattermostElasticsearchApi();

  group('tests for MattermostElasticsearchApi', () {
    // Purge all Elasticsearch indexes
    //
    // Deletes all Elasticsearch indexes and their contents. After calling this endpoint, it is necessary to schedule a new Elasticsearch indexing job to repopulate the indexes. __Minimum server version__: 4.1 ##### Permissions Must have `manage_system` permission. 
    //
    //Future<MMStatusOK> purgeElasticsearchIndexes() async
    test('test purgeElasticsearchIndexes', () async {
      // TODO
    });

    // Test Elasticsearch configuration
    //
    // Test the current Elasticsearch configuration to see if the Elasticsearch server can be contacted successfully. Optionally provide a configuration in the request body to test. If no valid configuration is present in the request body the current server configuration will be tested.  __Minimum server version__: 4.1 ##### Permissions Must have `manage_system` permission. 
    //
    //Future<MMStatusOK> testElasticsearch() async
    test('test testElasticsearch', () async {
      // TODO
    });

  });
}
