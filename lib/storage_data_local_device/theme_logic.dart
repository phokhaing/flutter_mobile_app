import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeLogic extends ChangeNotifier{

  final _themeKey = "ThemeLogic";
  final _themeSecureKey = "themeSecureKey";

  int _theme = 1;
  int get theme => _theme;

  bool _initialized = false;
  bool get initialized => _initialized;

  final _cache = FlutterSecureStorage();

  Future readTheme() async{
    // final prefs = await SharedPreferences.getInstance();
    // _theme = prefs.getInt(_themeKey) ?? 1;

    String? data = await _cache.read(key: _themeSecureKey);
    _theme = int.parse(data ?? "1");

    _initialized = true;
    notifyListeners();
  }

  void changeToDark() async{
    _theme = 0;
    // final prefs = await SharedPreferences.getInstance();
    // prefs.setInt(_themeKey, _theme);

    await _cache.write(key: _themeSecureKey, value: _theme.toString());

    notifyListeners();
  }

  void changeToLight() async{
    _theme = 1;
    // final prefs = await SharedPreferences.getInstance();
    // prefs.setInt(_themeKey, _theme);

    await _cache.write(key: _themeSecureKey, value: _theme.toString());

    notifyListeners();
  }

  void changeToSystem() async{
    _theme = 2;
    // final prefs = await SharedPreferences.getInstance();
    // prefs.setInt(_themeKey, _theme);

    await _cache.write(key: _themeSecureKey, value: _theme.toString());

    notifyListeners();
  }
}