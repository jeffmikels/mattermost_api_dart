//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;


class CloudApi {
  CloudApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Completes the payment setup intent
  ///
  /// Confirms the payment setup intent initiated when posting to `/cloud/payment`. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] stripeSetupIntentId:
  Future<Response> confirmCustomerPaymentWithHttpInfo({ String? stripeSetupIntentId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/cloud/payment/confirm';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (stripeSetupIntentId != null) {
      hasFields = true;
      mp.fields[r'stripe_setup_intent_id'] = parameterToString(stripeSetupIntentId);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Completes the payment setup intent
  ///
  /// Confirms the payment setup intent initiated when posting to `/cloud/payment`. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 
  ///
  /// Parameters:
  ///
  /// * [String] stripeSetupIntentId:
  Future<void> confirmCustomerPayment({ String? stripeSetupIntentId, }) async {
    final response = await confirmCustomerPaymentWithHttpInfo( stripeSetupIntentId: stripeSetupIntentId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a customer setup payment intent
  ///
  /// Creates a customer setup payment intent for the given Mattermost cloud installation.  ##### Permissions  Must have `manage_system` permission and be licensed for Cloud.  __Minimum server version__: 5.28 __Note:__: This is intended for internal use and is subject to change. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> createCustomerPaymentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/cloud/payment';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create a customer setup payment intent
  ///
  /// Creates a customer setup payment intent for the given Mattermost cloud installation.  ##### Permissions  Must have `manage_system` permission and be licensed for Cloud.  __Minimum server version__: 5.28 __Note:__: This is intended for internal use and is subject to change. 
  Future<PaymentSetupIntent?> createCustomerPayment() async {
    final response = await createCustomerPaymentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaymentSetupIntent',) as PaymentSetupIntent;
    
    }
    return null;
  }

  /// Get cloud customer
  ///
  /// Retrieves the customer information for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCloudCustomerWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/cloud/customer';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get cloud customer
  ///
  /// Retrieves the customer information for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 
  Future<CloudCustomer?> getCloudCustomer() async {
    final response = await getCloudCustomerWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CloudCustomer',) as CloudCustomer;
    
    }
    return null;
  }

  /// Get cloud workspace limits
  ///
  /// Retrieve any cloud workspace limits applicable to this instance. ##### Permissions Must be authenticated and be licensed for Cloud. __Minimum server version__: 7.0 __Note:__ This is intended for internal use and is subject to change. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCloudLimitsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/cloud/limits';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get cloud workspace limits
  ///
  /// Retrieve any cloud workspace limits applicable to this instance. ##### Permissions Must be authenticated and be licensed for Cloud. __Minimum server version__: 7.0 __Note:__ This is intended for internal use and is subject to change. 
  Future<ProductLimits?> getCloudLimits() async {
    final response = await getCloudLimitsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProductLimits',) as ProductLimits;
    
    }
    return null;
  }

  /// Get cloud products
  ///
  /// Retrieve a list of all products that are offered for Mattermost Cloud. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCloudProductsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/cloud/products';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get cloud products
  ///
  /// Retrieve a list of all products that are offered for Mattermost Cloud. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 
  Future<List<Product>?> getCloudProducts() async {
    final response = await getCloudProductsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Product>') as List)
        .cast<Product>()
        .toList();

    }
    return null;
  }

