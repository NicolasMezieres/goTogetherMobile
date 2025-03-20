import 'dart:convert';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

Future requestGet(String path, Map<String, dynamic> data) async {
  Uri url = Uri.parse(path);
  var response = await http.post(url, body: data);
  final jsonResponse = jsonDecode(response.body);
  Fluttertoast.showToast(msg: "${jsonResponse["message"]}");
  return response;
}
