## 0.2.0

-   Implemented a websocket client for real-time updates from Mattermost.
-   websocket client supports all websocket API actions with functions returning `Future<MmWsReply>`.
-   websocket client wraps all websocket events in child classes of `MmWsEvent`.
-   also added `MmWsEventPosted` class to wrap websocket `posted` events.

## 0.1.5

-   removed extraneous docs, and fixed capitalization of the class prefix. Was `MM`, but now is `Mm` because it makes the automatically generated variable names more pleasant.

## 0.1.3

-   Changed the authentication variable in the `MattermostApiClient` to `authMethod` and made it read-only.
-   Removed the `MattermostApiClientExtension` by putting the API getters in the class itself.
-   Changed the enum from `HttpLocation` to `MMHttpLocation`
-   Renamed all modules to have `MM` as a prefix instead of `Mattermost`. `Mattermost` remains the prefix for all Api classes.

## 0.1.2

Just a couple more documentation improvements.

## 0.1.1

This version has been passed through dart format, and the documentation has been improved.

## 0.1.0

Initial version.
