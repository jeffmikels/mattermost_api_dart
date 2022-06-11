# mattermost_api.api.MattermostRolesApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllRoles**](MattermostRolesApi.md#getallroles) | **GET** /roles | Get a list of all the roles
[**getRole**](MattermostRolesApi.md#getrole) | **GET** /roles/{role_id} | Get a role
[**getRoleByName**](MattermostRolesApi.md#getrolebyname) | **GET** /roles/name/{role_name} | Get a role
[**getRolesByNames**](MattermostRolesApi.md#getrolesbynames) | **POST** /roles/names | Get a list of roles by name
[**patchRole**](MattermostRolesApi.md#patchrole) | **PUT** /roles/{role_id}/patch | Patch a role


# **getAllRoles**
> List<MattermostRole> getAllRoles()

Get a list of all the roles

##### Permissions  `manage_system` permission is required.  __Minimum server version__: 5.33 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostRolesApi();

try {
    final result = api_instance.getAllRoles();
    print(result);
} catch (e) {
    print('Exception when calling MattermostRolesApi->getAllRoles: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<MattermostRole>**](MattermostRole.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRole**
> MattermostRole getRole(roleId)

Get a role

Get a role from the provided role id.  ##### Permissions Requires an active session but no other permissions.  __Minimum server version__: 4.9 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostRolesApi();
final roleId = roleId_example; // String | Role GUID

try {
    final result = api_instance.getRole(roleId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostRolesApi->getRole: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roleId** | **String**| Role GUID | 

### Return type

[**MattermostRole**](MattermostRole.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRoleByName**
> MattermostRole getRoleByName(roleName)

Get a role

Get a role from the provided role name.  ##### Permissions Requires an active session but no other permissions.  __Minimum server version__: 4.9 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostRolesApi();
final roleName = roleName_example; // String | Role Name

try {
    final result = api_instance.getRoleByName(roleName);
    print(result);
} catch (e) {
    print('Exception when calling MattermostRolesApi->getRoleByName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roleName** | **String**| Role Name | 

### Return type

[**MattermostRole**](MattermostRole.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRolesByNames**
> List<MattermostRole> getRolesByNames(requestBody)

Get a list of roles by name

Get a list of roles from their names.  ##### Permissions Requires an active session but no other permissions.  __Minimum server version__: 4.9 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostRolesApi();
final requestBody = [List<String>()]; // List<String> | List of role names

try {
    final result = api_instance.getRolesByNames(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MattermostRolesApi->getRolesByNames: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List<String>**](String.md)| List of role names | 

### Return type

[**List<MattermostRole>**](MattermostRole.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchRole**
> MattermostRole patchRole(roleId, mattermostPatchRoleRequest)

Patch a role

Partially update a role by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 4.9 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostRolesApi();
final roleId = roleId_example; // String | Role GUID
final mattermostPatchRoleRequest = MattermostPatchRoleRequest(); // MattermostPatchRoleRequest | Role object to be updated

try {
    final result = api_instance.patchRole(roleId, mattermostPatchRoleRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostRolesApi->patchRole: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roleId** | **String**| Role GUID | 
 **mattermostPatchRoleRequest** | [**MattermostPatchRoleRequest**](MattermostPatchRoleRequest.md)| Role object to be updated | 

### Return type

[**MattermostRole**](MattermostRole.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

