# mattermost_api.api.MattermostDataRetentionApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addChannelsToRetentionPolicy**](MattermostDataRetentionApi.md#addchannelstoretentionpolicy) | **POST** /data_retention/policies/{policy_id}/channels | Add channels to a granular data retention policy
[**addTeamsToRetentionPolicy**](MattermostDataRetentionApi.md#addteamstoretentionpolicy) | **POST** /data_retention/policies/{policy_id}/teams | Add teams to a granular data retention policy
[**createDataRetentionPolicy**](MattermostDataRetentionApi.md#createdataretentionpolicy) | **POST** /data_retention/policies | Create a new granular data retention policy
[**deleteDataRetentionPolicy**](MattermostDataRetentionApi.md#deletedataretentionpolicy) | **DELETE** /data_retention/policies/{policy_id} | Delete a granular data retention policy
[**getChannelPoliciesForUser**](MattermostDataRetentionApi.md#getchannelpoliciesforuser) | **GET** /users/{user_id}/data_retention/channel_policies | Get the policies which are applied to a user's channels
[**getChannelsForRetentionPolicy**](MattermostDataRetentionApi.md#getchannelsforretentionpolicy) | **GET** /data_retention/policies/{policy_id}/channels | Get the channels for a granular data retention policy
[**getDataRetentionPolicies**](MattermostDataRetentionApi.md#getdataretentionpolicies) | **GET** /data_retention/policies | Get the granular data retention policies
[**getDataRetentionPoliciesCount**](MattermostDataRetentionApi.md#getdataretentionpoliciescount) | **GET** /data_retention/policies_count | Get the number of granular data retention policies
[**getDataRetentionPolicy**](MattermostDataRetentionApi.md#getdataretentionpolicy) | **GET** /data_retention/policy | Get the global data retention policy
[**getDataRetentionPolicyByID**](MattermostDataRetentionApi.md#getdataretentionpolicybyid) | **GET** /data_retention/policies/{policy_id} | Get a granular data retention policy
[**getTeamPoliciesForUser**](MattermostDataRetentionApi.md#getteampoliciesforuser) | **GET** /users/{user_id}/data_retention/team_policies | Get the policies which are applied to a user's teams
[**getTeamsForRetentionPolicy**](MattermostDataRetentionApi.md#getteamsforretentionpolicy) | **GET** /data_retention/policies/{policy_id}/teams | Get the teams for a granular data retention policy
[**patchDataRetentionPolicy**](MattermostDataRetentionApi.md#patchdataretentionpolicy) | **PATCH** /data_retention/policies/{policy_id} | Patch a granular data retention policy
[**removeChannelsFromRetentionPolicy**](MattermostDataRetentionApi.md#removechannelsfromretentionpolicy) | **DELETE** /data_retention/policies/{policy_id}/channels | Delete channels from a granular data retention policy
[**removeTeamsFromRetentionPolicy**](MattermostDataRetentionApi.md#removeteamsfromretentionpolicy) | **DELETE** /data_retention/policies/{policy_id}/teams | Delete teams from a granular data retention policy
[**searchChannelsForRetentionPolicy**](MattermostDataRetentionApi.md#searchchannelsforretentionpolicy) | **POST** /data_retention/policies/{policy_id}/channels/search | Search for the channels in a granular data retention policy
[**searchTeamsForRetentionPolicy**](MattermostDataRetentionApi.md#searchteamsforretentionpolicy) | **POST** /data_retention/policies/{policy_id}/teams/search | Search for the teams in a granular data retention policy


# **addChannelsToRetentionPolicy**
> MattermostStatusOK addChannelsToRetentionPolicy(policyId, requestBody)

Add channels to a granular data retention policy

Adds channels to a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostDataRetentionApi();
final policyId = policyId_example; // String | The ID of the granular retention policy.
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.addChannelsToRetentionPolicy(policyId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MattermostDataRetentionApi->addChannelsToRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addTeamsToRetentionPolicy**
> MattermostStatusOK addTeamsToRetentionPolicy(policyId, requestBody)

Add teams to a granular data retention policy

Adds teams to a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostDataRetentionApi();
final policyId = policyId_example; // String | The ID of the granular retention policy.
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.addTeamsToRetentionPolicy(policyId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MattermostDataRetentionApi->addTeamsToRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDataRetentionPolicy**
> MattermostDataRetentionPolicyWithTeamAndChannelCounts createDataRetentionPolicy(mattermostDataRetentionPolicyCreate)

Create a new granular data retention policy

Creates a new granular data retention policy with the specified display name and post duration.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostDataRetentionApi();
final mattermostDataRetentionPolicyCreate = MattermostDataRetentionPolicyCreate(); // MattermostDataRetentionPolicyCreate | 

try {
    final result = api_instance.createDataRetentionPolicy(mattermostDataRetentionPolicyCreate);
    print(result);
} catch (e) {
    print('Exception when calling MattermostDataRetentionApi->createDataRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostDataRetentionPolicyCreate** | [**MattermostDataRetentionPolicyCreate**](MattermostDataRetentionPolicyCreate.md)|  | 

### Return type

[**MattermostDataRetentionPolicyWithTeamAndChannelCounts**](MattermostDataRetentionPolicyWithTeamAndChannelCounts.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDataRetentionPolicy**
> MattermostStatusOK deleteDataRetentionPolicy(policyId)

Delete a granular data retention policy

Deletes a granular data retention policy.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostDataRetentionApi();
final policyId = policyId_example; // String | The ID of the granular retention policy.

try {
    final result = api_instance.deleteDataRetentionPolicy(policyId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostDataRetentionApi->deleteDataRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelPoliciesForUser**
> MattermostRetentionPolicyForChannelList getChannelPoliciesForUser(userId, page, perPage)

Get the policies which are applied to a user's channels

Gets the policies which are applied to the all of the channels to which a user belongs.  __Minimum server version__: 5.35  ##### Permissions Must be logged in as the user or have the `manage_system` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostDataRetentionApi();
final userId = userId_example; // String | The ID of the user. This can also be \"me\" which will point to the current user.
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of policies per page. There is a maximum limit of 200 per page.

try {
    final result = api_instance.getChannelPoliciesForUser(userId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostDataRetentionApi->getChannelPoliciesForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The ID of the user. This can also be \"me\" which will point to the current user. | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of policies per page. There is a maximum limit of 200 per page. | [optional] [default to 60]

### Return type

[**MattermostRetentionPolicyForChannelList**](MattermostRetentionPolicyForChannelList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelsForRetentionPolicy**
> List<MattermostChannelWithTeamData> getChannelsForRetentionPolicy(policyId, page, perPage)

Get the channels for a granular data retention policy

Gets the channels to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostDataRetentionApi();
final policyId = policyId_example; // String | The ID of the granular retention policy.
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of channels per page. There is a maximum limit of 200 per page.

try {
    final result = api_instance.getChannelsForRetentionPolicy(policyId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostDataRetentionApi->getChannelsForRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of channels per page. There is a maximum limit of 200 per page. | [optional] [default to 60]

### Return type

[**List<MattermostChannelWithTeamData>**](MattermostChannelWithTeamData.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDataRetentionPolicies**
> List<MattermostDataRetentionPolicyWithTeamAndChannelCounts> getDataRetentionPolicies(page, perPage)

Get the granular data retention policies

Gets details about the granular (i.e. team or channel-specific) data retention policies from the server.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostDataRetentionApi();
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of policies per page. There is a maximum limit of 200 per page.

try {
    final result = api_instance.getDataRetentionPolicies(page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostDataRetentionApi->getDataRetentionPolicies: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of policies per page. There is a maximum limit of 200 per page. | [optional] [default to 60]

### Return type

[**List<MattermostDataRetentionPolicyWithTeamAndChannelCounts>**](MattermostDataRetentionPolicyWithTeamAndChannelCounts.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDataRetentionPoliciesCount**
> MattermostGetDataRetentionPoliciesCount200Response getDataRetentionPoliciesCount()

Get the number of granular data retention policies

Gets the number of granular (i.e. team or channel-specific) data retention policies from the server.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostDataRetentionApi();

try {
    final result = api_instance.getDataRetentionPoliciesCount();
    print(result);
} catch (e) {
    print('Exception when calling MattermostDataRetentionApi->getDataRetentionPoliciesCount: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostGetDataRetentionPoliciesCount200Response**](MattermostGetDataRetentionPoliciesCount200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDataRetentionPolicy**
> MattermostGlobalDataRetentionPolicy getDataRetentionPolicy()

Get the global data retention policy

Gets the current global data retention policy details from the server, including what data should be purged and the cutoff times for each data type that should be purged.  __Minimum server version__: 4.3  ##### Permissions Requires an active session but no other permissions.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostDataRetentionApi();

try {
    final result = api_instance.getDataRetentionPolicy();
    print(result);
} catch (e) {
    print('Exception when calling MattermostDataRetentionApi->getDataRetentionPolicy: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostGlobalDataRetentionPolicy**](MattermostGlobalDataRetentionPolicy.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDataRetentionPolicyByID**
> MattermostDataRetentionPolicyWithTeamAndChannelCounts getDataRetentionPolicyByID(policyId)

Get a granular data retention policy

Gets details about a granular data retention policies by ID.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostDataRetentionApi();
final policyId = policyId_example; // String | The ID of the granular retention policy.

try {
    final result = api_instance.getDataRetentionPolicyByID(policyId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostDataRetentionApi->getDataRetentionPolicyByID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 

### Return type

[**MattermostDataRetentionPolicyWithTeamAndChannelCounts**](MattermostDataRetentionPolicyWithTeamAndChannelCounts.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTeamPoliciesForUser**
> MattermostRetentionPolicyForTeamList getTeamPoliciesForUser(userId, page, perPage)

Get the policies which are applied to a user's teams

Gets the policies which are applied to the all of the teams to which a user belongs.  __Minimum server version__: 5.35  ##### Permissions Must be logged in as the user or have the `manage_system` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostDataRetentionApi();
final userId = userId_example; // String | The ID of the user. This can also be \"me\" which will point to the current user.
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of policies per page. There is a maximum limit of 200 per page.

try {
    final result = api_instance.getTeamPoliciesForUser(userId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostDataRetentionApi->getTeamPoliciesForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The ID of the user. This can also be \"me\" which will point to the current user. | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of policies per page. There is a maximum limit of 200 per page. | [optional] [default to 60]

### Return type

[**MattermostRetentionPolicyForTeamList**](MattermostRetentionPolicyForTeamList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTeamsForRetentionPolicy**
> List<MattermostTeam> getTeamsForRetentionPolicy(policyId, page, perPage)

Get the teams for a granular data retention policy

Gets the teams to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostDataRetentionApi();
final policyId = policyId_example; // String | The ID of the granular retention policy.
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of teams per page. There is a maximum limit of 200 per page.

try {
    final result = api_instance.getTeamsForRetentionPolicy(policyId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostDataRetentionApi->getTeamsForRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of teams per page. There is a maximum limit of 200 per page. | [optional] [default to 60]

### Return type

[**List<MattermostTeam>**](MattermostTeam.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchDataRetentionPolicy**
> MattermostDataRetentionPolicyWithTeamAndChannelCounts patchDataRetentionPolicy(policyId, mattermostDataRetentionPolicyWithTeamAndChannelIds)

Patch a granular data retention policy

Patches (i.e. replaces the fields of) a granular data retention policy. If any fields are omitted, they will not be changed.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostDataRetentionApi();
final policyId = policyId_example; // String | The ID of the granular retention policy.
final mattermostDataRetentionPolicyWithTeamAndChannelIds = MattermostDataRetentionPolicyWithTeamAndChannelIds(); // MattermostDataRetentionPolicyWithTeamAndChannelIds | 

try {
    final result = api_instance.patchDataRetentionPolicy(policyId, mattermostDataRetentionPolicyWithTeamAndChannelIds);
    print(result);
} catch (e) {
    print('Exception when calling MattermostDataRetentionApi->patchDataRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **mattermostDataRetentionPolicyWithTeamAndChannelIds** | [**MattermostDataRetentionPolicyWithTeamAndChannelIds**](MattermostDataRetentionPolicyWithTeamAndChannelIds.md)|  | 

### Return type

[**MattermostDataRetentionPolicyWithTeamAndChannelCounts**](MattermostDataRetentionPolicyWithTeamAndChannelCounts.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeChannelsFromRetentionPolicy**
> MattermostStatusOK removeChannelsFromRetentionPolicy(policyId, requestBody)

Delete channels from a granular data retention policy

Delete channels from a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostDataRetentionApi();
final policyId = policyId_example; // String | The ID of the granular retention policy.
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.removeChannelsFromRetentionPolicy(policyId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MattermostDataRetentionApi->removeChannelsFromRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeTeamsFromRetentionPolicy**
> MattermostStatusOK removeTeamsFromRetentionPolicy(policyId, requestBody)

Delete teams from a granular data retention policy

Delete teams from a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostDataRetentionApi();
final policyId = policyId_example; // String | The ID of the granular retention policy.
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.removeTeamsFromRetentionPolicy(policyId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MattermostDataRetentionApi->removeTeamsFromRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchChannelsForRetentionPolicy**
> List<MattermostChannelWithTeamData> searchChannelsForRetentionPolicy(policyId, mattermostSearchChannelsForRetentionPolicyRequest)

Search for the channels in a granular data retention policy

Searches for the channels to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostDataRetentionApi();
final policyId = policyId_example; // String | The ID of the granular retention policy.
final mattermostSearchChannelsForRetentionPolicyRequest = MattermostSearchChannelsForRetentionPolicyRequest(); // MattermostSearchChannelsForRetentionPolicyRequest | 

try {
    final result = api_instance.searchChannelsForRetentionPolicy(policyId, mattermostSearchChannelsForRetentionPolicyRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostDataRetentionApi->searchChannelsForRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **mattermostSearchChannelsForRetentionPolicyRequest** | [**MattermostSearchChannelsForRetentionPolicyRequest**](MattermostSearchChannelsForRetentionPolicyRequest.md)|  | 

### Return type

[**List<MattermostChannelWithTeamData>**](MattermostChannelWithTeamData.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchTeamsForRetentionPolicy**
> List<MattermostTeam> searchTeamsForRetentionPolicy(policyId, mattermostSearchTeamsForRetentionPolicyRequest)

Search for the teams in a granular data retention policy

Searches for the teams to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostDataRetentionApi();
final policyId = policyId_example; // String | The ID of the granular retention policy.
final mattermostSearchTeamsForRetentionPolicyRequest = MattermostSearchTeamsForRetentionPolicyRequest(); // MattermostSearchTeamsForRetentionPolicyRequest | 

try {
    final result = api_instance.searchTeamsForRetentionPolicy(policyId, mattermostSearchTeamsForRetentionPolicyRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostDataRetentionApi->searchTeamsForRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **mattermostSearchTeamsForRetentionPolicyRequest** | [**MattermostSearchTeamsForRetentionPolicyRequest**](MattermostSearchTeamsForRetentionPolicyRequest.md)|  | 

### Return type

[**List<MattermostTeam>**](MattermostTeam.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

