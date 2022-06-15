# mattermost_api.model.MattermostFileInfo

## Load the model package
```dart
import 'package:mattermost_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier for this file | [optional] 
**userId** | **String** | The ID of the user that uploaded this file | [optional] 
**postId** | **String** | If this file is attached to a post, the ID of that post | [optional] 
**createAt** | **int** | The time in milliseconds a file was created | [optional] 
**updateAt** | **int** | The time in milliseconds a file was last updated | [optional] 
**deleteAt** | **int** | The time in milliseconds a file was deleted | [optional] 
**name** | **String** | The name of the file | [optional] 
**extension_** | **String** | The extension at the end of the file name | [optional] 
**size** | **int** | The size of the file in bytes | [optional] 
**mimeType** | **String** | The MIME type of the file | [optional] 
**width** | **int** | If this file is an image, the width of the file | [optional] 
**height** | **int** | If this file is an image, the height of the file | [optional] 
**hasPreviewImage** | **bool** | If this file is an image, whether or not it has a preview-sized version | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


