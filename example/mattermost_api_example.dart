import 'dart:convert';
import 'package:mattermost_api/api.dart';

void debug(Object s) {
  var enc = JsonEncoder.withIndent('  ');
  print(enc.convert(s));
}

void main() async {
  late MattermostApiClient client;
  client = MattermostApiClient(
    basePath: 'https://your-server.tld/api/v4',
    authMethod: MMOAuth(accessToken: 'YOUR TOKEN'),
  );
  client = MattermostApiClient(
    basePath: 'https://your-server.tld/api/v4',
    authMethod: MMHttpBasicAuthentication(
      username: 'USERNAME',
      password: 'PASSWORD',
    ),
  );
  client = MattermostApiClient(
    basePath: 'https://your-server.tld/api/v4',
    authMethod: MMApiKeyAuthentication(
      MMHttpLocation.query,
      'PARAM_NAME',
      'API_KEY',
      apiKeyPrefix: 'PREFIX',
    ),
  );
  client = MattermostApiClient(
    basePath: 'https://your-server.tld/api/v4',
    authMethod: MMHttpBearerAuthentication('YOUR TOKEN'),
  );
  client = MattermostApiClient(
    basePath: 'https://your-server.tld/api/v4',
    authMethod: MMHttpBearerAuthentication(() => 'ACCESS TOKEN FROM FUNCTION'),
  );

  client.channels.getChannel('1234567');
}
