# mattermost_api.api.CloudApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**confirmCustomerPayment**](CloudApi.md#confirmcustomerpayment) | **POST** /cloud/payment/confirm | Completes the payment setup intent
[**createCustomerPayment**](CloudApi.md#createcustomerpayment) | **POST** /cloud/payment | Create a customer setup payment intent
[**getCloudCustomer**](CloudApi.md#getcloudcustomer) | **GET** /cloud/customer | Get cloud customer
[**getCloudLimits**](CloudApi.md#getcloudlimits) | **GET** /cloud/limits | Get cloud workspace limits
[**getCloudProducts**](CloudApi.md#getcloudproducts) | **GET** /cloud/products | Get cloud products
[**getInvoiceForSubscriptionAsPdf**](CloudApi.md#getinvoiceforsubscriptionaspdf) | **GET** /cloud/subscription/invoices/{invoice_id}/pdf | Get cloud invoice PDF
[**getInvoicesForSubscription**](CloudApi.md#getinvoicesforsubscription) | **GET** /cloud/subscription/invoices | Get cloud subscription invoices
[**getSubscription**](CloudApi.md#getsubscription) | **GET** /cloud/subscription | Get cloud subscription
[**getSubscriptionStats**](CloudApi.md#getsubscriptionstats) | **GET** /cloud/subscription/stats | GET endpoint for cloud subscription stats
[**postEndpointForCwsWebhooks**](CloudApi.md#postendpointforcwswebhooks) | **POST** /cloud/webhook | POST endpoint for CWS Webhooks
[**sendAdminUpgradeRequestEmail**](CloudApi.md#sendadminupgraderequestemail) | **POST** /cloud/subscription/limitreached/invite | POST endpoint for triggering sending emails to admin with request to upgrade workspace
[**sendAdminUpgradeRequestEmailOnJoin**](CloudApi.md#sendadminupgraderequestemailonjoin) | **POST** /cloud/subscription/limitreached/join | POST endpoint for triggering sending emails to admin with request to upgrade workspace
[**updateCloudCustomer**](CloudApi.md#updatecloudcustomer) | **PUT** /cloud/customer | Update cloud customer
[**updateCloudCustomerAddress**](CloudApi.md#updatecloudcustomeraddress) | **PUT** /cloud/customer/address | Update cloud customer address


# **confirmCustomerPayment**
> confirmCustomerPayment(stripeSetupIntentId)

Completes the payment setup intent

Confirms the payment setup intent initiated when posting to `/cloud/payment`. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CloudApi();
final stripeSetupIntentId = stripeSetupIntentId_example; // String | 

try {
    api_instance.confirmCustomerPayment(stripeSetupIntentId);
} catch (e) {
    print('Exception when calling CloudApi->confirmCustomerPayment: $e\n');
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
> PaymentSetupIntent createCustomerPayment()

Create a customer setup payment intent

Creates a customer setup payment intent for the given Mattermost cloud installation.  ##### Permissions  Must have `manage_system` permission and be licensed for Cloud.  __Minimum server version__: 5.28 __Note:__: This is intended for internal use and is subject to change. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CloudApi();

try {
    final result = api_instance.createCustomerPayment();
    print(result);
} catch (e) {
    print('Exception when calling CloudApi->createCustomerPayment: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PaymentSetupIntent**](PaymentSetupIntent.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCloudCustomer**
> CloudCustomer getCloudCustomer()

Get cloud customer

Retrieves the customer information for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CloudApi();

try {
    final result = api_instance.getCloudCustomer();
    print(result);
} catch (e) {
    print('Exception when calling CloudApi->getCloudCustomer: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CloudCustomer**](CloudCustomer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCloudLimits**
> ProductLimits getCloudLimits()

Get cloud workspace limits

Retrieve any cloud workspace limits applicable to this instance. ##### Permissions Must be authenticated and be licensed for Cloud. __Minimum server version__: 7.0 __Note:__ This is intended for internal use and is subject to change. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CloudApi();

try {
    final result = api_instance.getCloudLimits();
    print(result);
} catch (e) {
    print('Exception when calling CloudApi->getCloudLimits: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProductLimits**](ProductLimits.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCloudProducts**
> List<Product> getCloudProducts()

Get cloud products

Retrieve a list of all products that are offered for Mattermost Cloud. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CloudApi();

try {
    final result = api_instance.getCloudProducts();
    print(result);
} catch (e) {
    print('Exception when calling CloudApi->getCloudProducts: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Product>**](Product.md)

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
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CloudApi();
final invoiceId = invoiceId_example; // String | Invoice ID

try {
    api_instance.getInvoiceForSubscriptionAsPdf(invoiceId);
} catch (e) {
    print('Exception when calling CloudApi->getInvoiceForSubscriptionAsPdf: $e\n');
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
> List<Invoice> getInvoicesForSubscription()

Get cloud subscription invoices

Retrieves the invoices for the subscription bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.30 __Note:__ This is intended for internal use and is subject to change. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CloudApi();

try {
    final result = api_instance.getInvoicesForSubscription();
    print(result);
} catch (e) {
    print('Exception when calling CloudApi->getInvoicesForSubscription: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Invoice>**](Invoice.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscription**
> Subscription getSubscription()

Get cloud subscription

Retrieves the subscription information for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CloudApi();

try {
    final result = api_instance.getSubscription();
    print(result);
} catch (e) {
    print('Exception when calling CloudApi->getSubscription: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Subscription**](Subscription.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscriptionStats**
> SubscriptionStats getSubscriptionStats()

GET endpoint for cloud subscription stats

An endpoint that returns stats about a user's subscription. For example remaining seats on a free tier ##### Permissions This endpoint should only be accessed in a Mattermost Cloud instance __Minimum server version__: 5.34 __Note:__ This is intended for internal use and is subject to change. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CloudApi();

try {
    final result = api_instance.getSubscriptionStats();
    print(result);
} catch (e) {
    print('Exception when calling CloudApi->getSubscriptionStats: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SubscriptionStats**](SubscriptionStats.md)

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
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CloudApi();

try {
    api_instance.postEndpointForCwsWebhooks();
} catch (e) {
    print('Exception when calling CloudApi->postEndpointForCwsWebhooks: $e\n');
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
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CloudApi();

try {
    api_instance.sendAdminUpgradeRequestEmail();
} catch (e) {
    print('Exception when calling CloudApi->sendAdminUpgradeRequestEmail: $e\n');
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
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CloudApi();

try {
    api_instance.sendAdminUpgradeRequestEmailOnJoin();
} catch (e) {
    print('Exception when calling CloudApi->sendAdminUpgradeRequestEmailOnJoin: $e\n');
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
> CloudCustomer updateCloudCustomer(updateCloudCustomerRequest)

Update cloud customer

Updates the customer information for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.29 __Note:__ This is intended for internal use and is subject to change. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CloudApi();
final updateCloudCustomerRequest = UpdateCloudCustomerRequest(); // UpdateCloudCustomerRequest | Customer patch including information to update

try {
    final result = api_instance.updateCloudCustomer(updateCloudCustomerRequest);
    print(result);
} catch (e) {
    print('Exception when calling CloudApi->updateCloudCustomer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateCloudCustomerRequest** | [**UpdateCloudCustomerRequest**](UpdateCloudCustomerRequest.md)| Customer patch including information to update | 

### Return type

[**CloudCustomer**](CloudCustomer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCloudCustomerAddress**
> CloudCustomer updateCloudCustomerAddress(address)

Update cloud customer address

Updates the company address for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.29 __Note:__ This is intended for internal use and is subject to change. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CloudApi();
final address = Address(); // Address | Company address information to update

try {
    final result = api_instance.updateCloudCustomerAddress(address);
    print(result);
} catch (e) {
    print('Exception when calling CloudApi->updateCloudCustomerAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | [**Address**](Address.md)| Company address information to update | 

### Return type

[**CloudCustomer**](CloudCustomer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

