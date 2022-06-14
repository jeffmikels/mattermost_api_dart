import 'dart:convert';
import 'package:mattermost_api/api.dart';

void debug(Object s) {
  var enc = JsonEncoder.withIndent('  ');
  print(enc.convert(s));
}

void main() async {}
