//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

typedef MmHttpBearerAuthProvider = String Function();

class MmHttpBearerAuthentication implements MmAuthentication {
  /// Constucts [HttpBearerAuthentication] from an optional [accessToken] which will be included in request headers
  /// using the `Authorization: Bearer [token]` method.
  MmHttpBearerAuthentication([dynamic accessToken]) {
    this.accessToken = accessToken;
  }

  dynamic _accessToken;

  dynamic get accessToken => _accessToken;

  /// may be a String or a Function that returns a string.
  set accessToken(dynamic accessToken) {
    if (accessToken is! String && accessToken is! MmHttpBearerAuthProvider) {
      throw ArgumentError('accessToken value must be either a String or a String Function().');
    }
    _accessToken = accessToken;
  }

  @override
  void applyToParams(List<MmQueryParam> queryParams, Map<String, String> headerParams) {
    if (_accessToken == null) {
      return;
    }

    String accessToken;

    if (_accessToken is String) {
      accessToken = _accessToken;
    } else if (_accessToken is MmHttpBearerAuthProvider) {
      accessToken = _accessToken!();
    } else {
      return;
    }

    if (accessToken.isNotEmpty) {
      headerParams['Authorization'] = 'Bearer $accessToken';
    }
  }
}
