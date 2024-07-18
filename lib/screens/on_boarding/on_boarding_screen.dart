import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_fashion_app_django/controller/on_boarding_controller.dart';
import 'package:test_fashion_app_django/screens/on_boarding/page/page1.dart';
import 'package:test_fashion_app_django/screens/on_boarding/page/page2.dart';
import 'package:test_fashion_app_django/screens/on_boarding/page/last_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late final PageController pageController;

  ///
  @override
  void initState() {
    pageController = PageController(
      initialPage: context.read<OnBoardingController>().selectedIndex,
    );

    super.initState();
  }

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (value) {
              context.read<OnBoardingController>().setSelectedIndex = value;
            },
            children: [
              Page1(),
              Page2(),
              LastPage(),
            ],
          ),
        ],
      ),
    );
  }
}
