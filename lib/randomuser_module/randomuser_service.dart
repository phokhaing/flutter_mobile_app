import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/randomuser_module/randomuser_model.dart';
import 'package:http/http.dart' as http;

class RandomUserService {
  static Future<void> getData({
    required Function(RandomUserModel?) onSuccess,
    required Function(String?) onError,
  }) async {
    String url = "https://randomuser.me/api?results=50&page=2";
    try {
      http.Response response = await http.get(Uri.parse(url));
      onSuccess(await compute(_convert, response.body));
    } catch (e) {
      debugPrint(e.toString());
      onError(e.toString());
    }
  }
}

RandomUserModel _convert(String jsonString) {
  Map<String, dynamic> map = json.decode(jsonString);
  return RandomUserModel.fromJson(map);
}
