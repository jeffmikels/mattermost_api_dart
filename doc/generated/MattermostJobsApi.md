# mattermost_api.api.MattermostJobsApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelJob**](MattermostJobsApi.md#canceljob) | **POST** /jobs/{job_id}/cancel | Cancel a job.
[**createJob**](MattermostJobsApi.md#createjob) | **POST** /jobs | Create a new job.
[**downloadJob**](MattermostJobsApi.md#downloadjob) | **GET** /jobs/{job_id}/download | Download the results of a job.
[**getJob**](MattermostJobsApi.md#getjob) | **GET** /jobs/{job_id} | Get a job.
[**getJobs**](MattermostJobsApi.md#getjobs) | **GET** /jobs | Get the jobs.
[**getJobsByType**](MattermostJobsApi.md#getjobsbytype) | **GET** /jobs/type/{type} | Get the jobs of the given type.


# **cancelJob**
> MattermostStatusOK cancelJob(jobId)

Cancel a job.

Cancel a job. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostJobsApi();
final jobId = jobId_example; // String | Job GUID

try {
    final result = api_instance.cancelJob(jobId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostJobsApi->cancelJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | **String**| Job GUID | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createJob**
> MattermostJob createJob(mattermostCreateJobRequest)

Create a new job.

Create a new job. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostJobsApi();
final mattermostCreateJobRequest = MattermostCreateJobRequest(); // MattermostCreateJobRequest | Job object to be created

try {
    final result = api_instance.createJob(mattermostCreateJobRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostJobsApi->createJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostCreateJobRequest** | [**MattermostCreateJobRequest**](MattermostCreateJobRequest.md)| Job object to be created | 

### Return type

[**MattermostJob**](MattermostJob.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadJob**
> downloadJob(jobId)

Download the results of a job.

Download the result of a single job. __Minimum server version: 5.28__ ##### Permissions Must have `manage_jobs` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostJobsApi();
final jobId = jobId_example; // String | Job GUID

try {
    api_instance.downloadJob(jobId);
} catch (e) {
    print('Exception when calling MattermostJobsApi->downloadJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | **String**| Job GUID | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJob**
> MattermostJob getJob(jobId)

Get a job.

Gets a single job. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostJobsApi();
final jobId = jobId_example; // String | Job GUID

try {
    final result = api_instance.getJob(jobId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostJobsApi->getJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | **String**| Job GUID | 

### Return type

[**MattermostJob**](MattermostJob.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobs**
> List<MattermostJob> getJobs(page, perPage)

Get the jobs.

Get a page of jobs. Use the query parameters to modify the behaviour of this endpoint. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostJobsApi();
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of jobs per page.

try {
    final result = api_instance.getJobs(page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostJobsApi->getJobs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of jobs per page. | [optional] [default to 60]

### Return type

[**List<MattermostJob>**](MattermostJob.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobsByType**
> List<MattermostJob> getJobsByType(type, page, perPage)

Get the jobs of the given type.

Get a page of jobs of the given type. Use the query parameters to modify the behaviour of this endpoint. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostJobsApi();
final type = type_example; // String | Job type
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of jobs per page.

try {
    final result = api_instance.getJobsByType(type, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling MattermostJobsApi->getJobsByType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Job type | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of jobs per page. | [optional] [default to 60]

### Return type

[**List<MattermostJob>**](MattermostJob.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

