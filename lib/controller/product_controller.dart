import 'package:flutter/material.dart';
import 'package:test_fashion_app_django/models/product_model.dart';

class ProductController extends ChangeNotifier {
  Product? product;

  void setProduct(Product p) {
    product = p;

    notifyListeners();
  }

  bool _description = false;

  bool get description => _description;

  void setDescription() {
    _description = !_description;

    notifyListeners();
  }

  void resetDescription() {
    _description = false;
  }
}
