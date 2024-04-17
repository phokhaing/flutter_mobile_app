import 'package:flutter/material.dart';
import 'package:flutter_app/randomuser_module/randomuser_model.dart';
import 'package:flutter_app/randomuser_module/randomuser_service.dart';

class RandomUserContext extends ChangeNotifier {
  RandomUserModel? _randomUserModel;
  RandomUserModel? get randomUserModel => _randomUserModel;

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

  Future<void> getData() async {
    await RandomUserService.getData(
      onSuccess: (data) => _randomUserModel = data,
      onError: (e) => _error = e,
    );
    _loading = false;
    _initialized = true;
    notifyListeners();
  }
}