  /// Get cloud invoice PDF
  ///
  /// Retrieves the PDF for the invoice passed as parameter ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.30 __Note:__ This is intended for internal use and is subject to change. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] invoiceId (required):
  ///   Invoice ID
  Future<Response> getInvoiceForSubscriptionAsPdfWithHttpInfo(String invoiceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/cloud/subscription/invoices/{invoice_id}/pdf'
      .replaceAll('{invoice_id}', invoiceId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get cloud invoice PDF
  ///
  /// Retrieves the PDF for the invoice passed as parameter ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.30 __Note:__ This is intended for internal use and is subject to change. 
  ///
  /// Parameters:
  ///
  /// * [String] invoiceId (required):
  ///   Invoice ID
  Future<void> getInvoiceForSubscriptionAsPdf(String invoiceId,) async {
    final response = await getInvoiceForSubscriptionAsPdfWithHttpInfo(invoiceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get cloud subscription invoices
  ///
  /// Retrieves the invoices for the subscription bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.30 __Note:__ This is intended for internal use and is subject to change. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getInvoicesForSubscriptionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/cloud/subscription/invoices';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get cloud subscription invoices
  ///
  /// Retrieves the invoices for the subscription bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.30 __Note:__ This is intended for internal use and is subject to change. 
  Future<List<Invoice>?> getInvoicesForSubscription() async {
    final response = await getInvoicesForSubscriptionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Invoice>') as List)
        .cast<Invoice>()
        .toList();

    }
    return null;
  }

  /// Get cloud subscription
  ///
  /// Retrieves the subscription information for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSubscriptionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/cloud/subscription';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get cloud subscription
  ///
  /// Retrieves the subscription information for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 
  Future<Subscription?> getSubscription() async {
    final response = await getSubscriptionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Subscription',) as Subscription;
    
    }
    return null;
  }

  /// GET endpoint for cloud subscription stats
  ///
  /// An endpoint that returns stats about a user's subscription. For example remaining seats on a free tier ##### Permissions This endpoint should only be accessed in a Mattermost Cloud instance __Minimum server version__: 5.34 __Note:__ This is intended for internal use and is subject to change. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSubscriptionStatsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/cloud/subscription/stats';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// GET endpoint for cloud subscription stats
  ///
  /// An endpoint that returns stats about a user's subscription. For example remaining seats on a free tier ##### Permissions This endpoint should only be accessed in a Mattermost Cloud instance __Minimum server version__: 5.34 __Note:__ This is intended for internal use and is subject to change. 
  Future<SubscriptionStats?> getSubscriptionStats() async {
    final response = await getSubscriptionStatsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SubscriptionStats',) as SubscriptionStats;
    
    }
    return null;
  }

  /// POST endpoint for CWS Webhooks
  ///
  /// An endpoint for processing webhooks from the Customer Portal ##### Permissions This endpoint should only be accessed by CWS, in a Mattermost Cloud instance __Minimum server version__: 5.30 __Note:__ This is intended for internal use and is subject to change. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postEndpointForCwsWebhooksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/cloud/webhook';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// POST endpoint for CWS Webhooks
  ///
  /// An endpoint for processing webhooks from the Customer Portal ##### Permissions This endpoint should only be accessed by CWS, in a Mattermost Cloud instance __Minimum server version__: 5.30 __Note:__ This is intended for internal use and is subject to change. 
  Future<void> postEndpointForCwsWebhooks() async {
    final response = await postEndpointForCwsWebhooksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// POST endpoint for triggering sending emails to admin with request to upgrade workspace
  ///
  /// An endpoint that triggers sending emails to all sys admins to request them to upgrade the workspace when a user tries to invite more users ##### Permissions This endpoint should only be accessed in a Mattermost Cloud instance __Minimum server version__: 5.34 __Note:__ This is intended for internal use and is subject to change. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> sendAdminUpgradeRequestEmailWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/cloud/subscription/limitreached/invite';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// POST endpoint for triggering sending emails to admin with request to upgrade workspace
  ///
  /// An endpoint that triggers sending emails to all sys admins to request them to upgrade the workspace when a user tries to invite more users ##### Permissions This endpoint should only be accessed in a Mattermost Cloud instance __Minimum server version__: 5.34 __Note:__ This is intended for internal use and is subject to change. 
  Future<void> sendAdminUpgradeRequestEmail() async {
    final response = await sendAdminUpgradeRequestEmailWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// POST endpoint for triggering sending emails to admin with request to upgrade workspace
  ///
  /// An endpoint that triggers sending emails to all sys admins to request them to upgrade the workspace when a user tries to join the workspace ##### Permissions This endpoint should only be accessed in a Mattermost Cloud instance __Minimum server version__: 5.34 __Note:__ This is intended for internal use and is subject to change. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> sendAdminUpgradeRequestEmailOnJoinWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/cloud/subscription/limitreached/join';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// POST endpoint for triggering sending emails to admin with request to upgrade workspace
  ///
  /// An endpoint that triggers sending emails to all sys admins to request them to upgrade the workspace when a user tries to join the workspace ##### Permissions This endpoint should only be accessed in a Mattermost Cloud instance __Minimum server version__: 5.34 __Note:__ This is intended for internal use and is subject to change. 
  Future<void> sendAdminUpgradeRequestEmailOnJoin() async {
    final response = await sendAdminUpgradeRequestEmailOnJoinWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update cloud customer
  ///
  /// Updates the customer information for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.29 __Note:__ This is intended for internal use and is subject to change. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UpdateCloudCustomerRequest] updateCloudCustomerRequest (required):
  ///   Customer patch including information to update
  Future<Response> updateCloudCustomerWithHttpInfo(UpdateCloudCustomerRequest updateCloudCustomerRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/cloud/customer';

    // ignore: prefer_final_locals
    Object? postBody = updateCloudCustomerRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update cloud customer
  ///
  /// Updates the customer information for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.29 __Note:__ This is intended for internal use and is subject to change. 
  ///
  /// Parameters:
  ///
  /// * [UpdateCloudCustomerRequest] updateCloudCustomerRequest (required):
  ///   Customer patch including information to update
  Future<CloudCustomer?> updateCloudCustomer(UpdateCloudCustomerRequest updateCloudCustomerRequest,) async {
    final response = await updateCloudCustomerWithHttpInfo(updateCloudCustomerRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CloudCustomer',) as CloudCustomer;
    
    }
    return null;
  }

  /// Update cloud customer address
  ///
  /// Updates the company address for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.29 __Note:__ This is intended for internal use and is subject to change. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Address] address (required):
  ///   Company address information to update
  Future<Response> updateCloudCustomerAddressWithHttpInfo(Address address,) async {
    // ignore: prefer_const_declarations
    final path = r'/cloud/customer/address';

    // ignore: prefer_final_locals
    Object? postBody = address;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update cloud customer address
  ///
  /// Updates the company address for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.29 __Note:__ This is intended for internal use and is subject to change. 
  ///
  /// Parameters:
  ///
  /// * [Address] address (required):
  ///   Company address information to update
  Future<CloudCustomer?> updateCloudCustomerAddress(Address address,) async {
    final response = await updateCloudCustomerAddressWithHttpInfo(address,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CloudCustomer',) as CloudCustomer;
    
    }
    return null;
  }
}
