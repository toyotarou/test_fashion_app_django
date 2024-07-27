import 'package:flutter/material.dart';

class PasswordController extends ChangeNotifier {
  bool _password = false;

  bool get password => _password;

  void setPassword() {
    _password = !_password;
    notifyListeners();
  }
}
