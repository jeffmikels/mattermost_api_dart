# mattermost_api.model.MattermostOpenInteractiveDialogRequestDialog

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
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


