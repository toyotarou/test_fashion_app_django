import 'package:flutter/material.dart';

class CategoryController extends ChangeNotifier {
  String category = '';

  int _id = 0;

  int get id => _id;

  void setCategory(String cate, int id) {
    category = cate;
    _id = id;
    notifyListeners();
  }
}
