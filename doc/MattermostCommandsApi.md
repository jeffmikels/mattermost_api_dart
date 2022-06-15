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
> MmCommand createCommand(mmCreateCommandRequest)

Create a command

Create a command for a team. ##### Permissions `manage_slash_commands` for the team the command is in. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final MmCreateCommandRequest mmCreateCommandRequest = MmCreateCommandRequest(); // MmCreateCommandRequest | command to be created

try {
  final MmCommand? result = await client.commands.createCommand(mmCreateCommandRequest); // await the Future<MmCommand?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostCommandsApi->createCommand: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmCreateCommandRequest** | [**MmCreateCommandRequest**](MmCreateCommandRequest.md)| command to be created | 

### Return type

[**MmCommand**](MmCommand.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **deleteCommand**
> MmStatusOK deleteCommand(commandId)

Delete a command

Delete a command based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String commandId = 'commandId_example'; // String | ID of the command to delete

try {
  final MmStatusOK? result = await client.commands.deleteCommand(commandId); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostCommandsApi->deleteCommand: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commandId** | **String**| ID of the command to delete | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **executeCommand**
> MmCommandResponse executeCommand(mmExecuteCommandRequest)

Execute a command

Execute a command on a team. ##### Permissions Must have `use_slash_commands` permission for the team the command is in. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final MmExecuteCommandRequest mmExecuteCommandRequest = MmExecuteCommandRequest(); // MmExecuteCommandRequest | command to be executed

try {
  final MmCommandResponse? result = await client.commands.executeCommand(mmExecuteCommandRequest); // await the Future<MmCommandResponse?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostCommandsApi->executeCommand: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmExecuteCommandRequest** | [**MmExecuteCommandRequest**](MmExecuteCommandRequest.md)| command to be executed | 

### Return type

[**MmCommandResponse**](MmCommandResponse.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getCommandById**
> MmCommand getCommandById(commandId)

Get a command

Get a command definition based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in.  __Minimum server version__: 5.22 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String commandId = 'commandId_example'; // String | ID of the command to get

try {
  final MmCommand? result = await client.commands.getCommandById(commandId); // await the Future<MmCommand?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostCommandsApi->getCommandById: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commandId** | **String**| ID of the command to get | 

### Return type

[**MmCommand**](MmCommand.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **listAutocompleteCommands**
> List<MmCommand> listAutocompleteCommands(teamId)

List autocomplete commands

List autocomplete commands in the team. ##### Permissions `view_team` for the team. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String teamId = 'teamId_example'; // String | Team GUID

try {
  final List&lt;MmCommand&gt;? result = await client.commands.listAutocompleteCommands(teamId); // await the Future<List&lt;MmCommand&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostCommandsApi->listAutocompleteCommands: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 

### Return type

[**List<MmCommand>**](MmCommand.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **listCommandAutocompleteSuggestions**
> List<MmAutocompleteSuggestion> listCommandAutocompleteSuggestions(teamId, userInput)

List commands' autocomplete data

List commands' autocomplete data for the team. ##### Permissions `view_team` for the team. __Minimum server version__: 5.24 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String teamId = 'teamId_example'; // String | Team GUID
final String userInput = 'userInput_example'; // String | String inputted by the user.

try {
  final List&lt;MmAutocompleteSuggestion&gt;? result = await client.commands.listCommandAutocompleteSuggestions(teamId, userInput); // await the Future<List&lt;MmAutocompleteSuggestion&gt;?>
  print(result ?? 'resolved to null');
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

[**List<MmAutocompleteSuggestion>**](MmAutocompleteSuggestion.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **listCommands**
> List<MmCommand> listCommands(teamId, customOnly)

List commands for a team

List commands for a team. ##### Permissions `manage_slash_commands` if need list custom commands. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String teamId = 'teamId_example'; // String | The team id.
final bool customOnly = true; // bool | To get only the custom commands. If set to false will get the custom if the user have access plus the system commands, otherwise just the system commands. 

try {
  final List&lt;MmCommand&gt;? result = await client.commands.listCommands(teamId, customOnly); // await the Future<List&lt;MmCommand&gt;?>
  print(result ?? 'resolved to null');
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

[**List<MmCommand>**](MmCommand.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **moveCommand**
> MmStatusOK moveCommand(commandId, mmMoveCommandRequest)

Move a command

Move a command to a different team based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is currently in and the destination team.  __Minimum server version__: 5.22 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String commandId = 'commandId_example'; // String | ID of the command to move
final MmMoveCommandRequest mmMoveCommandRequest = MmMoveCommandRequest(); // MmMoveCommandRequest | 

try {
  final MmStatusOK? result = await client.commands.moveCommand(commandId, mmMoveCommandRequest); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostCommandsApi->moveCommand: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commandId** | **String**| ID of the command to move | 
 **mmMoveCommandRequest** | [**MmMoveCommandRequest**](MmMoveCommandRequest.md)|  | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **regenCommandToken**
> MmRegenCommandToken200Response regenCommandToken(commandId)

Generate a new token

Generate a new token for the command based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String commandId = 'commandId_example'; // String | ID of the command to generate the new token

try {
  final MmRegenCommandToken200Response? result = await client.commands.regenCommandToken(commandId); // await the Future<MmRegenCommandToken200Response?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostCommandsApi->regenCommandToken: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commandId** | **String**| ID of the command to generate the new token | 

### Return type

[**MmRegenCommandToken200Response**](MmRegenCommandToken200Response.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateCommand**
> MmCommand updateCommand(commandId, mmCommand)

Update a command

Update a single command based on command id string and Command struct. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in. 

### Example
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String commandId = 'commandId_example'; // String | ID of the command to update
final MmCommand mmCommand = MmCommand(); // MmCommand | 

try {
  final MmCommand? result = await client.commands.updateCommand(commandId, mmCommand); // await the Future<MmCommand?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostCommandsApi->updateCommand: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commandId** | **String**| ID of the command to update | 
 **mmCommand** | [**MmCommand**](MmCommand.md)|  | 

### Return type

[**MmCommand**](MmCommand.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

