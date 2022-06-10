//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:mattermost_api/api.dart';
import 'package:test/test.dart';


/// tests for CloudApi
void main() {
  // final instance = CloudApi();

  group('tests for CloudApi', () {
    // Completes the payment setup intent
    //
    // Confirms the payment setup intent initiated when posting to `/cloud/payment`. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 
    //
    //Future confirmCustomerPayment({ String stripeSetupIntentId }) async
    test('test confirmCustomerPayment', () async {
      // TODO
    });

    // Create a customer setup payment intent
    //
    // Creates a customer setup payment intent for the given Mattermost cloud installation.  ##### Permissions  Must have `manage_system` permission and be licensed for Cloud.  __Minimum server version__: 5.28 __Note:__: This is intended for internal use and is subject to change. 
    //
    //Future<PaymentSetupIntent> createCustomerPayment() async
    test('test createCustomerPayment', () async {
      // TODO
    });

    // Get cloud customer
    //
    // Retrieves the customer information for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 
    //
    //Future<CloudCustomer> getCloudCustomer() async
    test('test getCloudCustomer', () async {
      // TODO
    });

    // Get cloud workspace limits
    //
    // Retrieve any cloud workspace limits applicable to this instance. ##### Permissions Must be authenticated and be licensed for Cloud. __Minimum server version__: 7.0 __Note:__ This is intended for internal use and is subject to change. 
    //
    //Future<ProductLimits> getCloudLimits() async
    test('test getCloudLimits', () async {
      // TODO
    });

    // Get cloud products
    //
    // Retrieve a list of all products that are offered for Mattermost Cloud. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 
    //
    //Future<List<Product>> getCloudProducts() async
    test('test getCloudProducts', () async {
      // TODO
    });

    // Get cloud invoice PDF
    //
    // Retrieves the PDF for the invoice passed as parameter ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.30 __Note:__ This is intended for internal use and is subject to change. 
    //
    //Future getInvoiceForSubscriptionAsPdf(String invoiceId) async
    test('test getInvoiceForSubscriptionAsPdf', () async {
      // TODO
    });

    // Get cloud subscription invoices
    //
    // Retrieves the invoices for the subscription bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.30 __Note:__ This is intended for internal use and is subject to change. 
    //
    //Future<List<Invoice>> getInvoicesForSubscription() async
    test('test getInvoicesForSubscription', () async {
      // TODO
    });

    // Get cloud subscription
    //
    // Retrieves the subscription information for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 
    //
    //Future<Subscription> getSubscription() async
    test('test getSubscription', () async {
      // TODO
    });

    // GET endpoint for cloud subscription stats
    //
    // An endpoint that returns stats about a user's subscription. For example remaining seats on a free tier ##### Permissions This endpoint should only be accessed in a Mattermost Cloud instance __Minimum server version__: 5.34 __Note:__ This is intended for internal use and is subject to change. 
    //
    //Future<SubscriptionStats> getSubscriptionStats() async
    test('test getSubscriptionStats', () async {
      // TODO
    });

    // POST endpoint for CWS Webhooks
    //
    // An endpoint for processing webhooks from the Customer Portal ##### Permissions This endpoint should only be accessed by CWS, in a Mattermost Cloud instance __Minimum server version__: 5.30 __Note:__ This is intended for internal use and is subject to change. 
    //
    //Future postEndpointForCwsWebhooks() async
    test('test postEndpointForCwsWebhooks', () async {
      // TODO
    });

    // POST endpoint for triggering sending emails to admin with request to upgrade workspace
    //
    // An endpoint that triggers sending emails to all sys admins to request them to upgrade the workspace when a user tries to invite more users ##### Permissions This endpoint should only be accessed in a Mattermost Cloud instance __Minimum server version__: 5.34 __Note:__ This is intended for internal use and is subject to change. 
    //
    //Future sendAdminUpgradeRequestEmail() async
    test('test sendAdminUpgradeRequestEmail', () async {
      // TODO
    });

    // POST endpoint for triggering sending emails to admin with request to upgrade workspace
    //
    // An endpoint that triggers sending emails to all sys admins to request them to upgrade the workspace when a user tries to join the workspace ##### Permissions This endpoint should only be accessed in a Mattermost Cloud instance __Minimum server version__: 5.34 __Note:__ This is intended for internal use and is subject to change. 
    //
    //Future sendAdminUpgradeRequestEmailOnJoin() async
    test('test sendAdminUpgradeRequestEmailOnJoin', () async {
      // TODO
    });

    // Update cloud customer
    //
    // Updates the customer information for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.29 __Note:__ This is intended for internal use and is subject to change. 
    //
    //Future<CloudCustomer> updateCloudCustomer(UpdateCloudCustomerRequest updateCloudCustomerRequest) async
    test('test updateCloudCustomer', () async {
      // TODO
    });

    // Update cloud customer address
    //
    // Updates the company address for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.29 __Note:__ This is intended for internal use and is subject to change. 
    //
    //Future<CloudCustomer> updateCloudCustomerAddress(Address address) async
    test('test updateCloudCustomerAddress', () async {
      // TODO
    });

  });
}
