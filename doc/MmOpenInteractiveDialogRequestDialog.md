# mattermost_api.model.MmOpenInteractiveDialogRequestDialog

## Load the package and get an instance of this class.
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//

// example client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


MmOpenInteractiveDialogRequestDialog example = await client.openInteractiveDialogRequestDialog.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**callbackId** | **String** | Set an ID that will be included when the dialog is submitted | [optional] 
**title** | **String** | Title of the dialog | 
**introductionText** | **String** | Markdown formatted introductory paragraph | [optional] 
**elements** | [**List<Map>**](Map.md) | Input elements, see https://docs.mattermost.com/developer/interactive-dialogs.html#elements | [default to const []]
**submitLabel** | **String** | Label on the submit button | [optional] 
**notifyOnCancel** | **bool** | Set true to receive payloads when user cancels a dialog | [optional] 
**state** | **String** | Set some state to be echoed back with the dialog submission | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


