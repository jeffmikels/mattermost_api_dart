# mattermost_api.api.CommandsApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCommand**](CommandsApi.md#createcommand) | **POST** /commands | Create a command
[**deleteCommand**](CommandsApi.md#deletecommand) | **DELETE** /commands/{command_id} | Delete a command
[**executeCommand**](CommandsApi.md#executecommand) | **POST** /commands/execute | Execute a command
[**getCommandById**](CommandsApi.md#getcommandbyid) | **GET** /commands/{command_id} | Get a command
[**listAutocompleteCommands**](CommandsApi.md#listautocompletecommands) | **GET** /teams/{team_id}/commands/autocomplete | List autocomplete commands
[**listCommandAutocompleteSuggestions**](CommandsApi.md#listcommandautocompletesuggestions) | **GET** /teams/{team_id}/commands/autocomplete_suggestions | List commands' autocomplete data
[**listCommands**](CommandsApi.md#listcommands) | **GET** /commands | List commands for a team
[**moveCommand**](CommandsApi.md#movecommand) | **PUT** /commands/{command_id}/move | Move a command
[**regenCommandToken**](CommandsApi.md#regencommandtoken) | **PUT** /commands/{command_id}/regen_token | Generate a new token
[**updateCommand**](CommandsApi.md#updatecommand) | **PUT** /commands/{command_id} | Update a command


# **createCommand**
> Command createCommand(createCommandRequest)

Create a command

Create a command for a team. ##### Permissions `manage_slash_commands` for the team the command is in. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandsApi();
final createCommandRequest = CreateCommandRequest(); // CreateCommandRequest | command to be created

try {
    final result = api_instance.createCommand(createCommandRequest);
    print(result);
} catch (e) {
    print('Exception when calling CommandsApi->createCommand: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createCommandRequest** | [**CreateCommandRequest**](CreateCommandRequest.md)| command to be created | 

### Return type

[**Command**](Command.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCommand**
> StatusOK deleteCommand(commandId)

Delete a command

Delete a command based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandsApi();
final commandId = commandId_example; // String | ID of the command to delete

try {
    final result = api_instance.deleteCommand(commandId);
    print(result);
} catch (e) {
    print('Exception when calling CommandsApi->deleteCommand: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commandId** | **String**| ID of the command to delete | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **executeCommand**
> CommandResponse executeCommand(executeCommandRequest)

Execute a command

Execute a command on a team. ##### Permissions Must have `use_slash_commands` permission for the team the command is in. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandsApi();
final executeCommandRequest = ExecuteCommandRequest(); // ExecuteCommandRequest | command to be executed

try {
    final result = api_instance.executeCommand(executeCommandRequest);
    print(result);
} catch (e) {
    print('Exception when calling CommandsApi->executeCommand: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **executeCommandRequest** | [**ExecuteCommandRequest**](ExecuteCommandRequest.md)| command to be executed | 

### Return type

[**CommandResponse**](CommandResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCommandById**
> Command getCommandById(commandId)

Get a command

Get a command definition based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in.  __Minimum server version__: 5.22 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandsApi();
final commandId = commandId_example; // String | ID of the command to get

try {
    final result = api_instance.getCommandById(commandId);
    print(result);
} catch (e) {
    print('Exception when calling CommandsApi->getCommandById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commandId** | **String**| ID of the command to get | 

### Return type

[**Command**](Command.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAutocompleteCommands**
> List<Command> listAutocompleteCommands(teamId)

List autocomplete commands

List autocomplete commands in the team. ##### Permissions `view_team` for the team. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandsApi();
final teamId = teamId_example; // String | Team GUID

try {
    final result = api_instance.listAutocompleteCommands(teamId);
    print(result);
} catch (e) {
    print('Exception when calling CommandsApi->listAutocompleteCommands: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 

### Return type

[**List<Command>**](Command.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCommandAutocompleteSuggestions**
> List<AutocompleteSuggestion> listCommandAutocompleteSuggestions(teamId, userInput)

List commands' autocomplete data

List commands' autocomplete data for the team. ##### Permissions `view_team` for the team. __Minimum server version__: 5.24 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandsApi();
final teamId = teamId_example; // String | Team GUID
final userInput = userInput_example; // String | String inputted by the user.

try {
    final result = api_instance.listCommandAutocompleteSuggestions(teamId, userInput);
    print(result);
} catch (e) {
    print('Exception when calling CommandsApi->listCommandAutocompleteSuggestions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **userInput** | **String**| String inputted by the user. | 

### Return type

[**List<AutocompleteSuggestion>**](AutocompleteSuggestion.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCommands**
> List<Command> listCommands(teamId, customOnly)

List commands for a team

List commands for a team. ##### Permissions `manage_slash_commands` if need list custom commands. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandsApi();
final teamId = teamId_example; // String | The team id.
final customOnly = true; // bool | To get only the custom commands. If set to false will get the custom if the user have access plus the system commands, otherwise just the system commands. 

try {
    final result = api_instance.listCommands(teamId, customOnly);
    print(result);
} catch (e) {
    print('Exception when calling CommandsApi->listCommands: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| The team id. | [optional] 
 **customOnly** | **bool**| To get only the custom commands. If set to false will get the custom if the user have access plus the system commands, otherwise just the system commands.  | [optional] [default to false]

### Return type

[**List<Command>**](Command.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **moveCommand**
> StatusOK moveCommand(commandId, moveCommandRequest)

Move a command

Move a command to a different team based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is currently in and the destination team.  __Minimum server version__: 5.22 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandsApi();
final commandId = commandId_example; // String | ID of the command to move
final moveCommandRequest = MoveCommandRequest(); // MoveCommandRequest | 

try {
    final result = api_instance.moveCommand(commandId, moveCommandRequest);
    print(result);
} catch (e) {
    print('Exception when calling CommandsApi->moveCommand: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commandId** | **String**| ID of the command to move | 
 **moveCommandRequest** | [**MoveCommandRequest**](MoveCommandRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **regenCommandToken**
> RegenCommandToken200Response regenCommandToken(commandId)

Generate a new token

Generate a new token for the command based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandsApi();
final commandId = commandId_example; // String | ID of the command to generate the new token

try {
    final result = api_instance.regenCommandToken(commandId);
    print(result);
} catch (e) {
    print('Exception when calling CommandsApi->regenCommandToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commandId** | **String**| ID of the command to generate the new token | 

### Return type

[**RegenCommandToken200Response**](RegenCommandToken200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCommand**
> Command updateCommand(commandId, command)

Update a command

Update a single command based on command id string and Command struct. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommandsApi();
final commandId = commandId_example; // String | ID of the command to update
final command = Command(); // Command | 

try {
    final result = api_instance.updateCommand(commandId, command);
    print(result);
} catch (e) {
    print('Exception when calling CommandsApi->updateCommand: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commandId** | **String**| ID of the command to update | 
 **command** | [**Command**](Command.md)|  | 

### Return type

[**Command**](Command.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

