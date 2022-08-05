import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:preticaldemo/utils/constant.dart';

class RestApi {
  //Login User
  /*Future<UserLoginResponse?> loginUser(
      String userName, String userPassword, String deviceToken) async {
    String url = BASE_URL + 'Client/login';

    var map = <String, dynamic>{};
    map["userName"] = userName.trim();
    map["userPassword"] = userPassword.trim();
    map["deviceToken"] = deviceToken.trim();

    http.Response response = await http.post(Uri.parse(url), body: map);
    if (kDebugMode) {
      print(response.body);
    }
    if (response.statusCode == 200) {
      return UserLoginResponse.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }*/
}
