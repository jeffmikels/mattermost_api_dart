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

// tests for CreateOutgoingWebhookRequest
void main() {
  // final instance = CreateOutgoingWebhookRequest();

  group('test CreateOutgoingWebhookRequest', () {
    // The ID of the team that the webhook watchs
    // String teamId
    test('to test the property `teamId`', () async {
      // TODO
    });

    // The ID of a public channel that the webhook watchs
    // String channelId
    test('to test the property `channelId`', () async {
      // TODO
    });

    // The ID of the owner of the webhook if different than the requester. Required in [local mode](https://docs.mattermost.com/administration/mmctl-cli-tool.html#local-mode).
    // String creatorId
    test('to test the property `creatorId`', () async {
      // TODO
    });

    // The description for this outgoing webhook
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // The display name for this outgoing webhook
    // String displayName
    test('to test the property `displayName`', () async {
      // TODO
    });

    // List of words for the webhook to trigger on
    // List<String> triggerWords (default value: const [])
    test('to test the property `triggerWords`', () async {
      // TODO
    });

    // When to trigger the webhook, `0` when a trigger word is present at all and `1` if the message starts with a trigger word
    // int triggerWhen
    test('to test the property `triggerWhen`', () async {
      // TODO
    });

    // The URLs to POST the payloads to when the webhook is triggered
    // List<String> callbackUrls (default value: const [])
    test('to test the property `callbackUrls`', () async {
      // TODO
    });

    // The format to POST the data in, either `application/json` or `application/x-www-form-urlencoded`
    // String contentType (default value: 'application/x-www-form-urlencoded')
    test('to test the property `contentType`', () async {
      // TODO
    });


  });

}
