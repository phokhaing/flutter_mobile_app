/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 29.6.2023                                    |
 * +-------------------------------------------------------+
 */

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_app/readapi/models/user_model.dart';
import 'package:http/http.dart' as http;

class UserService {
  static Future<void> fetchAll({
    required Function(UserModel?) onSuccess,
    required Function(String) onError,
  }) async {
    String apiUrl = "https://reqres.in/api/users?per_page=12";
    try {
      http.Response res = await http.get(Uri.parse(apiUrl));
      onSuccess(await compute(_convert, res.body));
    } catch (e) {
      debugPrint(e.toString());
      onError(e.toString());
    }
  }
}

UserModel _convert(String jsonString) {
  Map<String, dynamic> map = json.decode(jsonString);
  return UserModel.fromJson(map);
}
