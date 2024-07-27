import 'package:flutter/material.dart';
import 'package:test_fashion_app_django/common/services/storage.dart';
import 'package:test_fashion_app_django/screens/login/login_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final accessToken = Storage().getString('accessToken');

    if (accessToken == null) {
      return const LoginScreen();
    }

    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('CartScreen'),
          ],
        ),
      ),
    );
  }
}
