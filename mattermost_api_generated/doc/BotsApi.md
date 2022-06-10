# mattermost_api.api.BotsApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assignBot**](BotsApi.md#assignbot) | **POST** /bots/{bot_user_id}/assign/{user_id} | Assign a bot to a user
[**convertBotToUser**](BotsApi.md#convertbottouser) | **POST** /bots/{bot_user_id}/convert_to_user | Convert a bot into a user
[**convertUserToBot**](BotsApi.md#convertusertobot) | **POST** /users/{user_id}/convert_to_bot | Convert a user into a bot
[**createBot**](BotsApi.md#createbot) | **POST** /bots | Create a bot
[**deleteBotIconImage**](BotsApi.md#deleteboticonimage) | **DELETE** /bots/{bot_user_id}/icon | Delete bot's LHS icon image
[**disableBot**](BotsApi.md#disablebot) | **POST** /bots/{bot_user_id}/disable | Disable a bot
[**enableBot**](BotsApi.md#enablebot) | **POST** /bots/{bot_user_id}/enable | Enable a bot
[**getBot**](BotsApi.md#getbot) | **GET** /bots/{bot_user_id} | Get a bot
[**getBotIconImage**](BotsApi.md#getboticonimage) | **GET** /bots/{bot_user_id}/icon | Get bot's LHS icon
[**getBots**](BotsApi.md#getbots) | **GET** /bots | Get bots
[**patchBot**](BotsApi.md#patchbot) | **PUT** /bots/{bot_user_id} | Patch a bot
[**setBotIconImage**](BotsApi.md#setboticonimage) | **POST** /bots/{bot_user_id}/icon | Set bot's LHS icon image


# **assignBot**
> Bot assignBot(botUserId, userId)

Assign a bot to a user

Assign a bot to a specified user. ##### Permissions Must have `manage_bots` permission.  __Minimum server version__: 5.10 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BotsApi();
final botUserId = botUserId_example; // String | Bot user ID
final userId = userId_example; // String | The user ID to assign the bot to.

try {
    final result = api_instance.assignBot(botUserId, userId);
    print(result);
} catch (e) {
    print('Exception when calling BotsApi->assignBot: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **botUserId** | **String**| Bot user ID | 
 **userId** | **String**| The user ID to assign the bot to. | 

### Return type

[**Bot**](Bot.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertBotToUser**
> StatusOK convertBotToUser(botUserId, convertBotToUserRequest, setSystemAdmin)

Convert a bot into a user

Convert a bot into a user.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BotsApi();
final botUserId = botUserId_example; // String | Bot user ID
final convertBotToUserRequest = ConvertBotToUserRequest(); // ConvertBotToUserRequest | Data to be used in the user creation
final setSystemAdmin = true; // bool | Whether to give the user the system admin role.

try {
    final result = api_instance.convertBotToUser(botUserId, convertBotToUserRequest, setSystemAdmin);
    print(result);
} catch (e) {
    print('Exception when calling BotsApi->convertBotToUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **botUserId** | **String**| Bot user ID | 
 **convertBotToUserRequest** | [**ConvertBotToUserRequest**](ConvertBotToUserRequest.md)| Data to be used in the user creation | 
 **setSystemAdmin** | **bool**| Whether to give the user the system admin role. | [optional] [default to false]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertUserToBot**
> StatusOK convertUserToBot(userId)

Convert a user into a bot

Convert a user into a bot.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BotsApi();
final userId = userId_example; // String | User GUID

try {
    final result = api_instance.convertUserToBot(userId);
    print(result);
} catch (e) {
    print('Exception when calling BotsApi->convertUserToBot: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createBot**
> Bot createBot(createBotRequest)

Create a bot

Create a new bot account on the system. Username is required. ##### Permissions Must have `create_bot` permission. __Minimum server version__: 5.10 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BotsApi();
final createBotRequest = CreateBotRequest(); // CreateBotRequest | Bot to be created

try {
    final result = api_instance.createBot(createBotRequest);
    print(result);
} catch (e) {
    print('Exception when calling BotsApi->createBot: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createBotRequest** | [**CreateBotRequest**](CreateBotRequest.md)| Bot to be created | 

### Return type

[**Bot**](Bot.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBotIconImage**
> StatusOK deleteBotIconImage(botUserId)

Delete bot's LHS icon image

Delete bot's LHS icon image based on bot_user_id string parameter. ##### Permissions Must have `manage_bots` permission. __Minimum server version__: 5.14 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BotsApi();
final botUserId = botUserId_example; // String | Bot user ID

try {
    final result = api_instance.deleteBotIconImage(botUserId);
    print(result);
} catch (e) {
    print('Exception when calling BotsApi->deleteBotIconImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **botUserId** | **String**| Bot user ID | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disableBot**
> Bot disableBot(botUserId)

Disable a bot

Disable a bot. ##### Permissions Must have `manage_bots` permission.  __Minimum server version__: 5.10 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BotsApi();
final botUserId = botUserId_example; // String | Bot user ID

try {
    final result = api_instance.disableBot(botUserId);
    print(result);
} catch (e) {
    print('Exception when calling BotsApi->disableBot: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **botUserId** | **String**| Bot user ID | 

### Return type

[**Bot**](Bot.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enableBot**
> Bot enableBot(botUserId)

Enable a bot

Enable a bot. ##### Permissions Must have `manage_bots` permission.  __Minimum server version__: 5.10 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BotsApi();
final botUserId = botUserId_example; // String | Bot user ID

try {
    final result = api_instance.enableBot(botUserId);
    print(result);
} catch (e) {
    print('Exception when calling BotsApi->enableBot: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **botUserId** | **String**| Bot user ID | 

### Return type

[**Bot**](Bot.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBot**
> Bot getBot(botUserId, includeDeleted)

Get a bot

Get a bot specified by its bot id. ##### Permissions Must have `read_bots` permission for bots you are managing, and `read_others_bots` permission for bots others are managing. __Minimum server version__: 5.10 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BotsApi();
final botUserId = botUserId_example; // String | Bot user ID
final includeDeleted = true; // bool | If deleted bots should be returned.

try {
    final result = api_instance.getBot(botUserId, includeDeleted);
    print(result);
} catch (e) {
    print('Exception when calling BotsApi->getBot: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **botUserId** | **String**| Bot user ID | 
 **includeDeleted** | **bool**| If deleted bots should be returned. | [optional] 

### Return type

[**Bot**](Bot.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBotIconImage**
> getBotIconImage(botUserId)

Get bot's LHS icon

Get a bot's LHS icon image based on bot_user_id string parameter. ##### Permissions Must be logged in. __Minimum server version__: 5.14 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BotsApi();
final botUserId = botUserId_example; // String | Bot user ID

try {
    api_instance.getBotIconImage(botUserId);
} catch (e) {
    print('Exception when calling BotsApi->getBotIconImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **botUserId** | **String**| Bot user ID | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBots**
> List<Bot> getBots(page, perPage, includeDeleted, onlyOrphaned)

Get bots

Get a page of a list of bots. ##### Permissions Must have `read_bots` permission for bots you are managing, and `read_others_bots` permission for bots others are managing. __Minimum server version__: 5.10 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BotsApi();
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of users per page. There is a maximum limit of 200 users per page.
final includeDeleted = true; // bool | If deleted bots should be returned.
final onlyOrphaned = true; // bool | When true, only orphaned bots will be returned. A bot is consitered orphaned if it's owner has been deactivated.

try {
    final result = api_instance.getBots(page, perPage, includeDeleted, onlyOrphaned);
    print(result);
} catch (e) {
    print('Exception when calling BotsApi->getBots: $e\n');
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

[**List<Bot>**](Bot.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchBot**
> Bot patchBot(botUserId, createBotRequest)

Patch a bot

Partially update a bot by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must have `manage_bots` permission.  __Minimum server version__: 5.10 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BotsApi();
final botUserId = botUserId_example; // String | Bot user ID
final createBotRequest = CreateBotRequest(); // CreateBotRequest | Bot to be created

try {
    final result = api_instance.patchBot(botUserId, createBotRequest);
    print(result);
} catch (e) {
    print('Exception when calling BotsApi->patchBot: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **botUserId** | **String**| Bot user ID | 
 **createBotRequest** | [**CreateBotRequest**](CreateBotRequest.md)| Bot to be created | 

### Return type

[**Bot**](Bot.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setBotIconImage**
> StatusOK setBotIconImage(botUserId, image)

Set bot's LHS icon image

Set a bot's LHS icon image based on bot_user_id string parameter. Icon image must be SVG format, all other formats are rejected. ##### Permissions Must have `manage_bots` permission. __Minimum server version__: 5.14 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BotsApi();
final botUserId = botUserId_example; // String | Bot user ID
final image = BINARY_DATA_HERE; // MultipartFile | SVG icon image to be uploaded

try {
    final result = api_instance.setBotIconImage(botUserId, image);
    print(result);
} catch (e) {
    print('Exception when calling BotsApi->setBotIconImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **botUserId** | **String**| Bot user ID | 
 **image** | **MultipartFile**| SVG icon image to be uploaded | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

