//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostOAuth implements MattermostAuthentication {
  MattermostOAuth({this.accessToken = ''});

  String accessToken;

  @override
  void applyToParams(List<MattermostQueryParam> queryParams, Map<String, String> headerParams) {
    if (accessToken.isNotEmpty) {
      headerParams['Authorization'] = 'Bearer $accessToken';
    }
  }
}
