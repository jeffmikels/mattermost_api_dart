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


/// tests for PreferencesApi
void main() {
  // final instance = PreferencesApi();

  group('tests for PreferencesApi', () {
    // Delete user's preferences
    //
    // Delete a list of the user's preferences. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 
    //
    //Future<StatusOK> deletePreferences(String userId, List<Preference> preference) async
    test('test deletePreferences', () async {
      // TODO
    });

    // Get the user's preferences
    //
    // Get a list of the user's preferences. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 
    //
    //Future<List<Preference>> getPreferences(String userId) async
    test('test getPreferences', () async {
      // TODO
    });

    // List a user's preferences by category
    //
    // Lists the current user's stored preferences in the given category. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 
    //
    //Future<List<Preference>> getPreferencesByCategory(String userId, String category) async
    test('test getPreferencesByCategory', () async {
      // TODO
    });

    // Get a specific user preference
    //
    // Gets a single preference for the current user with the given category and name. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 
    //
    //Future<Preference> getPreferencesByCategoryByName(String userId, String category, String preferenceName) async
    test('test getPreferencesByCategoryByName', () async {
      // TODO
    });

    // Save the user's preferences
    //
    // Save a list of the user's preferences. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 
    //
    //Future<StatusOK> updatePreferences(String userId, List<Preference> preference) async
    test('test updatePreferences', () async {
      // TODO
    });

  });
}
