import 'package:flutter/material.dart';

import '../models/movie_model.dart';

class MovieLogic extends ChangeNotifier {
  List<MyMovieModel> _favoriteList = [];
  List<MyMovieModel> get favoriteList => _favoriteList;

  void addToList(MyMovieModel item) {
    _favoriteList.add(item);
    notifyListeners();
  }

  void removeFromList(MyMovieModel item) {
    _favoriteList.remove(item);
    notifyListeners();
  }

  bool isFavorite(MyMovieModel item) {
    return _favoriteList.contains(item);
  }
}
