//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostCloudApi {
  final MattermostApiClient apiClient;

  MattermostCloudApi(this.apiClient);

  /// Completes the payment setup intent
  ///
  /// Confirms the payment setup intent initiated when posting to `/cloud/payment`. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] stripeSetupIntentId:
  Future<Response> confirmCustomerPaymentWithHttpInfo({
    String? stripeSetupIntentId,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/cloud/payment/confirm';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
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
  Future<void> confirmCustomerPayment({
    String? stripeSetupIntentId,
  }) async {
    final response = await confirmCustomerPaymentWithHttpInfo(
      stripeSetupIntentId: stripeSetupIntentId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
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

    final queryParams = <MMQueryParam>[];
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
  Future<MMPaymentSetupIntent?> createCustomerPayment() async {
    final response = await createCustomerPaymentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MMPaymentSetupIntent',
      ) as MMPaymentSetupIntent;
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

    final queryParams = <MMQueryParam>[];
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
  Future<MMCloudCustomer?> getCloudCustomer() async {
    final response = await getCloudCustomerWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MMCloudCustomer',
      ) as MMCloudCustomer;
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

    final queryParams = <MMQueryParam>[];
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
  Future<MMProductLimits?> getCloudLimits() async {
    final response = await getCloudLimitsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MMProductLimits',
      ) as MMProductLimits;
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

    final queryParams = <MMQueryParam>[];
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
  Future<List<MMProduct>?> getCloudProducts() async {
    final response = await getCloudProductsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MMProduct>') as List).cast<MMProduct>().toList();
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
  Future<Response> getInvoiceForSubscriptionAsPdfWithHttpInfo(
    String invoiceId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/cloud/subscription/invoices/{invoice_id}/pdf'.replaceAll('{invoice_id}', invoiceId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
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
  Future<void> getInvoiceForSubscriptionAsPdf(
    String invoiceId,
  ) async {
    final response = await getInvoiceForSubscriptionAsPdfWithHttpInfo(
      invoiceId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
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

    final queryParams = <MMQueryParam>[];
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
  Future<List<MMInvoice>?> getInvoicesForSubscription() async {
    final response = await getInvoicesForSubscriptionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MMInvoice>') as List).cast<MMInvoice>().toList();
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

    final queryParams = <MMQueryParam>[];
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
  Future<MMSubscription?> getSubscription() async {
    final response = await getSubscriptionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MMSubscription',
      ) as MMSubscription;
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

    final queryParams = <MMQueryParam>[];
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
  Future<MMSubscriptionStats?> getSubscriptionStats() async {
    final response = await getSubscriptionStatsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MMSubscriptionStats',
      ) as MMSubscriptionStats;
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

    final queryParams = <MMQueryParam>[];
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
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
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

    final queryParams = <MMQueryParam>[];
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
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
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

    final queryParams = <MMQueryParam>[];
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
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
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
  /// * [MMUpdateCloudCustomerRequest] mMUpdateCloudCustomerRequest (required):
  ///   Customer patch including information to update
  Future<Response> updateCloudCustomerWithHttpInfo(
    MMUpdateCloudCustomerRequest mMUpdateCloudCustomerRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/cloud/customer';

    // ignore: prefer_final_locals
    Object? postBody = mMUpdateCloudCustomerRequest;

    final queryParams = <MMQueryParam>[];
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
  /// * [MMUpdateCloudCustomerRequest] mMUpdateCloudCustomerRequest (required):
  ///   Customer patch including information to update
  Future<MMCloudCustomer?> updateCloudCustomer(
    MMUpdateCloudCustomerRequest mMUpdateCloudCustomerRequest,
  ) async {
    final response = await updateCloudCustomerWithHttpInfo(
      mMUpdateCloudCustomerRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MMCloudCustomer',
      ) as MMCloudCustomer;
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
  /// * [MMAddress] mMAddress (required):
  ///   Company address information to update
  Future<Response> updateCloudCustomerAddressWithHttpInfo(
    MMAddress mMAddress,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/cloud/customer/address';

    // ignore: prefer_final_locals
    Object? postBody = mMAddress;

    final queryParams = <MMQueryParam>[];
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
  /// * [MMAddress] mMAddress (required):
  ///   Company address information to update
  Future<MMCloudCustomer?> updateCloudCustomerAddress(
    MMAddress mMAddress,
  ) async {
    final response = await updateCloudCustomerAddressWithHttpInfo(
      mMAddress,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MMCloudCustomer',
      ) as MMCloudCustomer;
    }
    return null;
  }
}
