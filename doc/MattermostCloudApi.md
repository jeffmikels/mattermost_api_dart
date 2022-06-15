# mattermost_api.api.MattermostCloudApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**confirmCustomerPayment**](MattermostCloudApi.md#confirmcustomerpayment) | **POST** /cloud/payment/confirm | Completes the payment setup intent
[**createCustomerPayment**](MattermostCloudApi.md#createcustomerpayment) | **POST** /cloud/payment | Create a customer setup payment intent
[**getCloudCustomer**](MattermostCloudApi.md#getcloudcustomer) | **GET** /cloud/customer | Get cloud customer
[**getCloudLimits**](MattermostCloudApi.md#getcloudlimits) | **GET** /cloud/limits | Get cloud workspace limits
[**getCloudProducts**](MattermostCloudApi.md#getcloudproducts) | **GET** /cloud/products | Get cloud products
[**getInvoiceForSubscriptionAsPdf**](MattermostCloudApi.md#getinvoiceforsubscriptionaspdf) | **GET** /cloud/subscription/invoices/{invoice_id}/pdf | Get cloud invoice PDF
[**getInvoicesForSubscription**](MattermostCloudApi.md#getinvoicesforsubscription) | **GET** /cloud/subscription/invoices | Get cloud subscription invoices
[**getSubscription**](MattermostCloudApi.md#getsubscription) | **GET** /cloud/subscription | Get cloud subscription
[**getSubscriptionStats**](MattermostCloudApi.md#getsubscriptionstats) | **GET** /cloud/subscription/stats | GET endpoint for cloud subscription stats
[**postEndpointForCwsWebhooks**](MattermostCloudApi.md#postendpointforcwswebhooks) | **POST** /cloud/webhook | POST endpoint for CWS Webhooks
[**sendAdminUpgradeRequestEmail**](MattermostCloudApi.md#sendadminupgraderequestemail) | **POST** /cloud/subscription/limitreached/invite | POST endpoint for triggering sending emails to admin with request to upgrade workspace
[**sendAdminUpgradeRequestEmailOnJoin**](MattermostCloudApi.md#sendadminupgraderequestemailonjoin) | **POST** /cloud/subscription/limitreached/join | POST endpoint for triggering sending emails to admin with request to upgrade workspace
[**updateCloudCustomer**](MattermostCloudApi.md#updatecloudcustomer) | **PUT** /cloud/customer | Update cloud customer
[**updateCloudCustomerAddress**](MattermostCloudApi.md#updatecloudcustomeraddress) | **PUT** /cloud/customer/address | Update cloud customer address


# **confirmCustomerPayment**
> confirmCustomerPayment(stripeSetupIntentId)

Completes the payment setup intent

Confirms the payment setup intent initiated when posting to `/cloud/payment`. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 

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

// Then, access MattermostCloudApi api instance
// final MattermostCloudApi api_instance = client.cloud

final stripeSetupIntentId = stripeSetupIntentId_example; // String | 

try {
    await client.cloud.confirmCustomerPayment(stripeSetupIntentId);
} catch (e) {
    print('Exception when calling MattermostCloudApi->confirmCustomerPayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stripeSetupIntentId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCustomerPayment**
> MattermostPaymentSetupIntent createCustomerPayment()

Create a customer setup payment intent

Creates a customer setup payment intent for the given Mattermost cloud installation.  ##### Permissions  Must have `manage_system` permission and be licensed for Cloud.  __Minimum server version__: 5.28 __Note:__: This is intended for internal use and is subject to change. 

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

// Then, access MattermostCloudApi api instance
// final MattermostCloudApi api_instance = client.cloud


try {
    final result = await client.cloud.createCustomerPayment();
    print(result);
} catch (e) {
    print('Exception when calling MattermostCloudApi->createCustomerPayment: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostPaymentSetupIntent**](MattermostPaymentSetupIntent.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCloudCustomer**
> MattermostCloudCustomer getCloudCustomer()

Get cloud customer

Retrieves the customer information for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 

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

// Then, access MattermostCloudApi api instance
// final MattermostCloudApi api_instance = client.cloud


try {
    final result = await client.cloud.getCloudCustomer();
    print(result);
} catch (e) {
    print('Exception when calling MattermostCloudApi->getCloudCustomer: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostCloudCustomer**](MattermostCloudCustomer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCloudLimits**
> MattermostProductLimits getCloudLimits()

Get cloud workspace limits

Retrieve any cloud workspace limits applicable to this instance. ##### Permissions Must be authenticated and be licensed for Cloud. __Minimum server version__: 7.0 __Note:__ This is intended for internal use and is subject to change. 

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

// Then, access MattermostCloudApi api instance
// final MattermostCloudApi api_instance = client.cloud


try {
    final result = await client.cloud.getCloudLimits();
    print(result);
} catch (e) {
    print('Exception when calling MattermostCloudApi->getCloudLimits: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostProductLimits**](MattermostProductLimits.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCloudProducts**
> List<MattermostProduct> getCloudProducts()

Get cloud products

Retrieve a list of all products that are offered for Mattermost Cloud. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 

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

// Then, access MattermostCloudApi api instance
// final MattermostCloudApi api_instance = client.cloud


try {
    final result = await client.cloud.getCloudProducts();
    print(result);
} catch (e) {
    print('Exception when calling MattermostCloudApi->getCloudProducts: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<MattermostProduct>**](MattermostProduct.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvoiceForSubscriptionAsPdf**
> getInvoiceForSubscriptionAsPdf(invoiceId)

Get cloud invoice PDF

Retrieves the PDF for the invoice passed as parameter ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.30 __Note:__ This is intended for internal use and is subject to change. 

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

// Then, access MattermostCloudApi api instance
// final MattermostCloudApi api_instance = client.cloud

final invoiceId = invoiceId_example; // String | Invoice ID

try {
    await client.cloud.getInvoiceForSubscriptionAsPdf(invoiceId);
} catch (e) {
    print('Exception when calling MattermostCloudApi->getInvoiceForSubscriptionAsPdf: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceId** | **String**| Invoice ID | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvoicesForSubscription**
> List<MattermostInvoice> getInvoicesForSubscription()

Get cloud subscription invoices

Retrieves the invoices for the subscription bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.30 __Note:__ This is intended for internal use and is subject to change. 

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

// Then, access MattermostCloudApi api instance
// final MattermostCloudApi api_instance = client.cloud


try {
    final result = await client.cloud.getInvoicesForSubscription();
    print(result);
} catch (e) {
    print('Exception when calling MattermostCloudApi->getInvoicesForSubscription: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<MattermostInvoice>**](MattermostInvoice.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscription**
> MattermostSubscription getSubscription()

Get cloud subscription

Retrieves the subscription information for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 

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

// Then, access MattermostCloudApi api instance
// final MattermostCloudApi api_instance = client.cloud


try {
    final result = await client.cloud.getSubscription();
    print(result);
} catch (e) {
    print('Exception when calling MattermostCloudApi->getSubscription: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostSubscription**](MattermostSubscription.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscriptionStats**
> MattermostSubscriptionStats getSubscriptionStats()

GET endpoint for cloud subscription stats

An endpoint that returns stats about a user's subscription. For example remaining seats on a free tier ##### Permissions This endpoint should only be accessed in a Mattermost Cloud instance __Minimum server version__: 5.34 __Note:__ This is intended for internal use and is subject to change. 

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

// Then, access MattermostCloudApi api instance
// final MattermostCloudApi api_instance = client.cloud


try {
    final result = await client.cloud.getSubscriptionStats();
    print(result);
} catch (e) {
    print('Exception when calling MattermostCloudApi->getSubscriptionStats: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MattermostSubscriptionStats**](MattermostSubscriptionStats.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postEndpointForCwsWebhooks**
> postEndpointForCwsWebhooks()

POST endpoint for CWS Webhooks

An endpoint for processing webhooks from the Customer Portal ##### Permissions This endpoint should only be accessed by CWS, in a Mattermost Cloud instance __Minimum server version__: 5.30 __Note:__ This is intended for internal use and is subject to change. 

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

// Then, access MattermostCloudApi api instance
// final MattermostCloudApi api_instance = client.cloud


try {
    await client.cloud.postEndpointForCwsWebhooks();
} catch (e) {
    print('Exception when calling MattermostCloudApi->postEndpointForCwsWebhooks: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendAdminUpgradeRequestEmail**
> sendAdminUpgradeRequestEmail()

POST endpoint for triggering sending emails to admin with request to upgrade workspace

An endpoint that triggers sending emails to all sys admins to request them to upgrade the workspace when a user tries to invite more users ##### Permissions This endpoint should only be accessed in a Mattermost Cloud instance __Minimum server version__: 5.34 __Note:__ This is intended for internal use and is subject to change. 

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

// Then, access MattermostCloudApi api instance
// final MattermostCloudApi api_instance = client.cloud


try {
    await client.cloud.sendAdminUpgradeRequestEmail();
} catch (e) {
    print('Exception when calling MattermostCloudApi->sendAdminUpgradeRequestEmail: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendAdminUpgradeRequestEmailOnJoin**
> sendAdminUpgradeRequestEmailOnJoin()

POST endpoint for triggering sending emails to admin with request to upgrade workspace

An endpoint that triggers sending emails to all sys admins to request them to upgrade the workspace when a user tries to join the workspace ##### Permissions This endpoint should only be accessed in a Mattermost Cloud instance __Minimum server version__: 5.34 __Note:__ This is intended for internal use and is subject to change. 

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

// Then, access MattermostCloudApi api instance
// final MattermostCloudApi api_instance = client.cloud


try {
    await client.cloud.sendAdminUpgradeRequestEmailOnJoin();
} catch (e) {
    print('Exception when calling MattermostCloudApi->sendAdminUpgradeRequestEmailOnJoin: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCloudCustomer**
> MattermostCloudCustomer updateCloudCustomer(mattermostUpdateCloudCustomerRequest)

Update cloud customer

Updates the customer information for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.29 __Note:__ This is intended for internal use and is subject to change. 

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

// Then, access MattermostCloudApi api instance
// final MattermostCloudApi api_instance = client.cloud

final mattermostUpdateCloudCustomerRequest = MattermostUpdateCloudCustomerRequest(); // MattermostUpdateCloudCustomerRequest | Customer patch including information to update

try {
    final result = await client.cloud.updateCloudCustomer(mattermostUpdateCloudCustomerRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostCloudApi->updateCloudCustomer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostUpdateCloudCustomerRequest** | [**MattermostUpdateCloudCustomerRequest**](MattermostUpdateCloudCustomerRequest.md)| Customer patch including information to update | 

### Return type

[**MattermostCloudCustomer**](MattermostCloudCustomer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCloudCustomerAddress**
> MattermostCloudCustomer updateCloudCustomerAddress(mattermostAddress)

Update cloud customer address

Updates the company address for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.29 __Note:__ This is intended for internal use and is subject to change. 

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

// Then, access MattermostCloudApi api instance
// final MattermostCloudApi api_instance = client.cloud

final mattermostAddress = MattermostAddress(); // MattermostAddress | Company address information to update

try {
    final result = await client.cloud.updateCloudCustomerAddress(mattermostAddress);
    print(result);
} catch (e) {
    print('Exception when calling MattermostCloudApi->updateCloudCustomerAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostAddress** | [**MattermostAddress**](MattermostAddress.md)| Company address information to update | 

### Return type

[**MattermostCloudCustomer**](MattermostCloudCustomer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
