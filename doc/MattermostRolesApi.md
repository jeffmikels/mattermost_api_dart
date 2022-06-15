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

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostRolesApi api instance
// final MattermostRolesApi api_instance = client.roles


try {
    final result = await client.roles.getAllRoles();
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

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getRole**
> MattermostRole getRole(roleId)

Get a role

Get a role from the provided role id.  ##### Permissions Requires an active session but no other permissions.  __Minimum server version__: 4.9 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostRolesApi api instance
// final MattermostRolesApi api_instance = client.roles

final roleId = roleId_example; // String | Role GUID

try {
    final result = await client.roles.getRole(roleId);
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

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getRoleByName**
> MattermostRole getRoleByName(roleName)

Get a role

Get a role from the provided role name.  ##### Permissions Requires an active session but no other permissions.  __Minimum server version__: 4.9 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostRolesApi api instance
// final MattermostRolesApi api_instance = client.roles

final roleName = roleName_example; // String | Role Name

try {
    final result = await client.roles.getRoleByName(roleName);
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

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getRolesByNames**
> List<MattermostRole> getRolesByNames(requestBody)

Get a list of roles by name

Get a list of roles from their names.  ##### Permissions Requires an active session but no other permissions.  __Minimum server version__: 4.9 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostRolesApi api instance
// final MattermostRolesApi api_instance = client.roles

final requestBody = [List<String>()]; // List<String> | List of role names

try {
    final result = await client.roles.getRolesByNames(requestBody);
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

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **patchRole**
> MattermostRole patchRole(roleId, mattermostPatchRoleRequest)

Patch a role

Partially update a role by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 4.9 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostRolesApi api instance
// final MattermostRolesApi api_instance = client.roles

final roleId = roleId_example; // String | Role GUID
final mattermostPatchRoleRequest = MattermostPatchRoleRequest(); // MattermostPatchRoleRequest | Role object to be updated

try {
    final result = await client.roles.patchRole(roleId, mattermostPatchRoleRequest);
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

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

