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
> MMStatusOK addChannelsToRetentionPolicy(policyId, requestBody)

Add channels to a granular data retention policy

Adds channels to a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String policyId = 'policyId_example'; // String | The ID of the granular retention policy.
final List&lt;String&gt; requestBody = [List<String>()]; // List<String> | 

try {
  final MMStatusOK? result = await client.dataRetention.addChannelsToRetentionPolicy(policyId, requestBody); // await the Future<MMStatusOK?>
  print(result ?? 'resolved to null');
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

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **addTeamsToRetentionPolicy**
> MMStatusOK addTeamsToRetentionPolicy(policyId, requestBody)

Add teams to a granular data retention policy

Adds teams to a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String policyId = 'policyId_example'; // String | The ID of the granular retention policy.
final List&lt;String&gt; requestBody = [List<String>()]; // List<String> | 

try {
  final MMStatusOK? result = await client.dataRetention.addTeamsToRetentionPolicy(policyId, requestBody); // await the Future<MMStatusOK?>
  print(result ?? 'resolved to null');
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

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **createDataRetentionPolicy**
> MMDataRetentionPolicyWithTeamAndChannelCounts createDataRetentionPolicy(mMDataRetentionPolicyCreate)

Create a new granular data retention policy

Creates a new granular data retention policy with the specified display name and post duration.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final MMDataRetentionPolicyCreate mMDataRetentionPolicyCreate = MMDataRetentionPolicyCreate(); // MMDataRetentionPolicyCreate | 

try {
  final MMDataRetentionPolicyWithTeamAndChannelCounts? result = await client.dataRetention.createDataRetentionPolicy(mMDataRetentionPolicyCreate); // await the Future<MMDataRetentionPolicyWithTeamAndChannelCounts?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostDataRetentionApi->createDataRetentionPolicy: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mMDataRetentionPolicyCreate** | [**MMDataRetentionPolicyCreate**](MMDataRetentionPolicyCreate.md)|  | 

### Return type

[**MMDataRetentionPolicyWithTeamAndChannelCounts**](MMDataRetentionPolicyWithTeamAndChannelCounts.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **deleteDataRetentionPolicy**
> MMStatusOK deleteDataRetentionPolicy(policyId)

Delete a granular data retention policy

Deletes a granular data retention policy.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String policyId = 'policyId_example'; // String | The ID of the granular retention policy.

try {
  final MMStatusOK? result = await client.dataRetention.deleteDataRetentionPolicy(policyId); // await the Future<MMStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostDataRetentionApi->deleteDataRetentionPolicy: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 

### Return type

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getChannelPoliciesForUser**
> MMRetentionPolicyForChannelList getChannelPoliciesForUser(userId, page, perPage)

Get the policies which are applied to a user's channels

Gets the policies which are applied to the all of the channels to which a user belongs.  __Minimum server version__: 5.35  ##### Permissions Must be logged in as the user or have the `manage_system` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String userId = 'userId_example'; // String | The ID of the user. This can also be \"me\" which will point to the current user.
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of policies per page. There is a maximum limit of 200 per page.

try {
  final MMRetentionPolicyForChannelList? result = await client.dataRetention.getChannelPoliciesForUser(userId, page, perPage); // await the Future<MMRetentionPolicyForChannelList?>
  print(result ?? 'resolved to null');
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

[**MMRetentionPolicyForChannelList**](MMRetentionPolicyForChannelList.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getChannelsForRetentionPolicy**
> List<MMChannelWithTeamData> getChannelsForRetentionPolicy(policyId, page, perPage)

Get the channels for a granular data retention policy

Gets the channels to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String policyId = 'policyId_example'; // String | The ID of the granular retention policy.
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of channels per page. There is a maximum limit of 200 per page.

try {
  final List&lt;MMChannelWithTeamData&gt;? result = await client.dataRetention.getChannelsForRetentionPolicy(policyId, page, perPage); // await the Future<List&lt;MMChannelWithTeamData&gt;?>
  print(result ?? 'resolved to null');
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

[**List<MMChannelWithTeamData>**](MMChannelWithTeamData.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getDataRetentionPolicies**
> List<MMDataRetentionPolicyWithTeamAndChannelCounts> getDataRetentionPolicies(page, perPage)

Get the granular data retention policies

Gets details about the granular (i.e. team or channel-specific) data retention policies from the server.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of policies per page. There is a maximum limit of 200 per page.

try {
  final List&lt;MMDataRetentionPolicyWithTeamAndChannelCounts&gt;? result = await client.dataRetention.getDataRetentionPolicies(page, perPage); // await the Future<List&lt;MMDataRetentionPolicyWithTeamAndChannelCounts&gt;?>
  print(result ?? 'resolved to null');
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

[**List<MMDataRetentionPolicyWithTeamAndChannelCounts>**](MMDataRetentionPolicyWithTeamAndChannelCounts.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getDataRetentionPoliciesCount**
> MMGetDataRetentionPoliciesCount200Response getDataRetentionPoliciesCount()

Get the number of granular data retention policies

Gets the number of granular (i.e. team or channel-specific) data retention policies from the server.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MMGetDataRetentionPoliciesCount200Response? result = await client.dataRetention.getDataRetentionPoliciesCount(); // await the Future<MMGetDataRetentionPoliciesCount200Response?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostDataRetentionApi->getDataRetentionPoliciesCount: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MMGetDataRetentionPoliciesCount200Response**](MMGetDataRetentionPoliciesCount200Response.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getDataRetentionPolicy**
> MMGlobalDataRetentionPolicy getDataRetentionPolicy()

Get the global data retention policy

Gets the current global data retention policy details from the server, including what data should be purged and the cutoff times for each data type that should be purged.  __Minimum server version__: 4.3  ##### Permissions Requires an active session but no other permissions.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MMGlobalDataRetentionPolicy? result = await client.dataRetention.getDataRetentionPolicy(); // await the Future<MMGlobalDataRetentionPolicy?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostDataRetentionApi->getDataRetentionPolicy: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MMGlobalDataRetentionPolicy**](MMGlobalDataRetentionPolicy.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getDataRetentionPolicyByID**
> MMDataRetentionPolicyWithTeamAndChannelCounts getDataRetentionPolicyByID(policyId)

Get a granular data retention policy

Gets details about a granular data retention policies by ID.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String policyId = 'policyId_example'; // String | The ID of the granular retention policy.

try {
  final MMDataRetentionPolicyWithTeamAndChannelCounts? result = await client.dataRetention.getDataRetentionPolicyByID(policyId); // await the Future<MMDataRetentionPolicyWithTeamAndChannelCounts?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostDataRetentionApi->getDataRetentionPolicyByID: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 

### Return type

[**MMDataRetentionPolicyWithTeamAndChannelCounts**](MMDataRetentionPolicyWithTeamAndChannelCounts.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getTeamPoliciesForUser**
> MMRetentionPolicyForTeamList getTeamPoliciesForUser(userId, page, perPage)

Get the policies which are applied to a user's teams

Gets the policies which are applied to the all of the teams to which a user belongs.  __Minimum server version__: 5.35  ##### Permissions Must be logged in as the user or have the `manage_system` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String userId = 'userId_example'; // String | The ID of the user. This can also be \"me\" which will point to the current user.
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of policies per page. There is a maximum limit of 200 per page.

try {
  final MMRetentionPolicyForTeamList? result = await client.dataRetention.getTeamPoliciesForUser(userId, page, perPage); // await the Future<MMRetentionPolicyForTeamList?>
  print(result ?? 'resolved to null');
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

[**MMRetentionPolicyForTeamList**](MMRetentionPolicyForTeamList.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getTeamsForRetentionPolicy**
> List<MMTeam> getTeamsForRetentionPolicy(policyId, page, perPage)

Get the teams for a granular data retention policy

Gets the teams to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String policyId = 'policyId_example'; // String | The ID of the granular retention policy.
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of teams per page. There is a maximum limit of 200 per page.

try {
  final List&lt;MMTeam&gt;? result = await client.dataRetention.getTeamsForRetentionPolicy(policyId, page, perPage); // await the Future<List&lt;MMTeam&gt;?>
  print(result ?? 'resolved to null');
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

[**List<MMTeam>**](MMTeam.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **patchDataRetentionPolicy**
> MMDataRetentionPolicyWithTeamAndChannelCounts patchDataRetentionPolicy(policyId, mMDataRetentionPolicyWithTeamAndChannelIds)

Patch a granular data retention policy

Patches (i.e. replaces the fields of) a granular data retention policy. If any fields are omitted, they will not be changed.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String policyId = 'policyId_example'; // String | The ID of the granular retention policy.
final MMDataRetentionPolicyWithTeamAndChannelIds mMDataRetentionPolicyWithTeamAndChannelIds = MMDataRetentionPolicyWithTeamAndChannelIds(); // MMDataRetentionPolicyWithTeamAndChannelIds | 

try {
  final MMDataRetentionPolicyWithTeamAndChannelCounts? result = await client.dataRetention.patchDataRetentionPolicy(policyId, mMDataRetentionPolicyWithTeamAndChannelIds); // await the Future<MMDataRetentionPolicyWithTeamAndChannelCounts?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostDataRetentionApi->patchDataRetentionPolicy: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **mMDataRetentionPolicyWithTeamAndChannelIds** | [**MMDataRetentionPolicyWithTeamAndChannelIds**](MMDataRetentionPolicyWithTeamAndChannelIds.md)|  | 

### Return type

[**MMDataRetentionPolicyWithTeamAndChannelCounts**](MMDataRetentionPolicyWithTeamAndChannelCounts.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **removeChannelsFromRetentionPolicy**
> MMStatusOK removeChannelsFromRetentionPolicy(policyId, requestBody)

Delete channels from a granular data retention policy

Delete channels from a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String policyId = 'policyId_example'; // String | The ID of the granular retention policy.
final List&lt;String&gt; requestBody = [List<String>()]; // List<String> | 

try {
  final MMStatusOK? result = await client.dataRetention.removeChannelsFromRetentionPolicy(policyId, requestBody); // await the Future<MMStatusOK?>
  print(result ?? 'resolved to null');
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

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **removeTeamsFromRetentionPolicy**
> MMStatusOK removeTeamsFromRetentionPolicy(policyId, requestBody)

Delete teams from a granular data retention policy

Delete teams from a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String policyId = 'policyId_example'; // String | The ID of the granular retention policy.
final List&lt;String&gt; requestBody = [List<String>()]; // List<String> | 

try {
  final MMStatusOK? result = await client.dataRetention.removeTeamsFromRetentionPolicy(policyId, requestBody); // await the Future<MMStatusOK?>
  print(result ?? 'resolved to null');
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

[**MMStatusOK**](MMStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **searchChannelsForRetentionPolicy**
> List<MMChannelWithTeamData> searchChannelsForRetentionPolicy(policyId, mMSearchChannelsForRetentionPolicyRequest)

Search for the channels in a granular data retention policy

Searches for the channels to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String policyId = 'policyId_example'; // String | The ID of the granular retention policy.
final MMSearchChannelsForRetentionPolicyRequest mMSearchChannelsForRetentionPolicyRequest = MMSearchChannelsForRetentionPolicyRequest(); // MMSearchChannelsForRetentionPolicyRequest | 

try {
  final List&lt;MMChannelWithTeamData&gt;? result = await client.dataRetention.searchChannelsForRetentionPolicy(policyId, mMSearchChannelsForRetentionPolicyRequest); // await the Future<List&lt;MMChannelWithTeamData&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostDataRetentionApi->searchChannelsForRetentionPolicy: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **mMSearchChannelsForRetentionPolicyRequest** | [**MMSearchChannelsForRetentionPolicyRequest**](MMSearchChannelsForRetentionPolicyRequest.md)|  | 

### Return type

[**List<MMChannelWithTeamData>**](MMChannelWithTeamData.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **searchTeamsForRetentionPolicy**
> List<MMTeam> searchTeamsForRetentionPolicy(policyId, mMSearchTeamsForRetentionPolicyRequest)

Search for the teams in a granular data retention policy

Searches for the teams to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MMHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


final String policyId = 'policyId_example'; // String | The ID of the granular retention policy.
final MMSearchTeamsForRetentionPolicyRequest mMSearchTeamsForRetentionPolicyRequest = MMSearchTeamsForRetentionPolicyRequest(); // MMSearchTeamsForRetentionPolicyRequest | 

try {
  final List&lt;MMTeam&gt;? result = await client.dataRetention.searchTeamsForRetentionPolicy(policyId, mMSearchTeamsForRetentionPolicyRequest); // await the Future<List&lt;MMTeam&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostDataRetentionApi->searchTeamsForRetentionPolicy: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **mMSearchTeamsForRetentionPolicyRequest** | [**MMSearchTeamsForRetentionPolicyRequest**](MMSearchTeamsForRetentionPolicyRequest.md)|  | 

### Return type

[**List<MMTeam>**](MMTeam.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

