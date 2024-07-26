import 'package:flutter/material.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/common/utils/kstrings.dart';
import 'package:test_fashion_app_django/common/widgets/app_style.dart';
import 'package:test_fashion_app_django/common/widgets/back_button.dart';
import 'package:test_fashion_app_django/common/widgets/reusable_text.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: ReusableText(
          text: AppText.kPolicy,
          style: appStyle(16, Kolors.kPrimary, FontWeight.bold),
        ),
      ),
      body: const Column(
        children: [
          Text('OrdersScreen'),
        ],
      ),
    );
  }
}
