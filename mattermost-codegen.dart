import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

// global configuration objects
var specFile = 'mattermost-swagger.json';
var specUrl = 'https://api.mattermost.com/dcf9982f-0c24-4e65-8bcc-112a276758aa';
var targetFile = 'lib/src/api_v4_0_0_generated.dart';

// correct some path specs for consistency with parameter names
var pathCorrections = {
  '/v1/stage/layout/{id}': '/v1/stage/layout/{layout_id}',
  '/v1/library/{id}': '/v1/library/{library_id}',
  '/v1/stage/layout/{id}/thumbnail': '/v1/stage/layout/{layout_id}/thumbnail',
};

// global data objects
Map<String, dynamic> spec = {};
Map<String, dynamic> pathRefs = {};

/// ========================
/// HELPER FUNCTIONS
/// ========================

extension ListStrings on List {
  /// convert every element of this list to a string
  List<String> coerceStrings() => map((e) => e.toString()).toList();
}

extension PrefixStrings on String {
  /// prefix every line of this string with a string separated by the [sep] variable
  String prefixLines(String prefix, {String sep = '\n'}) => split(sep).map((e) => '$prefix$e').join(sep);

  /// convert snake case to camel case
  String snakeToCamelCase() => replaceAllMapped(RegExp(r'_(\w)'), (match) {
        return match.group(1)!.toUpperCase();
      });
}

var prettyJson = JsonEncoder.withIndent('  ').convert;

List<String> parseRef(String refString) {
  List<String> jsonKeys = [];
  var refParts = refString.replaceFirst('#/', '').split('/');
  for (var part in refParts) {
    part = part.replaceAll('~1', '/').replaceAll('%7B', '{').replaceAll('%7D', '}');
    jsonKeys.add(part);
  }
  return jsonKeys;
}

bool isRef(obj) {
  return obj is Map && obj.length == 1 && obj['\$ref'] != null;
}

dynamic deRef(obj) {
  String? refPath;
  if (obj is String) refPath = obj;
  if (isRef(obj)) refPath = obj['\$ref'];
  if (refPath == null) return obj;

  var parts = parseRef(refPath);
  dynamic current = spec;
  for (var key in parts) {
    // print('looking for ${key} in spec file');
    if (current is List) {
      try {
        int p = int.parse(key);
        if (current.length > p) current = current[p];
      } on FormatException {
        throw FormatException('used a non numeric value to index a list');
      }
    } else if (current is Map) {
      current = current[key];
    }

    if (current == null) throw FormatException('could not dereference $refPath');
  }
  return current;
}

/// TODO: see `clearGroupCreate`, handle requestBody/schema/properties
/// TODO: or see `timerSet`, handle requestBody/schema/oneOf
class EndpointSchema {
  bool get isOneOf => oneOf.isNotEmpty;

  String type = ''; // string, array, object, number, integer, boolean

  // sometimes `string` data might represent a `binary` object
  String format = '';

  // the items/keys required in this schema
  List<String> required = [];

  // sometimes only certain options are allowed `enum`
  List<String> options = [];

  String exampleJson = '';
  Object? example;

  List<EndpointSchema> oneOf = [];

  dynamic defaultValue;

  EndpointSchema.fromMap(Map<String, dynamic> data) {
    data = deRef(data);
    if (data['type'] == null && data['oneOf'] != null) {
      Set oneOfTypes = {};
      for (var item in data['oneOf']) {
        var e = EndpointSchema.fromMap(item);
        oneOf.add(e);
        oneOfTypes.add(e.type);
      }
      if (oneOfTypes.length == 1) type = oneOfTypes.first;
    } else {
      type = data['type'];
      defaultValue = data['default'];
      format = data['format'] ?? '';
      options.addAll(((data['enum'] ?? []) as List).coerceStrings());
      required.addAll(((data['required'] ?? []) as List).coerceStrings());
      if (data.containsKey('example')) {
        example = data['example'];
        exampleJson = JsonEncoder.withIndent('  ').convert(data['example']);
      }
    }
  }

  toJson() {
    if (isOneOf) {
      var r = [];
      for (var sub in oneOf) {
        r.add(sub.toJson());
      }
      return {'oneOf': r};
    }

    return {
      'type': type, // always required
      'required': required, // always returned
      if (format.isNotEmpty) 'format': format,
      if (defaultValue != null) 'default': defaultValue,
      if (options.isNotEmpty) 'enum': options,
      if (example != null) 'example': example,
    };
  }
}

