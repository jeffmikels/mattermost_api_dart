# mattermost_api.api.DataRetentionApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addChannelsToRetentionPolicy**](DataRetentionApi.md#addchannelstoretentionpolicy) | **POST** /data_retention/policies/{policy_id}/channels | Add channels to a granular data retention policy
[**addTeamsToRetentionPolicy**](DataRetentionApi.md#addteamstoretentionpolicy) | **POST** /data_retention/policies/{policy_id}/teams | Add teams to a granular data retention policy
[**createDataRetentionPolicy**](DataRetentionApi.md#createdataretentionpolicy) | **POST** /data_retention/policies | Create a new granular data retention policy
[**deleteDataRetentionPolicy**](DataRetentionApi.md#deletedataretentionpolicy) | **DELETE** /data_retention/policies/{policy_id} | Delete a granular data retention policy
[**getChannelPoliciesForUser**](DataRetentionApi.md#getchannelpoliciesforuser) | **GET** /users/{user_id}/data_retention/channel_policies | Get the policies which are applied to a user's channels
[**getChannelsForRetentionPolicy**](DataRetentionApi.md#getchannelsforretentionpolicy) | **GET** /data_retention/policies/{policy_id}/channels | Get the channels for a granular data retention policy
[**getDataRetentionPolicies**](DataRetentionApi.md#getdataretentionpolicies) | **GET** /data_retention/policies | Get the granular data retention policies
[**getDataRetentionPoliciesCount**](DataRetentionApi.md#getdataretentionpoliciescount) | **GET** /data_retention/policies_count | Get the number of granular data retention policies
[**getDataRetentionPolicy**](DataRetentionApi.md#getdataretentionpolicy) | **GET** /data_retention/policy | Get the global data retention policy
[**getDataRetentionPolicyByID**](DataRetentionApi.md#getdataretentionpolicybyid) | **GET** /data_retention/policies/{policy_id} | Get a granular data retention policy
[**getTeamPoliciesForUser**](DataRetentionApi.md#getteampoliciesforuser) | **GET** /users/{user_id}/data_retention/team_policies | Get the policies which are applied to a user's teams
[**getTeamsForRetentionPolicy**](DataRetentionApi.md#getteamsforretentionpolicy) | **GET** /data_retention/policies/{policy_id}/teams | Get the teams for a granular data retention policy
[**patchDataRetentionPolicy**](DataRetentionApi.md#patchdataretentionpolicy) | **PATCH** /data_retention/policies/{policy_id} | Patch a granular data retention policy
[**removeChannelsFromRetentionPolicy**](DataRetentionApi.md#removechannelsfromretentionpolicy) | **DELETE** /data_retention/policies/{policy_id}/channels | Delete channels from a granular data retention policy
[**removeTeamsFromRetentionPolicy**](DataRetentionApi.md#removeteamsfromretentionpolicy) | **DELETE** /data_retention/policies/{policy_id}/teams | Delete teams from a granular data retention policy
[**searchChannelsForRetentionPolicy**](DataRetentionApi.md#searchchannelsforretentionpolicy) | **POST** /data_retention/policies/{policy_id}/channels/search | Search for the channels in a granular data retention policy
[**searchTeamsForRetentionPolicy**](DataRetentionApi.md#searchteamsforretentionpolicy) | **POST** /data_retention/policies/{policy_id}/teams/search | Search for the teams in a granular data retention policy


# **addChannelsToRetentionPolicy**
> StatusOK addChannelsToRetentionPolicy(policyId, requestBody)

Add channels to a granular data retention policy

Adds channels to a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DataRetentionApi();
final policyId = policyId_example; // String | The ID of the granular retention policy.
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.addChannelsToRetentionPolicy(policyId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling DataRetentionApi->addChannelsToRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addTeamsToRetentionPolicy**
> StatusOK addTeamsToRetentionPolicy(policyId, requestBody)

Add teams to a granular data retention policy

Adds teams to a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DataRetentionApi();
final policyId = policyId_example; // String | The ID of the granular retention policy.
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.addTeamsToRetentionPolicy(policyId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling DataRetentionApi->addTeamsToRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDataRetentionPolicy**
> DataRetentionPolicyWithTeamAndChannelCounts createDataRetentionPolicy(dataRetentionPolicyCreate)

Create a new granular data retention policy

Creates a new granular data retention policy with the specified display name and post duration.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DataRetentionApi();
final dataRetentionPolicyCreate = DataRetentionPolicyCreate(); // DataRetentionPolicyCreate | 

try {
    final result = api_instance.createDataRetentionPolicy(dataRetentionPolicyCreate);
    print(result);
} catch (e) {
    print('Exception when calling DataRetentionApi->createDataRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataRetentionPolicyCreate** | [**DataRetentionPolicyCreate**](DataRetentionPolicyCreate.md)|  | 

### Return type

[**DataRetentionPolicyWithTeamAndChannelCounts**](DataRetentionPolicyWithTeamAndChannelCounts.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDataRetentionPolicy**
> StatusOK deleteDataRetentionPolicy(policyId)

Delete a granular data retention policy

Deletes a granular data retention policy.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DataRetentionApi();
final policyId = policyId_example; // String | The ID of the granular retention policy.

try {
    final result = api_instance.deleteDataRetentionPolicy(policyId);
    print(result);
} catch (e) {
    print('Exception when calling DataRetentionApi->deleteDataRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelPoliciesForUser**
> RetentionPolicyForChannelList getChannelPoliciesForUser(userId, page, perPage)

Get the policies which are applied to a user's channels

Gets the policies which are applied to the all of the channels to which a user belongs.  __Minimum server version__: 5.35  ##### Permissions Must be logged in as the user or have the `manage_system` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DataRetentionApi();
final userId = userId_example; // String | The ID of the user. This can also be \"me\" which will point to the current user.
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of policies per page. There is a maximum limit of 200 per page.

try {
    final result = api_instance.getChannelPoliciesForUser(userId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling DataRetentionApi->getChannelPoliciesForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The ID of the user. This can also be \"me\" which will point to the current user. | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of policies per page. There is a maximum limit of 200 per page. | [optional] [default to 60]

### Return type

[**RetentionPolicyForChannelList**](RetentionPolicyForChannelList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelsForRetentionPolicy**
> List<ChannelWithTeamData> getChannelsForRetentionPolicy(policyId, page, perPage)

Get the channels for a granular data retention policy

Gets the channels to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DataRetentionApi();
final policyId = policyId_example; // String | The ID of the granular retention policy.
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of channels per page. There is a maximum limit of 200 per page.

try {
    final result = api_instance.getChannelsForRetentionPolicy(policyId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling DataRetentionApi->getChannelsForRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of channels per page. There is a maximum limit of 200 per page. | [optional] [default to 60]

### Return type

[**List<ChannelWithTeamData>**](ChannelWithTeamData.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDataRetentionPolicies**
> List<DataRetentionPolicyWithTeamAndChannelCounts> getDataRetentionPolicies(page, perPage)

Get the granular data retention policies

Gets details about the granular (i.e. team or channel-specific) data retention policies from the server.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DataRetentionApi();
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of policies per page. There is a maximum limit of 200 per page.

try {
    final result = api_instance.getDataRetentionPolicies(page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling DataRetentionApi->getDataRetentionPolicies: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of policies per page. There is a maximum limit of 200 per page. | [optional] [default to 60]

### Return type

[**List<DataRetentionPolicyWithTeamAndChannelCounts>**](DataRetentionPolicyWithTeamAndChannelCounts.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDataRetentionPoliciesCount**
> GetDataRetentionPoliciesCount200Response getDataRetentionPoliciesCount()

Get the number of granular data retention policies

Gets the number of granular (i.e. team or channel-specific) data retention policies from the server.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DataRetentionApi();

try {
    final result = api_instance.getDataRetentionPoliciesCount();
    print(result);
} catch (e) {
    print('Exception when calling DataRetentionApi->getDataRetentionPoliciesCount: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetDataRetentionPoliciesCount200Response**](GetDataRetentionPoliciesCount200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDataRetentionPolicy**
> GlobalDataRetentionPolicy getDataRetentionPolicy()

Get the global data retention policy

Gets the current global data retention policy details from the server, including what data should be purged and the cutoff times for each data type that should be purged.  __Minimum server version__: 4.3  ##### Permissions Requires an active session but no other permissions.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DataRetentionApi();

try {
    final result = api_instance.getDataRetentionPolicy();
    print(result);
} catch (e) {
    print('Exception when calling DataRetentionApi->getDataRetentionPolicy: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GlobalDataRetentionPolicy**](GlobalDataRetentionPolicy.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDataRetentionPolicyByID**
> DataRetentionPolicyWithTeamAndChannelCounts getDataRetentionPolicyByID(policyId)

Get a granular data retention policy

Gets details about a granular data retention policies by ID.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DataRetentionApi();
final policyId = policyId_example; // String | The ID of the granular retention policy.

try {
    final result = api_instance.getDataRetentionPolicyByID(policyId);
    print(result);
} catch (e) {
    print('Exception when calling DataRetentionApi->getDataRetentionPolicyByID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 

### Return type

[**DataRetentionPolicyWithTeamAndChannelCounts**](DataRetentionPolicyWithTeamAndChannelCounts.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTeamPoliciesForUser**
> RetentionPolicyForTeamList getTeamPoliciesForUser(userId, page, perPage)

Get the policies which are applied to a user's teams

Gets the policies which are applied to the all of the teams to which a user belongs.  __Minimum server version__: 5.35  ##### Permissions Must be logged in as the user or have the `manage_system` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DataRetentionApi();
final userId = userId_example; // String | The ID of the user. This can also be \"me\" which will point to the current user.
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of policies per page. There is a maximum limit of 200 per page.

try {
    final result = api_instance.getTeamPoliciesForUser(userId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling DataRetentionApi->getTeamPoliciesForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The ID of the user. This can also be \"me\" which will point to the current user. | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of policies per page. There is a maximum limit of 200 per page. | [optional] [default to 60]

### Return type

[**RetentionPolicyForTeamList**](RetentionPolicyForTeamList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTeamsForRetentionPolicy**
> List<Team> getTeamsForRetentionPolicy(policyId, page, perPage)

Get the teams for a granular data retention policy

Gets the teams to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DataRetentionApi();
final policyId = policyId_example; // String | The ID of the granular retention policy.
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of teams per page. There is a maximum limit of 200 per page.

try {
    final result = api_instance.getTeamsForRetentionPolicy(policyId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling DataRetentionApi->getTeamsForRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of teams per page. There is a maximum limit of 200 per page. | [optional] [default to 60]

### Return type

[**List<Team>**](Team.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchDataRetentionPolicy**
> DataRetentionPolicyWithTeamAndChannelCounts patchDataRetentionPolicy(policyId, dataRetentionPolicyWithTeamAndChannelIds)

Patch a granular data retention policy

Patches (i.e. replaces the fields of) a granular data retention policy. If any fields are omitted, they will not be changed.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DataRetentionApi();
final policyId = policyId_example; // String | The ID of the granular retention policy.
final dataRetentionPolicyWithTeamAndChannelIds = DataRetentionPolicyWithTeamAndChannelIds(); // DataRetentionPolicyWithTeamAndChannelIds | 

try {
    final result = api_instance.patchDataRetentionPolicy(policyId, dataRetentionPolicyWithTeamAndChannelIds);
    print(result);
} catch (e) {
    print('Exception when calling DataRetentionApi->patchDataRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **dataRetentionPolicyWithTeamAndChannelIds** | [**DataRetentionPolicyWithTeamAndChannelIds**](DataRetentionPolicyWithTeamAndChannelIds.md)|  | 

### Return type

[**DataRetentionPolicyWithTeamAndChannelCounts**](DataRetentionPolicyWithTeamAndChannelCounts.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeChannelsFromRetentionPolicy**
> StatusOK removeChannelsFromRetentionPolicy(policyId, requestBody)

Delete channels from a granular data retention policy

Delete channels from a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DataRetentionApi();
final policyId = policyId_example; // String | The ID of the granular retention policy.
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.removeChannelsFromRetentionPolicy(policyId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling DataRetentionApi->removeChannelsFromRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeTeamsFromRetentionPolicy**
> StatusOK removeTeamsFromRetentionPolicy(policyId, requestBody)

Delete teams from a granular data retention policy

Delete teams from a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DataRetentionApi();
final policyId = policyId_example; // String | The ID of the granular retention policy.
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.removeTeamsFromRetentionPolicy(policyId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling DataRetentionApi->removeTeamsFromRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchChannelsForRetentionPolicy**
> List<ChannelWithTeamData> searchChannelsForRetentionPolicy(policyId, searchChannelsForRetentionPolicyRequest)

Search for the channels in a granular data retention policy

Searches for the channels to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DataRetentionApi();
final policyId = policyId_example; // String | The ID of the granular retention policy.
final searchChannelsForRetentionPolicyRequest = SearchChannelsForRetentionPolicyRequest(); // SearchChannelsForRetentionPolicyRequest | 

try {
    final result = api_instance.searchChannelsForRetentionPolicy(policyId, searchChannelsForRetentionPolicyRequest);
    print(result);
} catch (e) {
    print('Exception when calling DataRetentionApi->searchChannelsForRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **searchChannelsForRetentionPolicyRequest** | [**SearchChannelsForRetentionPolicyRequest**](SearchChannelsForRetentionPolicyRequest.md)|  | 

### Return type

[**List<ChannelWithTeamData>**](ChannelWithTeamData.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchTeamsForRetentionPolicy**
> List<Team> searchTeamsForRetentionPolicy(policyId, searchTeamsForRetentionPolicyRequest)

Search for the teams in a granular data retention policy

Searches for the teams to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DataRetentionApi();
final policyId = policyId_example; // String | The ID of the granular retention policy.
final searchTeamsForRetentionPolicyRequest = SearchTeamsForRetentionPolicyRequest(); // SearchTeamsForRetentionPolicyRequest | 

try {
    final result = api_instance.searchTeamsForRetentionPolicy(policyId, searchTeamsForRetentionPolicyRequest);
    print(result);
} catch (e) {
    print('Exception when calling DataRetentionApi->searchTeamsForRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **searchTeamsForRetentionPolicyRequest** | [**SearchTeamsForRetentionPolicyRequest**](SearchTeamsForRetentionPolicyRequest.md)|  | 

### Return type

[**List<Team>**](Team.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

