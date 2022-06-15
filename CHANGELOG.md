## 0.1.4

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
