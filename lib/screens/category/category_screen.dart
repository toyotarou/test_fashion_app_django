import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/common/widgets/app_style.dart';
import 'package:test_fashion_app_django/common/widgets/back_button.dart';
import 'package:test_fashion_app_django/common/widgets/reusable_text.dart';
import 'package:test_fashion_app_django/controller/category_controller.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: ReusableText(
          text: context.read<CategoryController>().category,
          style: appStyle(16, Kolors.kPrimary, FontWeight.bold),
        ),
      ),
    );
  }
}
