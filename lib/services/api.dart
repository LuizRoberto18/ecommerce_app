import 'dart:convert';

import 'package:ecommerce_app/constants.dart';
import 'package:http/http.dart' as http;

class APIService<T> {
  final String? url;
  final dynamic body;
  T Function(http.Response response)? parse;

  APIService({
    this.url,
    this.body,
    this.parse,
  });
}

class APIWeb {
  //motodo get
  Future<T> getData<T>(APIService<T> resource) async {
    String _finalUrl = apiUrl + resource.url!;
    Uri uri = Uri.parse(_finalUrl);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      return resource.parse!(response);
    } else {
      throw Exception(response.statusCode);
    }
  }

  //motodo post
  Future<T> postData<T>(APIService<T> resource) async {
    Map<String, String> header = {"content-Type": "application/json"};
    String _finalUrl = apiUrl + resource.url!;
    Uri uri = Uri.parse(_finalUrl);
    final response =
        await http.post(uri, body: jsonEncode(resource.body), headers: header);

    if (response.statusCode == 200) {
      return resource.parse!(response);
    } else {
      throw Exception(response.statusCode);
    }
  }
}
