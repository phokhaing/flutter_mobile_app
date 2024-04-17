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

import 'package:flutter/material.dart';
import 'package:flutter_app/readapi/models/user_model.dart';
import 'package:flutter_app/readapi/service/user_service.dart';

class UserContext extends ChangeNotifier {
  UserModel? _userModel;
  UserModel? get userModel => _userModel;

  String? _error;
  String? get error => _error;

  bool _initialized = false;
  bool get initialized => _initialized;

  bool _loading = true;
  bool get loading => _loading;

  void setLoading() {
    _loading = true;
    notifyListeners();
  }

  Future<void> fetchUsers() async {
    await UserService.fetchAll(
      onSuccess: (data) {
        _userModel = data;
      },
      onError: (e) => _error = e,
    );
    _loading = false;
    _initialized = true;
    notifyListeners();
  }

  bool _searchLoading = false;
  bool get searchLoading => _searchLoading;

  void setSearchLoading() {
    _searchLoading = true;
    notifyListeners();
  }

  String? _keyword;
  String? get keyword => _keyword;

  void setKeyword(String word) {
    _keyword = word;
    notifyListeners();
  }
}
