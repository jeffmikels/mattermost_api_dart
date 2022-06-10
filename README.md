# mattermost_api

The package `mattermost_dart` depends on the `dio` library, and I think libraries should have the minimal number of dependencies possible.

This package depends on the `http` library because it is supported by `dart.dev` directly.

# Issues

The mattermost swagger json document available here: `https://api.mattermost.com/dcf9982f-0c24-4e65-8bcc-112a276758aa` has some OpenAPI schema errors in it. I have fixed them and my version is located here in this repo as `mattermost-swagger.json`.

Additionally, the automatic Dart conversion has a few problems:

- The generated code puts `api/ldap_api.dart` into the library parts twice.
- The underscore query variable used in retrieving a user's profile image resolves to a space character in the resulting Dart code.
- The generated code sometimes attempts to return objects of the wrong type.
- The generated code fails to properly recognize empty OpenAPI `object` types as a `Map<dynamic>` and treats them as `Object`
- The generated code expects that we want the entire library to be automatically generated, and it creates a `pubspec.yaml` and everything. Since there are problems with the automatic code generation, it's better and safer to wrap the auto-generated code in a library we control.


I have resolved these problems by creating an automatic build script that does the following:

- processes the swagger json as normal
- remove the second copy of `part 'api/ldap_api.dart';` from the `api.dart` file
- makes the needed replacements in the generated code
- moves the `lib`, `test`, and `doc` files into their final resting place.
