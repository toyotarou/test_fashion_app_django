import 'package:flutter/material.dart';

class OnBoardingController extends ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  set setSelectedIndex(int index) {
    _selectedIndex = index;

    notifyListeners();
  }
}
