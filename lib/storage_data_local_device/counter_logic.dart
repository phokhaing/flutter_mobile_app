import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class CounterLogic extends ChangeNotifier {
  // final _counterKey = "CounterLogic";
  final _counterSecureKey = "counterSecureKey";
  int _counter = 0;
  int get counter => _counter;

  bool _initialized = false;
  bool get initialized => _initialized;

  final _cache = const FlutterSecureStorage();

  Future readCounter() async {
    // final prefs = await SharedPreferences.getInstance();
    // _counter = prefs.getInt(_counterKey) ?? 0;

    String? data = await _cache.read(key: _counterSecureKey);
    _counter = int.parse(data ?? "0");

    _initialized = true;
    notifyListeners();
  }

  void decrease() async {
    _counter--;
    // final prefs = await SharedPreferences.getInstance();
    // prefs.setInt(_counterKey, counter);

    await _cache.write(key: _counterSecureKey, value: _counter.toString());

    notifyListeners();
  }

  void increase() async {
    _counter++;
    // final prefs = await SharedPreferences.getInstance();
    // prefs.setInt(_counterKey, counter);

    await _cache.write(key: _counterSecureKey, value: _counter.toString());

    notifyListeners();
  }
}
