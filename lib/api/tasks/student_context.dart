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

import 'package:flutter/material.dart';
import 'package:flutter_app/api/tasks/student_model.dart';
import 'package:flutter_app/api/tasks/student_service.dart';

class StudentContext extends ChangeNotifier {
  StudentModel? _studentModel;
  StudentModel? get studentModel => _studentModel;

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

  Future<void> listStudents() async {
    await StudentService.fetchAll(
      onSuccess: (data) {
        _studentModel = data;
      },
      onError: (e) => _error = e,
    );
    _loading = false;
    _initialized = true;
    notifyListeners();
  }

  Future<bool> addStudent(Result item) async {
    return await StudentService.addStudent(item: item);
  }

  Future<bool> delete(int id, Result item) async {
    return await StudentService.delete(id: id, item: item);
  }

  Future<bool> update(int id, Result item) async {
    return await StudentService.update(id: id, item: item);
  }

  StudentModel? _searchedStudentModel;
  StudentModel? get searchedStudentModel => _searchedStudentModel;

  String? _searchedError;
  String? get searchedError => _searchedError;

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

  void clearSearchData() {
    _keyword = null;
    _searchedStudentModel = null;
    notifyListeners();
  }

  Future<void> searchData() async {
    await StudentService.searchStudent(
      keyword: _keyword ?? "*****",
      onSuccess: (data) {
        _searchedStudentModel = data;
      },
      onError: (e) => _searchedError = e,
    );
    _searchLoading = false;
    notifyListeners();
  }
}