class EndpointExample {
  String name = '';
  String summary = '';
  Object value;
  String valueJson = '';

  EndpointExample(this.name, this.summary, this.value) {
    valueJson = JsonEncoder.withIndent('  ').convert(value);
  }
}

class EndpointParam {
  String location = ''; // `in` can be 'query', 'path' or
  bool required = false;
  String name = '';
  String description = '';
  late EndpointSchema schema;
  List<EndpointExample> examples = [];

  EndpointParam.fromMap(data) {
    data = deRef(data);
    location = data['in'];
    required = data['required'] == true;
    name = data['name'];
    description = data['description'];
    schema = EndpointSchema.fromMap(data['schema']);

    var singleExample = data['example'];
    if (singleExample != null) {
      examples.add(EndpointExample(name, '', singleExample));
    }

    var someExamples = data['examples'];
    if (someExamples == null) return;

    for (var name in (someExamples as Map).keys) {
      var example = someExamples[name];
      var summary = example['summary'];
      var value = example['value'];
      examples.add(EndpointExample(name, summary, value));
    }
  }
}

class EndpointResponse {
  int code = 0;
  String description = '';
  String contentType = '';
  EndpointSchema? schema;
  List<EndpointExample> examples = [];

  EndpointResponse.fromMap(this.code, Map<String, dynamic> data) {
    data = deRef(data);
    description = data['description'] ?? data['summary'] ?? '';
    if (code == 204) contentType = 'NONE';
    if (data['content'] == null) return;
    if (data['content'].length > 1) {
      print(data);
      print('This data has multiple response content types, only using the first one.');
    }
    contentType = (data['content'] as Map).keys.first;
    if (data['content'][contentType]['schema'] == null) return;
    schema = EndpointSchema.fromMap(data['content'][contentType]['schema']);

    var singleExample = data['example'];
    if (singleExample != null) {
      examples.add(EndpointExample('', '', singleExample));
    }

    var someExamples = data['examples'];
    if (someExamples == null) return;

    for (var name in (someExamples as Map).keys) {
      var example = someExamples[name];
      var summary = example['summary'];
      var value = example['value'];
      examples.add(EndpointExample(name, summary, value));
    }
  }
}

class EndpointRequestBody {
  bool required = false;
  String contentType = '';
  late EndpointSchema schema;
  List<EndpointExample> examples = [];

  EndpointRequestBody.fromMap(Map<String, dynamic> data) {
    data = deRef(data);
    required = data['required'] == true;
    contentType = (data['content'] as Map).keys.first;
    schema = EndpointSchema.fromMap(data['content']![contentType]!['schema']!);

    var singleExample = data['content']![contentType]!['example'];
    if (singleExample != null) {
      examples.add(EndpointExample('', '', singleExample));
    }

    var someExamples = data['content']![contentType]!['examples'];
    if (someExamples == null) return;

    for (var name in (someExamples as Map).keys) {
      var example = someExamples[name];
      var summary = example['summary'];
      var value = example['value'];
      examples.add(EndpointExample(name, summary, value));
    }
  }
}

class EndpointVerb {
  // operationId
  String id = '';
  String method = '';
  String summary = '';
  String description = '';
  List<String> tags = [];
  List<EndpointParam> params = [];
  List<EndpointResponse> responses = [];
  EndpointRequestBody? requestBody;

  EndpointVerb.fromMap(this.method, Map<String, dynamic> data) {
    data = deRef(data);
    summary = data['summary'] ?? '';
    description = data['description'] ?? '';
    id = data['operationId']!;
    tags.addAll((data['tags'] as List).coerceStrings());
    for (var param in data['parameters'] ?? []) {
      params.add(EndpointParam.fromMap(param));
    }
    for (var code in ((data['responses'] ?? {}) as Map).keys) {
      var response = data['responses'][code];
      var realCode = int.tryParse(code) ?? 0;
      if (realCode == 404) continue;
      responses.add(EndpointResponse.fromMap(realCode, response));
    }
    if (data['requestBody'] != null) {
      requestBody = EndpointRequestBody.fromMap(data['requestBody']);
    }
  }
}

