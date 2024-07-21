import 'package:flutter/material.dart';

class CategoryController extends ChangeNotifier {
  String category = '';

  void setCategory(String cate) {
    category = cate;
    notifyListeners();
  }

  int _id = 0;

  int get id => _id;

  void setId(int id) {
    _id = id;
    notifyListeners();
  }
}
