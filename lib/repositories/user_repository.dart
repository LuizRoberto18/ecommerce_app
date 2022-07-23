import 'dart:convert';

import 'package:ecommerce_app/models/user.dart';

import '../models/result.dart';
import '../services/api.dart';

class UserRepository {
  static APIService<User> post(url, dynamic body) {
    return APIService(
        url: url,
        body: body,
        parse: (response) {
          final parsed = json.decode(response.body);
          final dataJson = Result.fromJSON(parsed);
          return User.fromJSON(dataJson.responseData);
        });
  }
}
