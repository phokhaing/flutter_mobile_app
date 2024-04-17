/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 9.4.2023                                    |
 * +-------------------------------------------------------+
 */

/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 7.4.2023                                    |
 * +-------------------------------------------------------+
 */

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_app/api/tasks/student_model.dart';
import 'package:http/http.dart' as http;

class StudentService {
  // String iOS = "http://127.0.0.1:5000";
  // String android = "http://127.0.0.1:8000"

  static Future<void> fetchAll({
    required Function(StudentModel?) onSuccess,
    required Function(String) onError,
  }) async {
    String apiUrl = "http://127.0.0.1:5000/students";
    try {
      http.Response res = await http.get(Uri.parse(apiUrl));
      onSuccess(await compute(_convert, res.body));
    } catch (e) {
      debugPrint(e.toString());
      onError(e.toString());
    }
  }

  /* create new student data */
  static Future<bool> addStudent({required Result item}) async {
    String apiUrl = "http://127.0.0.1:5000/students";
    print(item.toJson());
    try {
      http.Response response = await http.post(
        Uri.parse(apiUrl),
        body: item.toJson(),
      );
      debugPrint(response.body.trim());
      if (response.body.trim() == "insert_success") {
        return true;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return false;
  }

  static Future<void> searchStudent({
    required String? keyword,
    required Function(StudentModel?) onSuccess,
    required Function(String?) onError,
  }) async {
    String apiUrl = "http://127.0.0.1:5000/students/$keyword";
    try {
      http.Response response = await http.get(Uri.parse(apiUrl));
      onSuccess(await compute(_convert, response.body));
    } catch (e) {
      debugPrint(e.toString());
      onError(e.toString());
    }
  }

  static Future<bool> delete({required int? id, required Result item}) async {
    String apiUrl = "http://127.0.0.1:5000/students/$id";
    try {
      http.Response response = await http.post(
        Uri.parse(apiUrl),
        body: item.toJson(),
      );
      debugPrint(response.body.trim());
      if (response.body.trim() == "delete_success") {
        return true;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return false;
  }

  static Future<bool> update({required int? id, required Result item}) async {
    String apiUrl = "http://127.0.0.1:5000/students/$id";
    try {
      http.Response response = await http.put(
        Uri.parse(apiUrl),
        body: item.toJson(),
      );
      debugPrint(response.body.trim());
      if (response.body.trim() == "update_success") {
        return true;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return false;
  }
}

StudentModel _convert(String jsonString) {
  Map<String, dynamic> map = json.decode(jsonString);
  return StudentModel.fromJson(map);
}