class Endpoint {
  String pathspec = '';
  List<EndpointVerb> verbs = [];
  Map<String, EndpointParam> params = {};

  Endpoint.fromPath(this.pathspec, Map<String, dynamic> data) {
    if (pathspec.contains('/status/update')) {
      print('break here');
    }
    // handle verbs
    var methods = data.keys.where((key) => ['get', 'post', 'patch', 'put', 'delete'].contains(key));
    verbs = methods.map((method) => EndpointVerb.fromMap(method, data[method])).toList();

    // handle root params
    for (var param in data['parameters'] ?? []) {
      param = deRef(param);
      params[param['name']] = EndpointParam.fromMap(param);
    }
  }
}

class Spec {
  late String title;
  late String version;
  late String description;
  List<Endpoint> paths = [];

  Spec.fromMap(Map<String, dynamic> spec) {
    title = spec['info']!['title']!;
    version = spec['info']!['version']!;
    description = spec['info']!['description']!;

    for (var path in (spec['paths'] as Map).keys) {
      var data = spec['paths'][path];
      paths.add(Endpoint.fromPath(path, data));
    }
  }
}

String getDartTypeFromSchemaType(String type) {
  String argType = '';
  switch (type) {
    case 'array':
      argType = 'List';
      break;
    case 'boolean':
      argType = 'bool';
      break;
    case 'object':
      argType = 'Map';
      break;
    case 'number':
      argType = 'double';
      break;
    case 'integer':
      argType = 'int';
      break;
    case 'string':
    default:
      argType = 'String';
      break;
  }
  return argType;
}

// String getDartDefaultValueFromSchema(EndpointSchema schema) {
//   String argDef = '';
//   if (schema.defaultValue != null) {
//     switch (schema.type) {
//       case 'array':
//         argDef = 'List';
//         break;
//       case 'boolean':
//         argDef = 'bool';
//         break;
//       case 'object':
//         argDef = 'Map';
//         break;
//       case 'number':
//         argDef = 'double';
//         break;
//       case 'integer':
//         argDef = 'int';
//         break;
//       case 'string':
//       default:
//         argDef = 'String';
//         break;
//     }
//   }
//   return argDef;
// }

String schemaToComment(EndpointSchema schema) {
  return prettyJson(schema);
}

String exampleToComment(EndpointExample example) {
  if (example.name.isNotEmpty) {
    return example.valueJson.contains('\n')
        ? '''Example (${example.name}):

```json
${example.valueJson}
```'''
        : '- Example (${example.name}): `${example.value}`';
  }
  return example.valueJson.contains('\n')
      ? '''Example:

```json
${example.valueJson}
```'''
      : '- Example: `${example.value}`';
}

