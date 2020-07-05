import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

const request = "";

Future<Map> getData() async {
  http.Response response = await http.get(request);
  return json.decode(response.body);
}