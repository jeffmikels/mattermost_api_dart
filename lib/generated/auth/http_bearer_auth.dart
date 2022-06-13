//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

typedef MattermostHttpBearerAuthProvider = String Function();

class MattermostHttpBearerAuthentication implements MattermostAuthentication {
  /// Constucts [HttpBearerAuthentication] from an optional [accessToken] which will be included in request headers
  /// using the `Authorization: Bearer [token]` method.
  MattermostHttpBearerAuthentication([dynamic accessToken]) {
    this.accessToken = accessToken;
  }

  dynamic _accessToken;

  dynamic get accessToken => _accessToken;

  /// may be a String or a Function that returns a string.
  set accessToken(dynamic accessToken) {
    if (accessToken is! String && accessToken is! MattermostHttpBearerAuthProvider) {
      throw ArgumentError('accessToken value must be either a String or a String Function().');
    }
    _accessToken = accessToken;
  }

  @override
  void applyToParams(List<MattermostQueryParam> queryParams, Map<String, String> headerParams) {
    if (_accessToken == null) {
      return;
    }

    String accessToken;

    if (_accessToken is String) {
      accessToken = _accessToken;
    } else if (_accessToken is MattermostHttpBearerAuthProvider) {
      accessToken = _accessToken!();
    } else {
      return;
    }

    if (accessToken.isNotEmpty) {
      headerParams['Authorization'] = 'Bearer $accessToken';
    }
  }
}