String pathToFunctions(Endpoint path) {
  // this is the accumulator for the final output
  List<String> output = [];

  // get the path arguments from the params
  String dartPathSpec = path.pathspec.replaceAll('{', r'$').replaceAll('}', '');

  // convert snake_case to camelCase
  dartPathSpec = dartPathSpec.snakeToCamelCase();

  // Some paths have parameters at the "path" level
  // instead of at the "verb" level. We account for them.
  List<String> allVerbFunctionArgs = [];
  List<String> allVerbOptionalArgs = [];
  Map<String, String> allVerbQueryArgs = {};
  List<String> allVerbArgNames = [];
  List<String> allVerbArgComments = [];

  for (var param in path.params.values) {
    String argVar = param.name.snakeToCamelCase();
    String argType = '';

    /// types can be string, boolean, array, object, number, integer
    /// `number` types for ProPresenter usually mean 0-1
    argType = getDartTypeFromSchemaType(param.schema.type);

    // is this param describing a query variable or a path variable?
    // path variables are automatically handled by the url string
    // interpolation created above as `dartPathSpec`
    if (param.location == 'query') {
      allVerbQueryArgs[param.name] = argVar;
    }

    // is this param required or optional?
    if (param.required) {
      allVerbFunctionArgs.add('$argType $argVar');
    } else {
      allVerbOptionalArgs.add('$argType? $argVar');
    }

    allVerbArgNames.add(argVar);
    allVerbArgComments.add('''
[$argVar] (${param.required ? 'required' : 'optional'}) :
${param.description}${param.examples.isNotEmpty ? '\n' : ''}''');
    for (var example in param.examples) {
      allVerbArgComments.add(exampleToComment(example));
    }
  }

  for (var verb in path.verbs) {
    String funcName = verb.id;
    List<String> functionArgs = [...allVerbFunctionArgs];
    List<String> optionalArgs = [...allVerbOptionalArgs];
    Map<String, String> queryArgs = {...allVerbQueryArgs};
    List<String> argNames = [...allVerbArgNames];
    List<String> argComments = ['\n## PARAMETERS', ...allVerbArgComments];

    List<String> responseComments = [];
    List<String> funcComments = [];

    bool canChunk = funcName == 'statusUpdatesGet';
    bool onlyChunked = funcName == 'statusUpdatesGet';

    // handle params for this verb
    for (var param in verb.params) {
      if (param.name == 'chunked') {
        canChunk = true;
        continue;
      }
      String argVar = param.name.snakeToCamelCase();
      String argType = '';

      /// types can be string, boolean, array, object, number, integer
      /// `number` types for ProPresenter usually mean 0-1
      argType = getDartTypeFromSchemaType(param.schema.type);

      if (param.location == 'query') {
        queryArgs[param.name] = argVar;
      }
      if (param.required) {
        functionArgs.add('$argType $argVar');
      } else {
        optionalArgs.add('$argType? $argVar');
      }

      argNames.add(argVar);
      argComments.add('\n[$argVar] : ${param.description}\n');
      if (param.schema.options.isNotEmpty) {
        argComments.add('- Should be one of: ${param.schema.options.map((e) => '`$e`').join(', ')}\n');
      }
      if (param.schema.example != null) {
        argComments.add('Example: `${param.schema.example!}`');
      }
      for (var example in param.examples) {
        argComments.add(exampleToComment(example));
      }
    }

    // handle items from the request body spec
    var postArgVar = 'postBody';
    if (verb.requestBody != null) {
      var argType = getDartTypeFromSchemaType(verb.requestBody!.schema.type);
      var canmust = verb.requestBody!.required ? 'must' : 'can';
      var requiredoptional = verb.requestBody!.required ? 'required' : 'optional';
      var example = verb.requestBody!.schema.exampleJson;
      functionArgs.add('$argType $postArgVar');
      argNames.add(postArgVar);
      argComments
          .add('\n[$postArgVar] ($requiredoptional) : This is the data that $canmust be sent with this request.');
      if (example.isNotEmpty) argComments.add('\nExample:\n```json\n$example\n```');
      if (verb.requestBody!.examples.isNotEmpty) argComments.add('');
      for (var example in verb.requestBody!.examples) {
        argComments.add(exampleToComment(example));
      }
    }

    funcComments.add('''
`$funcName` -> `${path.pathspec}`

${verb.summary}
${verb.description}
''');

    // handle responses
    for (var response in verb.responses) {
      responseComments.add('''\n## RESPONSE ${response.code}:
\n${response.description}

content-type: `${response.contentType}`
''');
      if (response.schema != null) responseComments.add('\nschema:\n```json\n${prettyJson(response.schema)}\n```');
      if (response.examples.isNotEmpty) {
        responseComments.add('Examples:');
        for (var example in response.examples) {
          responseComments.add(exampleToComment(example));
        }
      }
    }

    // NOW CREATE THE FUNCTION CONTENT ITSELF
    var funcArgs = functionArgs.join(', ');
    if (optionalArgs.isNotEmpty) {
      var args = ['{${optionalArgs.join(', ')}}'];
      if (funcArgs.isNotEmpty) args.insert(0, funcArgs);
      funcArgs = args.join(', ');
    }
    funcArgs = funcArgs.trim();

    // return values can be Uint8List for image data
    // or Map<String, dynamic> for application/json data
    // or bool for expected 204 responses
    // or Stream for chunked data (handled later)
    var funcRetVal = verb.responses.isNotEmpty && verb.responses.first.contentType == 'application/json'
        ? 'Map<String, dynamic>'
        : verb.responses.first.code == 204
            ? 'bool'
            : 'Uint8List';
    var httpAccept = verb.responses.isNotEmpty && verb.responses.first.contentType.contains('image')
        ? 'image/jpeg'
        : 'application/json';

    List<String> queryPairs = [];
    queryArgs.forEach((key, value) => queryPairs.add('\'$key\' : $value.toString()'));
    var queryLine = queryArgs.isNotEmpty ? 'Map<String, dynamic> query = {${queryPairs.join(', ')}};\n' : '';
    var queryArg = queryArgs.isNotEmpty ? ', params: query' : '';
    var funcs = <String>[];

    // non-chunked versions
    if (!onlyChunked) {
      if (verb.requestBody != null) {
        // version with post
        funcs.add('''
Future<$funcRetVal> $funcName($funcArgs) async {
  String url = '$dartPathSpec';
  $queryLine
  return await call<$funcRetVal>('${verb.method}', url$queryArg, data: $postArgVar, httpAccept: '$httpAccept');
}
''');
      } else {
        // version with no posted data
        funcs.add('''
Future<$funcRetVal> $funcName($funcArgs) async {
  String url = '$dartPathSpec';
  $queryLine
  return await call<$funcRetVal>('${verb.method}', url$queryArg, httpAccept: '$httpAccept');
}
''');
      }
    }

    // now, the chunked versions
    if (canChunk) {
      queryArg = queryArgs.isNotEmpty ? '...query, ' : '';

      if (verb.requestBody != null) {
        // statusUpdatesGet is the only endpoint that takes
        // a `post` and returns chunked data
        // and it does NOT require the query argument
        funcs.add('''
Future<Stream<Map<String, dynamic>>?> $funcName($funcArgs) async {
  String url = '$dartPathSpec';
  return callStream('get', url, data: $postArgVar);
}
''');
      } else {
        // version with no posted data
        funcs.add('''
/// Streaming version of [$funcName]
Future<Stream<Map<String, dynamic>>?> ${funcName}Stream($funcArgs) async {
  String url = '$dartPathSpec';
  $queryLine
  return callStream('get', url, params: {$queryArg'chunked': 'true'});
}
''');
      }
    }

    output.add(funcComments.join('\n').replaceAll(RegExp(r'\n\n+'), '\n\n').prefixLines('/// '));
    if (argComments.length > 1) {
      output.add(argComments.join('\n').replaceAll(RegExp(r'\n\n+'), '\n\n').prefixLines('/// '));
    }
    if (responseComments.isNotEmpty) {
      output.add(responseComments.join('\n').replaceAll(RegExp(r'\n\n+'), '\n\n').prefixLines('/// '));
    }
    output.add(funcs.join('\n'));
  }
  return output.join('\n');
}

