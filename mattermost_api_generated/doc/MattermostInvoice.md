# mattermost_api.model.MattermostInvoice

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


MattermostInvoice = await client.invoice.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**number** | **String** |  | [optional] 
**createAt** | **int** |  | [optional] 
**total** | **int** |  | [optional] 
**tax** | **int** |  | [optional] 
**status** | **String** |  | [optional] 
**periodStart** | **int** |  | [optional] 
**periodEnd** | **int** |  | [optional] 
**subscriptionId** | **String** |  | [optional] 
**item** | [**List<MattermostInvoiceLineItem>**](MattermostInvoiceLineItem.md) |  | [optional] [default to const []]

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


