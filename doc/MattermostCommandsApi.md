# mattermost_api.api.MattermostCommandsApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCommand**](MattermostCommandsApi.md#createcommand) | **POST** /commands | Create a command
[**deleteCommand**](MattermostCommandsApi.md#deletecommand) | **DELETE** /commands/{command_id} | Delete a command
[**executeCommand**](MattermostCommandsApi.md#executecommand) | **POST** /commands/execute | Execute a command
[**getCommandById**](MattermostCommandsApi.md#getcommandbyid) | **GET** /commands/{command_id} | Get a command
[**listAutocompleteCommands**](MattermostCommandsApi.md#listautocompletecommands) | **GET** /teams/{team_id}/commands/autocomplete | List autocomplete commands
[**listCommandAutocompleteSuggestions**](MattermostCommandsApi.md#listcommandautocompletesuggestions) | **GET** /teams/{team_id}/commands/autocomplete_suggestions | List commands' autocomplete data
[**listCommands**](MattermostCommandsApi.md#listcommands) | **GET** /commands | List commands for a team
[**moveCommand**](MattermostCommandsApi.md#movecommand) | **PUT** /commands/{command_id}/move | Move a command
[**regenCommandToken**](MattermostCommandsApi.md#regencommandtoken) | **PUT** /commands/{command_id}/regen_token | Generate a new token
[**updateCommand**](MattermostCommandsApi.md#updatecommand) | **PUT** /commands/{command_id} | Update a command


# **createCommand**
> MattermostCommand createCommand(mattermostCreateCommandRequest)

Create a command

Create a command for a team. ##### Permissions `manage_slash_commands` for the team the command is in. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostCommandsApi api instance
// final MattermostCommandsApi api_instance = client.commands

final mattermostCreateCommandRequest = MattermostCreateCommandRequest(); // MattermostCreateCommandRequest | command to be created

try {
    final result = await client.commands.createCommand(mattermostCreateCommandRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostCommandsApi->createCommand: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostCreateCommandRequest** | [**MattermostCreateCommandRequest**](MattermostCreateCommandRequest.md)| command to be created | 

### Return type

[**MattermostCommand**](MattermostCommand.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCommand**
> MattermostStatusOK deleteCommand(commandId)

Delete a command

Delete a command based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostCommandsApi api instance
// final MattermostCommandsApi api_instance = client.commands

final commandId = commandId_example; // String | ID of the command to delete

try {
    final result = await client.commands.deleteCommand(commandId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostCommandsApi->deleteCommand: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commandId** | **String**| ID of the command to delete | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **executeCommand**
> MattermostCommandResponse executeCommand(mattermostExecuteCommandRequest)

Execute a command

Execute a command on a team. ##### Permissions Must have `use_slash_commands` permission for the team the command is in. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostCommandsApi api instance
// final MattermostCommandsApi api_instance = client.commands

final mattermostExecuteCommandRequest = MattermostExecuteCommandRequest(); // MattermostExecuteCommandRequest | command to be executed

try {
    final result = await client.commands.executeCommand(mattermostExecuteCommandRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostCommandsApi->executeCommand: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostExecuteCommandRequest** | [**MattermostExecuteCommandRequest**](MattermostExecuteCommandRequest.md)| command to be executed | 

### Return type

[**MattermostCommandResponse**](MattermostCommandResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCommandById**
> MattermostCommand getCommandById(commandId)

Get a command

Get a command definition based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in.  __Minimum server version__: 5.22 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostCommandsApi api instance
// final MattermostCommandsApi api_instance = client.commands

final commandId = commandId_example; // String | ID of the command to get

try {
    final result = await client.commands.getCommandById(commandId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostCommandsApi->getCommandById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commandId** | **String**| ID of the command to get | 

### Return type

[**MattermostCommand**](MattermostCommand.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAutocompleteCommands**
> List<MattermostCommand> listAutocompleteCommands(teamId)

List autocomplete commands

List autocomplete commands in the team. ##### Permissions `view_team` for the team. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostCommandsApi api instance
// final MattermostCommandsApi api_instance = client.commands

final teamId = teamId_example; // String | Team GUID

try {
    final result = await client.commands.listAutocompleteCommands(teamId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostCommandsApi->listAutocompleteCommands: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 

### Return type

[**List<MattermostCommand>**](MattermostCommand.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCommandAutocompleteSuggestions**
> List<MattermostAutocompleteSuggestion> listCommandAutocompleteSuggestions(teamId, userInput)

List commands' autocomplete data

List commands' autocomplete data for the team. ##### Permissions `view_team` for the team. __Minimum server version__: 5.24 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostCommandsApi api instance
// final MattermostCommandsApi api_instance = client.commands

final teamId = teamId_example; // String | Team GUID
final userInput = userInput_example; // String | String inputted by the user.

try {
    final result = await client.commands.listCommandAutocompleteSuggestions(teamId, userInput);
    print(result);
} catch (e) {
    print('Exception when calling MattermostCommandsApi->listCommandAutocompleteSuggestions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **userInput** | **String**| String inputted by the user. | 

### Return type

[**List<MattermostAutocompleteSuggestion>**](MattermostAutocompleteSuggestion.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCommands**
> List<MattermostCommand> listCommands(teamId, customOnly)

List commands for a team

List commands for a team. ##### Permissions `manage_slash_commands` if need list custom commands. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostCommandsApi api instance
// final MattermostCommandsApi api_instance = client.commands

final teamId = teamId_example; // String | The team id.
final customOnly = true; // bool | To get only the custom commands. If set to false will get the custom if the user have access plus the system commands, otherwise just the system commands. 

try {
    final result = await client.commands.listCommands(teamId, customOnly);
    print(result);
} catch (e) {
    print('Exception when calling MattermostCommandsApi->listCommands: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| The team id. | [optional] 
 **customOnly** | **bool**| To get only the custom commands. If set to false will get the custom if the user have access plus the system commands, otherwise just the system commands.  | [optional] [default to false]

### Return type

[**List<MattermostCommand>**](MattermostCommand.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **moveCommand**
> MattermostStatusOK moveCommand(commandId, mattermostMoveCommandRequest)

Move a command

Move a command to a different team based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is currently in and the destination team.  __Minimum server version__: 5.22 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostCommandsApi api instance
// final MattermostCommandsApi api_instance = client.commands

final commandId = commandId_example; // String | ID of the command to move
final mattermostMoveCommandRequest = MattermostMoveCommandRequest(); // MattermostMoveCommandRequest | 

try {
    final result = await client.commands.moveCommand(commandId, mattermostMoveCommandRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostCommandsApi->moveCommand: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commandId** | **String**| ID of the command to move | 
 **mattermostMoveCommandRequest** | [**MattermostMoveCommandRequest**](MattermostMoveCommandRequest.md)|  | 

### Return type

[**MattermostStatusOK**](MattermostStatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **regenCommandToken**
> MattermostRegenCommandToken200Response regenCommandToken(commandId)

Generate a new token

Generate a new token for the command based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostCommandsApi api instance
// final MattermostCommandsApi api_instance = client.commands

final commandId = commandId_example; // String | ID of the command to generate the new token

try {
    final result = await client.commands.regenCommandToken(commandId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostCommandsApi->regenCommandToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commandId** | **String**| ID of the command to generate the new token | 

### Return type

[**MattermostRegenCommandToken200Response**](MattermostRegenCommandToken200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCommand**
> MattermostCommand updateCommand(commandId, mattermostCommand)

Update a command

Update a single command based on command id string and Command struct. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// TODO: Set up the client
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MattermostHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Then, access MattermostCommandsApi api instance
// final MattermostCommandsApi api_instance = client.commands

final commandId = commandId_example; // String | ID of the command to update
final mattermostCommand = MattermostCommand(); // MattermostCommand | 

try {
    final result = await client.commands.updateCommand(commandId, mattermostCommand);
    print(result);
} catch (e) {
    print('Exception when calling MattermostCommandsApi->updateCommand: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commandId** | **String**| ID of the command to update | 
 **mattermostCommand** | [**MattermostCommand**](MattermostCommand.md)|  | 

### Return type

[**MattermostCommand**](MattermostCommand.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