String codeGen(Spec apiSpec) {
  /// the logic of the code generator is to create a single function
  /// for every "path" action on ProPresenter...
  ///
  /// endpoints with path params should take them as function arguments
  /// endpoints with multiple verbs should yield multiple functions
  /// endpoints with chunked results should be separate functions
  ///
  /// Generated code should be commented

  List<String> functions = [];
  for (var path in apiSpec.paths) {
    functions.add(pathToFunctions(path));
  }

  return '''
/// AUTOGENERATED ON ${DateTime.now()}

import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'helpers.dart';

mixin ProApiGeneratedWrapper {
  String get host;
  int get port;

  // ProApiGeneratedWrapper(this.host, this.port);

  Uri _makeUri(String path, {Map<String, dynamic>? params}) {
    return Uri.http('\$host:\$port', path, params);
  }

  /// [call] will use the response `content-type` to automatically
  /// determine if the response should be decoded from json or
  /// returned as [Uint8List] directly.
  ///
  /// [path] should be a *relative* path according to the api.
  /// e.g. `/v1/status/updates`
  /// 
  /// [data] will be encoded to JSON even if it is already a string.
  Future call<T>(String verb, String path, {Map<String, dynamic>? params, Object? data, String? httpAccept}) async {
    httpAccept ??= 'application/json';
    var uri = _makeUri(path, params: params);
    var headers = {'content-type': 'application/json', 'accept': httpAccept};
    late http.Response r;
    var postData = data is String ? json.encode(data) : data;
    switch (verb.toLowerCase()) {
      case 'get':
        r = await http.get(uri, headers: headers);
        break;
      case 'put':
        r = await http.put(uri, headers: headers, body: postData);
        break;
      case 'delete':
        r = await http.delete(uri, headers: headers, body: postData);
        break;
      case 'post':
        r = await http.post(uri, headers: headers, body: postData);
        break;
      case 'patch':
        r = await http.patch(uri, headers: headers, body: postData);
        break;
    }
    if (r.statusCode > 199 && r.statusCode < 300) {
      if (r.statusCode == 204) return true as T;
      if (r.headers['content-type'] == 'application/json') {
        return json.decode(r.body) as T;
      } else {
        return r.bodyBytes as T;
      }
    } else {
      if (T == bool) return false;
      if (T == Map<String, dynamic>) return {};
      if (T == Uint8List) return Uint8List(0);
      throw http.ClientException(r.body);
    }
  }

  /// [callStream] acts exactly like [call], but it responds with a stream of Json Objects
  Future<Stream<Map<String, dynamic>>?> callStream(String verb, String path,
      {Map<String, dynamic>? params, Object? data}) async {
    var uri = _makeUri(path, params: params);

    // setup a manual request to manage streaming
    var client = http.Client();
    var verb = data == null ? 'GET' : 'POST';
    var r = http.Request(verb, uri);
    r.headers['content-type'] = 'application/json';
    if (data is String) {
      r.body = data;
    } else if (data != null){
      r.body = json.encode(data);
    }

    var res = await client.send(r);

    // if successful, create a stream of Json Objects
    if (res.statusCode > 199 && res.statusCode < 300) {
      /// propresenter might close this connection prematurely.
      /// we want to catch it.
      try {
        var sc = StreamController<Map<String, dynamic>>();
        var accum = '';
        var bodyListener = res.stream.listen((e) {
          accum += utf8.decode(e);
          var chunks = accum.split('\\r\\n\\r\\n');
          // if the received data ended with \\r\\n\\r\\n, the last chunk will be empty
          // if it didn't end with \\r\\n\\r\\n, then we want to leave it in the accumulator
          accum = chunks.removeLast();
          for (var chunk in chunks) {
            try {
              var decoded = json.decode(chunk);
              // print(decoded);
              sc.add({...decoded});
            } catch (e) {
              // print('JSON ERROR: \$e');
            }
          }
        });

        // cleanup stream when the server has stopped sending data
        bodyListener.onDone(() {
          sc.isClosed ? null : sc.close();
        });

        // close http connection when the listener to the stream cancels
        sc.onCancel = () {
          bodyListener.cancel();
          client.close();
        };
        return sc.stream;
      } on http.ClientException catch (e) {
        debug(e);
        return null;
      }
    } else {
      // we had an error of some kind, but we used a streaming request
      // so we wait until all the response data has arrived before throwing
      // the error.
      var err = await _awaitBody(res.stream).timeout(Duration(seconds: 2), onTimeout: () => '"stream timeout"');
      if (err != 'stream timeout' && res.headers['content-type'] == 'application/json') {
        throw http.ClientException(json.decode(err));
      }
      throw http.ClientException(err);
    }
    // return null;
  }

  Future<String> _awaitBody(http.ByteStream s) {
    var accum = <int>[];
    var completer = Completer<String>();
    s.listen((bytes) => accum.addAll(bytes)).onDone(() {
      completer.complete(utf8.decode(accum));
    });
    return completer.future;
  }

${functions.join('\n').prefixLines('  ')}

}
''';
}

Future getLocalSpec(String specFile) async {
  spec = json.decode(File(specFile).readAsStringSync());
}

Future getRemoteSpec([String? specFile]) async {
  var url = 'https://renewedvision.com/api_spec/swagger.json';
  var r = await http.get(Uri.parse(url));

  // it's not a real json file, ignore the first line
  var source = r.body.split('\n').sublist(1).join('\n');
  spec = json.decode(source);

  if (specFile != null) File(specFile).writeAsStringSync(source);
}

void main() async {
  getLocalSpec(specFile);
  // await getRemoteSpec(specFile);
  var apiSpec = Spec.fromMap(spec);

  for (var p in apiSpec.paths) {
    if (pathCorrections.containsKey(p.pathspec)) p.pathspec = pathCorrections[p.pathspec]!;
    print(p.pathspec);
  }

  String code = codeGen(apiSpec);

  File(targetFile).writeAsStringSync(code);
  Process.runSync('dart', ['format', '-l', '120', targetFile]);

  // print(deRef("#/paths/~1v1~1look~1current/put/responses/204"));
}
