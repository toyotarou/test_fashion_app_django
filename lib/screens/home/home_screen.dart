import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_fashion_app_django/screens/home/custom_appbar.dart';
import 'package:test_fashion_app_django/screens/home/home_header.dart';
import 'package:test_fashion_app_django/screens/home/home_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppbar(),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        children: [
          SizedBox(height: 20.h),
          const HomeSlider(),
          SizedBox(height: 15.h),
          const HomeHeader(),
        ],
      ),
    );
  }
}
