# mattermost_api.api.MattermostPreferencesApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletePreferences**](MattermostPreferencesApi.md#deletepreferences) | **POST** /users/{user_id}/preferences/delete | Delete user's preferences
[**getPreferences**](MattermostPreferencesApi.md#getpreferences) | **GET** /users/{user_id}/preferences | Get the user's preferences
[**getPreferencesByCategory**](MattermostPreferencesApi.md#getpreferencesbycategory) | **GET** /users/{user_id}/preferences/{category} | List a user's preferences by category
[**getPreferencesByCategoryByName**](MattermostPreferencesApi.md#getpreferencesbycategorybyname) | **GET** /users/{user_id}/preferences/{category}/name/{preference_name} | Get a specific user preference
[**updatePreferences**](MattermostPreferencesApi.md#updatepreferences) | **PUT** /users/{user_id}/preferences | Save the user's preferences


# **deletePreferences**
> MmStatusOK deletePreferences(userId, mmPreference)

Delete user's preferences

Delete a list of the user's preferences. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String userId = 'userId_example'; // String | User GUID
final List&lt;MmPreference&gt; mmPreference = [List<MmPreference>()]; // List<MmPreference> | List of preference objects

try {
  final MmStatusOK? result = await client.preferences.deletePreferences(userId, mmPreference); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostPreferencesApi->deletePreferences: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mmPreference** | [**List<MmPreference>**](MmPreference.md)| List of preference objects | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getPreferences**
> List<MmPreference> getPreferences(userId)

Get the user's preferences

Get a list of the user's preferences. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String userId = 'userId_example'; // String | User GUID

try {
  final List&lt;MmPreference&gt;? result = await client.preferences.getPreferences(userId); // await the Future<List&lt;MmPreference&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostPreferencesApi->getPreferences: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**List<MmPreference>**](MmPreference.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getPreferencesByCategory**
> List<MmPreference> getPreferencesByCategory(userId, category)

List a user's preferences by category

Lists the current user's stored preferences in the given category. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String userId = 'userId_example'; // String | User GUID
final String category = 'category_example'; // String | The category of a group of preferences

try {
  final List&lt;MmPreference&gt;? result = await client.preferences.getPreferencesByCategory(userId, category); // await the Future<List&lt;MmPreference&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostPreferencesApi->getPreferencesByCategory: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **category** | **String**| The category of a group of preferences | 

### Return type

[**List<MmPreference>**](MmPreference.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getPreferencesByCategoryByName**
> MmPreference getPreferencesByCategoryByName(userId, category, preferenceName)

Get a specific user preference

Gets a single preference for the current user with the given category and name. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String userId = 'userId_example'; // String | User GUID
final String category = 'category_example'; // String | The category of a group of preferences
final String preferenceName = 'preferenceName_example'; // String | The name of the preference

try {
  final MmPreference? result = await client.preferences.getPreferencesByCategoryByName(userId, category, preferenceName); // await the Future<MmPreference?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostPreferencesApi->getPreferencesByCategoryByName: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **category** | **String**| The category of a group of preferences | 
 **preferenceName** | **String**| The name of the preference | 

### Return type

[**MmPreference**](MmPreference.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updatePreferences**
> MmStatusOK updatePreferences(userId, mmPreference)

Save the user's preferences

Save a list of the user's preferences. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String userId = 'userId_example'; // String | User GUID
final List&lt;MmPreference&gt; mmPreference = [List<MmPreference>()]; // List<MmPreference> | List of preference objects

try {
  final MmStatusOK? result = await client.preferences.updatePreferences(userId, mmPreference); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostPreferencesApi->updatePreferences: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **mmPreference** | [**List<MmPreference>**](MmPreference.md)| List of preference objects | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

