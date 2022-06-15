# mattermost_api.api.MattermostBotsApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assignBot**](MattermostBotsApi.md#assignbot) | **POST** /bots/{bot_user_id}/assign/{user_id} | Assign a bot to a user
[**convertBotToUser**](MattermostBotsApi.md#convertbottouser) | **POST** /bots/{bot_user_id}/convert_to_user | Convert a bot into a user
[**convertUserToBot**](MattermostBotsApi.md#convertusertobot) | **POST** /users/{user_id}/convert_to_bot | Convert a user into a bot
[**createBot**](MattermostBotsApi.md#createbot) | **POST** /bots | Create a bot
[**deleteBotIconImage**](MattermostBotsApi.md#deleteboticonimage) | **DELETE** /bots/{bot_user_id}/icon | Delete bot's LHS icon image
[**disableBot**](MattermostBotsApi.md#disablebot) | **POST** /bots/{bot_user_id}/disable | Disable a bot
[**enableBot**](MattermostBotsApi.md#enablebot) | **POST** /bots/{bot_user_id}/enable | Enable a bot
[**getBot**](MattermostBotsApi.md#getbot) | **GET** /bots/{bot_user_id} | Get a bot
[**getBotIconImage**](MattermostBotsApi.md#getboticonimage) | **GET** /bots/{bot_user_id}/icon | Get bot's LHS icon
[**getBots**](MattermostBotsApi.md#getbots) | **GET** /bots | Get bots
[**patchBot**](MattermostBotsApi.md#patchbot) | **PUT** /bots/{bot_user_id} | Patch a bot
[**setBotIconImage**](MattermostBotsApi.md#setboticonimage) | **POST** /bots/{bot_user_id}/icon | Set bot's LHS icon image


# **assignBot**
> MmBot assignBot(botUserId, userId)

Assign a bot to a user

Assign a bot to a specified user. ##### Permissions Must have `manage_bots` permission.  __Minimum server version__: 5.10 

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


final String botUserId = 'botUserId_example'; // String | Bot user ID
final String userId = 'userId_example'; // String | The user ID to assign the bot to.

try {
  final MmBot? result = await client.bots.assignBot(botUserId, userId); // await the Future<MmBot?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostBotsApi->assignBot: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **botUserId** | **String**| Bot user ID | 
 **userId** | **String**| The user ID to assign the bot to. | 

### Return type

[**MmBot**](MmBot.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **convertBotToUser**
> MmStatusOK convertBotToUser(botUserId, mmConvertBotToUserRequest, setSystemAdmin)

Convert a bot into a user

Convert a bot into a user.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 

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


final String botUserId = 'botUserId_example'; // String | Bot user ID
final MmConvertBotToUserRequest mmConvertBotToUserRequest = MmConvertBotToUserRequest(); // MmConvertBotToUserRequest | Data to be used in the user creation
final bool setSystemAdmin = true; // bool | Whether to give the user the system admin role.

try {
  final MmStatusOK? result = await client.bots.convertBotToUser(botUserId, mmConvertBotToUserRequest, setSystemAdmin); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostBotsApi->convertBotToUser: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **botUserId** | **String**| Bot user ID | 
 **mmConvertBotToUserRequest** | [**MmConvertBotToUserRequest**](MmConvertBotToUserRequest.md)| Data to be used in the user creation | 
 **setSystemAdmin** | **bool**| Whether to give the user the system admin role. | [optional] [default to false]

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **convertUserToBot**
> MmStatusOK convertUserToBot(userId)

Convert a user into a bot

Convert a user into a bot.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 

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


final String userId = 'userId_example'; // String | User GUID

try {
  final MmStatusOK? result = await client.bots.convertUserToBot(userId); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostBotsApi->convertUserToBot: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **createBot**
> MmBot createBot(mmCreateBotRequest)

Create a bot

Create a new bot account on the system. Username is required. ##### Permissions Must have `create_bot` permission. __Minimum server version__: 5.10 

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


final MmCreateBotRequest mmCreateBotRequest = MmCreateBotRequest(); // MmCreateBotRequest | Bot to be created

try {
  final MmBot? result = await client.bots.createBot(mmCreateBotRequest); // await the Future<MmBot?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostBotsApi->createBot: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmCreateBotRequest** | [**MmCreateBotRequest**](MmCreateBotRequest.md)| Bot to be created | 

### Return type

[**MmBot**](MmBot.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **deleteBotIconImage**
> MmStatusOK deleteBotIconImage(botUserId)

Delete bot's LHS icon image

Delete bot's LHS icon image based on bot_user_id string parameter. ##### Permissions Must have `manage_bots` permission. __Minimum server version__: 5.14 

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


final String botUserId = 'botUserId_example'; // String | Bot user ID

try {
  final MmStatusOK? result = await client.bots.deleteBotIconImage(botUserId); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostBotsApi->deleteBotIconImage: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **botUserId** | **String**| Bot user ID | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **disableBot**
> MmBot disableBot(botUserId)

Disable a bot

Disable a bot. ##### Permissions Must have `manage_bots` permission.  __Minimum server version__: 5.10 

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


final String botUserId = 'botUserId_example'; // String | Bot user ID

try {
  final MmBot? result = await client.bots.disableBot(botUserId); // await the Future<MmBot?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostBotsApi->disableBot: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **botUserId** | **String**| Bot user ID | 

### Return type

[**MmBot**](MmBot.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **enableBot**
> MmBot enableBot(botUserId)

Enable a bot

Enable a bot. ##### Permissions Must have `manage_bots` permission.  __Minimum server version__: 5.10 

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


final String botUserId = 'botUserId_example'; // String | Bot user ID

try {
  final MmBot? result = await client.bots.enableBot(botUserId); // await the Future<MmBot?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostBotsApi->enableBot: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **botUserId** | **String**| Bot user ID | 

### Return type

[**MmBot**](MmBot.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getBot**
> MmBot getBot(botUserId, includeDeleted)

Get a bot

Get a bot specified by its bot id. ##### Permissions Must have `read_bots` permission for bots you are managing, and `read_others_bots` permission for bots others are managing. __Minimum server version__: 5.10 

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


final String botUserId = 'botUserId_example'; // String | Bot user ID
final bool includeDeleted = true; // bool | If deleted bots should be returned.

try {
  final MmBot? result = await client.bots.getBot(botUserId, includeDeleted); // await the Future<MmBot?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostBotsApi->getBot: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **botUserId** | **String**| Bot user ID | 
 **includeDeleted** | **bool**| If deleted bots should be returned. | [optional] 

### Return type

[**MmBot**](MmBot.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getBotIconImage**
> getBotIconImage(botUserId)

Get bot's LHS icon

Get a bot's LHS icon image based on bot_user_id string parameter. ##### Permissions Must be logged in. __Minimum server version__: 5.14 

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


final String botUserId = 'botUserId_example'; // String | Bot user ID

try {
  await client.bots.getBotIconImage(botUserId); 
} catch (e) {
  print('Exception when calling MattermostBotsApi->getBotIconImage: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **botUserId** | **String**| Bot user ID | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getBots**
> List<MmBot> getBots(page, perPage, includeDeleted, onlyOrphaned)

Get bots

Get a page of a list of bots. ##### Permissions Must have `read_bots` permission for bots you are managing, and `read_others_bots` permission for bots others are managing. __Minimum server version__: 5.10 

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


final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of users per page. There is a maximum limit of 200 users per page.
final bool includeDeleted = true; // bool | If deleted bots should be returned.
final bool onlyOrphaned = true; // bool | When true, only orphaned bots will be returned. A bot is consitered orphaned if it's owner has been deactivated.

try {
  final List&lt;MmBot&gt;? result = await client.bots.getBots(page, perPage, includeDeleted, onlyOrphaned); // await the Future<List&lt;MmBot&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostBotsApi->getBots: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of users per page. There is a maximum limit of 200 users per page. | [optional] [default to 60]
 **includeDeleted** | **bool**| If deleted bots should be returned. | [optional] 
 **onlyOrphaned** | **bool**| When true, only orphaned bots will be returned. A bot is consitered orphaned if it's owner has been deactivated. | [optional] 

### Return type

[**List<MmBot>**](MmBot.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **patchBot**
> MmBot patchBot(botUserId, mmCreateBotRequest)

Patch a bot

Partially update a bot by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must have `manage_bots` permission.  __Minimum server version__: 5.10 

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


final String botUserId = 'botUserId_example'; // String | Bot user ID
final MmCreateBotRequest mmCreateBotRequest = MmCreateBotRequest(); // MmCreateBotRequest | Bot to be created

try {
  final MmBot? result = await client.bots.patchBot(botUserId, mmCreateBotRequest); // await the Future<MmBot?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostBotsApi->patchBot: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **botUserId** | **String**| Bot user ID | 
 **mmCreateBotRequest** | [**MmCreateBotRequest**](MmCreateBotRequest.md)| Bot to be created | 

### Return type

[**MmBot**](MmBot.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **setBotIconImage**
> MmStatusOK setBotIconImage(botUserId, image)

Set bot's LHS icon image

Set a bot's LHS icon image based on bot_user_id string parameter. Icon image must be SVG format, all other formats are rejected. ##### Permissions Must have `manage_bots` permission. __Minimum server version__: 5.14 

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


final String botUserId = 'botUserId_example'; // String | Bot user ID
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | SVG icon image to be uploaded

try {
  final MmStatusOK? result = await client.bots.setBotIconImage(botUserId, image); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostBotsApi->setBotIconImage: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **botUserId** | **String**| Bot user ID | 
 **image** | **MultipartFile**| SVG icon image to be uploaded | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

