# mattermost_api.model.MattermostCloudCustomer

## Load the package and get an instance of this class.
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
late MattermostApiClient client;

// example client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
);


MattermostCloudCustomer = await client.cloudCustomer.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**creatorId** | **String** |  | [optional] 
**createAt** | **int** |  | [optional] 
**email** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**numEmployees** | **String** |  | [optional] 
**contactFirstName** | **String** |  | [optional] 
**contactLastName** | **String** |  | [optional] 
**billingAddress** | [**MattermostAddress**](MattermostAddress.md) |  | [optional] 
**companyAddress** | [**MattermostAddress**](MattermostAddress.md) |  | [optional] 
**paymentMethod** | [**MattermostPaymentMethod**](MattermostPaymentMethod.md) |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


