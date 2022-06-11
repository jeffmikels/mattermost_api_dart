# mattermost_api.api.MattermostLdapApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLdapGroups**](MattermostLdapApi.md#getldapgroups) | **GET** /ldap/groups | Returns a list of LDAP groups
[**linkLdapGroup**](MattermostLdapApi.md#linkldapgroup) | **POST** /ldap/groups/{remote_id}/link | Link a LDAP group


# **getLdapGroups**
> List<MattermostLDAPGroupsPaged> getLdapGroups(q, page, perPage)

Returns a list of LDAP groups

##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostLdapApi();
final q = q_example; // String | Search term
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of users per page. There is a maximum limit of 200 users per page.

try {
    final result = api_instance.getLdapGroups(q, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostLdapApi->getLdapGroups: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Search term | [optional] 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of users per page. There is a maximum limit of 200 users per page. | [optional] [default to 60]

### Return type

[**List<MattermostLDAPGroupsPaged>**](MattermostLDAPGroupsPaged.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkLdapGroup**
> MattermostStatusOK linkLdapGroup(remoteId)

Link a LDAP group

##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.11 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostLdapApi();
final remoteId = remoteId_example; // String | Group GUID

try {
    final result = api_instance.linkLdapGroup(remoteId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostLdapApi->linkLdapGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **remoteId** | **String**| Group GUID | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

