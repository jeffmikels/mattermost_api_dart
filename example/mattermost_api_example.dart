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
    authMethod: MmOAuth(accessToken: 'YOUR TOKEN'),
  );
  client = MattermostApiClient(
    basePath: 'https://your-server.tld/api/v4',
    authMethod: MmHttpBasicAuthentication(
      username: 'USERNAME',
      password: 'PASSWORD',
    ),
  );
  client = MattermostApiClient(
    basePath: 'https://your-server.tld/api/v4',
    authMethod: MmApiKeyAuthentication(
      MmHttpLocation.query,
      'PARAM_NAME',
      'API_KEY',
      apiKeyPrefix: 'PREFIX',
    ),
  );
  client = MattermostApiClient(
    basePath: 'https://your-server.tld/api/v4',
    authMethod: MmHttpBearerAuthentication('YOUR TOKEN'),
  );
  client = MattermostApiClient(
    basePath: 'https://your-server.tld/api/v4',
    authMethod: MmHttpBearerAuthentication(() => 'ACCESS TOKEN FROM FUNCTION'),
  );

  client.channels.getChannel('1234567');

  // Websocket Connection Example
  var token = 'BEARER_TOKEN';
  var url = 'wss://BASE_URL/api/v4/websocket';
  var ws = MattermostWebsocketClient(
    url,
    headers: {'Authorization': 'Bearer $token'},
    onEvent: (mm) {
      debug(mm);
    },
  );

  await Future.delayed(Duration(seconds: 2));
  var res = await ws.userTyping('CHANNEL_ID_WHERE_USER_IS_TYPING');
  debug(res);
  Future.delayed(Duration(seconds: 2));
  res = await ws.getStatuses();
  debug(res);
  await Future.delayed(Duration(seconds: 2));
  res = await ws.getStatusesByIds(['USER_ID_TO_GET']);
  debug(res);
}
