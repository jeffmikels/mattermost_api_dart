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
> MmStatusOK cancelJob(jobId)

Cancel a job.

Cancel a job. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission. 

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


final String jobId = 'jobId_example'; // String | Job GUID

try {
  final MmStatusOK? result = await client.jobs.cancelJob(jobId); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostJobsApi->cancelJob: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | **String**| Job GUID | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **createJob**
> MmJob createJob(mmCreateJobRequest)

Create a new job.

Create a new job. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission. 

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


final MmCreateJobRequest mmCreateJobRequest = MmCreateJobRequest(); // MmCreateJobRequest | Job object to be created

try {
  final MmJob? result = await client.jobs.createJob(mmCreateJobRequest); // await the Future<MmJob?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostJobsApi->createJob: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmCreateJobRequest** | [**MmCreateJobRequest**](MmCreateJobRequest.md)| Job object to be created | 

### Return type

[**MmJob**](MmJob.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **downloadJob**
> downloadJob(jobId)

Download the results of a job.

Download the result of a single job. __Minimum server version: 5.28__ ##### Permissions Must have `manage_jobs` permission. 

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


final String jobId = 'jobId_example'; // String | Job GUID

try {
  await client.jobs.downloadJob(jobId); 
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

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getJob**
> MmJob getJob(jobId)

Get a job.

Gets a single job. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission. 

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


final String jobId = 'jobId_example'; // String | Job GUID

try {
  final MmJob? result = await client.jobs.getJob(jobId); // await the Future<MmJob?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostJobsApi->getJob: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | **String**| Job GUID | 

### Return type

[**MmJob**](MmJob.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getJobs**
> List<MmJob> getJobs(page, perPage)

Get the jobs.

Get a page of jobs. Use the query parameters to modify the behaviour of this endpoint. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission. 

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


final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of jobs per page.

try {
  final List&lt;MmJob&gt;? result = await client.jobs.getJobs(page, perPage); // await the Future<List&lt;MmJob&gt;?>
  print(result ?? 'resolved to null');
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

[**List<MmJob>**](MmJob.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getJobsByType**
> List<MmJob> getJobsByType(type, page, perPage)

Get the jobs of the given type.

Get a page of jobs of the given type. Use the query parameters to modify the behaviour of this endpoint. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission. 

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


final String type = 'type_example'; // String | Job type
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of jobs per page.

try {
  final List&lt;MmJob&gt;? result = await client.jobs.getJobsByType(type, page, perPage); // await the Future<List&lt;MmJob&gt;?>
  print(result ?? 'resolved to null');
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

[**List<MmJob>**](MmJob.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

