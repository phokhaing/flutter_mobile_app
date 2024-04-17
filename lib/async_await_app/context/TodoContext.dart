/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 6.3.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter_app/async_await_app/models/TodoModel.dart';

import '../services/TodoService.dart';

class TodoContext extends ChangeNotifier {
  /* context variable */
  bool _initialized = false;
  bool get initialized => _initialized;

  List<TodoModel>? _todoList;
  List<TodoModel>? get todoList => _todoList;

  String? _error;
  String? get error => _error;

  bool _loading = true;
  bool get loading => _loading;

  void setLoading() {
    _loading = true;
    notifyListeners();
  }

  /*
   * call method fetch data from service
   * then set data into state context
   */
  Future<void> listTodoData() async {
    await TodoService.fetchAllTodo(
        onSuccess: (list) => _todoList = list,
        onError: (e) => _error = e
    );
    _loading = false;
    _initialized = true;
    notifyListeners();
  }
}
