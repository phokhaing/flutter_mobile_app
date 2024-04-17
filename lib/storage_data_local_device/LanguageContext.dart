/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 23.3.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/foundation.dart';
import 'package:flutter_app/storage_data_local_device/LanguageModel.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const _defaultLang = "khmer";

class LanguageContext extends ChangeNotifier {
  final _key = "languageContextKey";

  Language _lang = languages[_defaultLang];
  Language get lang => _lang;

  String _index = _defaultLang;
  String get index => _index;

  bool _initialized = false;
  bool get initialized => _initialized;

  final _catch = const FlutterSecureStorage();

  Future readLanguages() async {
    String? data = await _catch.read(key: _key);
    _index = data ?? _defaultLang;
    _lang = languages[_index];
    _initialized = true;
    notifyListeners();
  }

  void changeLanguage(String setLang) async {
    _index = setLang;
    _catch.write(key: _key, value: _index);
    _lang = languages[_index];
    notifyListeners();
  }
}
