# Mattermost API Client in Dart

This is an implementation of a [Mattermost](https://mattermost.com) [API](https://api.mattermost.com/) client in dart. It is not the only one, but it has significant advantages over others.

The other package called `mattermost_dart` depends on the `dio` library and therefore also on a number of others, but I think libraries should have the minimal number of dependencies possible, so this implementation depends only on the `http` library.

Additionally, there are incompatibilities between the `openapi-generator-cli` and the published mattermost `swagger` document. I have resolved many of those issues. See below.

## Features

This library is a full implementation of the [Mattermost Client API 4.0.0](https://api.mattermost.com/) in Dart.

## Getting started

Install the package

```bash
dart pub add mattermost_api
```

Import the package in your Dart file

```dart
import 'package:mattermost_api/api.dart';
```

## Creating a client

```dart
var mmClient = MattermostApiClient(
  basePath: '$mmBaseUrl/api/v4',
  authentication: MmHttpBearerAuthentication(config.mmToken),
);
```

Available authentication classes:

-   `MmApiKeyAuthentication`
-   `MmHttpBasicAuthentication`
-   `MmHttpBearerAuthentication`
-   `MmOAuth`

## Accessing the API endpoints

There are many sub-apis available on Mattermost and they are exposed by getters on the `MattermostApiClient` object or may be created on their own.

Make your requests:

```dart
// using getters on the client instance
MmTeam? team = await mmClient.teams.getTeamByName(myTeamName);
MmChannel? channel = await mmClient.channels.getChannel(myChannelId);

// using the classes directly
var channelApi = MattermostChannelsApi(mmClient)
MmChannel? channel = await channelApi.getChannel(myChannelId);
```

Every API model in the library is prefixed with the word `Mattermost` and every object class is prefixed with the letters `Mm` so if you are using an IDE, simply start typing either `Mattermost` or `Mm` and your IDE should pick up everything that's available.

## More Details

[Read the Auto-Generated Documentation](GENERATED_README.md).
[Read the Dart Api Docs](https://pub.dev/documentation/mattermost_api/latest/mattermost.api/MattermostApiClientExtension.html)

## Issues Resolved

### mattermost swagger json schema errors

The mattermost swagger json document available here: `https://api.mattermost.com/dcf9982f-0c24-4e65-8bcc-112a276758aa` has some OpenAPI schema errors in it. I have fixed them and my version is located here in this repo as `mattermost-swagger.json`.

Additionally, the swagger document inconsistently capitalizes `ldap` in tags (endpoints). The code generator sees them as different apis, but we only want one, so I have modified the swagger document to make them all `LDAP` instead.

### dart codegen problems

Additionally, when using the official `openapi-generator-cli` (version 6.0), the automatic Dart code generation has a few problems:

-   The underscore query variable allowed when retrieving a user's profile image resolves to a space character in the resulting Dart code and breaks compilation.
-   The generated code sometimes attempts to return objects of the wrong type.
-   The generated code fails to properly recognize empty OpenAPI `object` types as a `Map<dynamic>` and treats them as `Object` instead.
-   The generated code expects that we want the entire library to be automatically generated, and it creates a `pubspec.yaml` and everything. Since there are problems with the automatic code generation, it's better and safer to wrap the auto-generated code in a library we control.

I have resolved these problems by forking the `openapi-generator-cli` [here](https://github.com/jeffmikels/openapi-generator) to change the Dart code generator Java class and templates. Also, I have created my own build script (`codegen.py`) that does the following:

-   processes the swagger json using my custom build of `openapi-generator-cli` and my new templates (also in this repo under `openapi_mattermost_templates`).
-   makes a few additional replacements in the generated code
-   ignores the generated pubspec and instead copies the generated `lib`, `test`, and `doc` files into their final resting place.
