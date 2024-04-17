/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 4.3.2023                                    |
 * +-------------------------------------------------------+
 */

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/async_await_app/models/TodoModel.dart';
import 'package:http/http.dart' as http;

class TodoService {
  /*
  * method fetch todo
  * callback function:
  * onSuccess return List<TodoModel>
  * onError return String of errors
  */
  static Future<void> fetchAllTodo(
      {required Function(List<TodoModel>?) onSuccess,
      required Function(String?) onError}) async {
    String url = "https://jsonplaceholder.typicode.com/todos";
    try {
      // onSuccess
      http.Response response = await http.get(Uri.parse(url));
      onSuccess(await compute(_convert, response.body));
    } catch (e) {
      // onError
      onError(e.toString());
    }
  }

  /* fetch all without callback function  */
  static Future<List<TodoModel>> fetchAll() async {
    String url = "https://jsonplaceholder.typicode.com/todos";
    try {
      http.Response response = await http.get(Uri.parse(url));
      return compute(_convert, response.body);
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }

  /* convert jsonString to List */
  static List<TodoModel> _convert(String jsonData) {
    List list = json.decode(jsonData);
    // List<TodoModel> todoList = [];
    //
    // for (int i = 0; i < list.length; i++) {
    //   TodoModel todo = TodoModel.fromJson(list[i]);
    //   todoList.add(todo);
    // }
    return list.map((e) => TodoModel.fromJson(e)).toList();
  }
}
