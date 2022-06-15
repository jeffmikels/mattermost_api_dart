//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMApiKeyAuthentication implements MMAuthentication {
  MMApiKeyAuthentication(this.location, this.paramName, this.apiKey, {this.apiKeyPrefix = ''});

  /// `location` can be 'query', 'header', or 'cookie'
  final MMHttpLocation location;

  /// `paramName` is the name of the parameter to use for sending the api key
  final String paramName;

  /// if set, the `apiKeyPrefix` will be prepended to the `apiKey`
  /// and separated by a space character
  String apiKeyPrefix = '';

  String apiKey = '';

  @override
  void applyToParams(List<MMQueryParam> queryParams, Map<String, String> headerParams) {
    final paramValue = apiKeyPrefix.isEmpty ? apiKey : '$apiKeyPrefix $apiKey';

    if (paramValue.isNotEmpty) {
      if (location == MMHttpLocation.query) {
        queryParams.add(MMQueryParam(paramName, paramValue));
      } else if (location == MMHttpLocation.header) {
        headerParams[paramName] = paramValue;
      } else if (location == MMHttpLocation.cookie) {
        headerParams.update(
          'Cookie',
          (existingCookie) => '$existingCookie; $paramName=$paramValue',
          ifAbsent: () => '$paramName=$paramValue',
        );
      }
    }
  }
}
